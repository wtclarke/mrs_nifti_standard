.. _spatial_orient:

Encoding spatial orientation & position
=======================================

Spatial orientation and position information of MRS(I) data can be stored in the NIfTI-MRS standard. The primary storage mechanism for this data is utilising the dedicated NIfTI header keys. This process is described in detail on this page, which also covers how separate volume of interest element and ISIS scans can be encoded.

Using the NIfTI headers
-----------------------

To conform with the NIfTI-MRS standard, orientation, position, and voxel size information must be stored in the NIfTI header with no deviation from the NIfTI standard. I.e. conformance is achieved when in the NIfTI header either:

#. ``qform_code`` is set > 0,
#. the second to fourth elements of ``pixdim`` are set to the appropriate voxel dimensions or to a default of 10 m (10000 mm) for unlocalised dimensions, and ``quatern_b``, ``quatern_c``, ``quatern_d``, ``qoffset_x``, ``qoffset_y``, ``qoffset_z`` are set;
#. a valid value (1 or -1) of ``qfac`` is set. ``qfac`` is stored as the first element of ``pixdim`` i.e. ``pixdim[0]``.

or:

#. ``qform_code`` is set = 0 (*NIfTI_XFORM_UNKNOWN*),
#. the second to fourth elements of ``pixdim`` are set to the appropriate voxel dimensions or to a default of 10 m (10000 mm) for unlocalised dimensions.

Default values for no / poorly defined localisation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
The description above refers to *unlocalised* dimensions. These are dimensions where there is no explicit restriction of signal reception, for example by phase encoding or RF volume selection. This standard considers dimensions defined by coil sensitivity profiles as "unlocalised".

For example in "1D-CSI" two dimensions remain unlocalised (the ones where no phase encoding is utilised). However, a dataset acquired with 2D-CSI combined with a slice-selective pulse in the third dimension has no unlocalised dimensions.

For unlocalised dimensions a default pixel size of 10 m (10000 mm) should be used. This is considered to be unambiguously "unlocalised" whilst avoiding zero-valued or null-valued entries in the headers.

Volume localisation in MRSI
---------------------------
Occasionally multi-voxel (CSI, or MRSI) data will be acquired with additional signal suppression or selection methods with produced a volume of interest (VoI) distinct from the field of view (FoV) of the sequence. For this purpose the ``VOI`` header extension metadata key is defined in the standard. This takes the value of a 4 x 4 affine matrix using identical conventions to the *xform* NIfTI affine matrix. The FoV should still be encoded using the NIfTI headers.


Image-selected in vivo spectroscopy (ISIS)
------------------------------------------

The ISIS technique utilises alternating slice selective signal inversion schemes to achieve localisation in one, two or three dimensions. Each encoding can be stored as an element of a higher encoding dimensions with the tag ``DIM_ISIS``. Each encoding will have a different spatial localisation extent, but this is not encoded in NIfTI-MRS. Rather separate elements are stored for pre-processing purposes (e.g. frequency and phase alignment), but the localisation of each element is considered to tbe the same and the standard mechanism (as described above) is used.