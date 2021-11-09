.. _Zenodo: https://doi.org/10.5281/zenodo.5084788
.. _GitHub: https://github.com/wtclarke/mrs_nifti_standard/blob/master/specification.MD
.. _NIfTI: https://nifti.nimh.nih.gov/
.. _NIfTI-1: https://nifti.nimh.nih.gov/pub/dist/src/niftilib/nifti1.h
.. _NIfTI-2: https://nifti.nimh.nih.gov/pub/dist/doc/nifti2.h
.. _JSON: https://www.json.org/json-en.html

Overview of NIfTI-MRS
=====================

This page provides an overview of the NIfTI-MRS file structure.

The structure of NIfTI-MRS is defined in the standard, which is available online (Zenodo_, GitHub_).

NIfTI-MRS is derived from the NIfTI standard, preferring (but not requiring) the NIfTI-2 standard. The NIfTI standard is available online (NIfTI_, NIfTI-1_, NIfTI-2_).

File structure
--------------
The NIfTI format contains three sections: the data header, optional header extensions, and the data block.

.. image:: images/nmrs_structure_overview.png
   :scale: 50 %
   :alt: The NIfTI-MRS structure
   :align: center

NIfTI Header
~~~~~~~~~~~~
NIfTI-MRS reuses the NIfTI data header structure, it is identical to the header structure of the parent standard. Some header fields are constrained or re-utilised for spectroscopy-specific purposes:

1. The dwell-time of the time domain data is stored in ``pixdim[4]`` (with units are specified in the ``xyzt_units`` field).
2. Spatial position encoding is identical to the original NIfTI-1 specification, but default values are defined. See the :ref:`Encoding spatial orientation & position <spatial_orient>` page. 
3. Only complex datatypes may be specified in the ``datatype`` field (e.g. “DT_COMPLEX”, 32).
4. The ``intent_name`` filed is used for the NIfTI-MRS version, It is specified using the format *mrs_vMajor_minor*.

NIfTI Data Block
~~~~~~~~~~~~~~~~

The NIfTI-MRS data block is used to store up to seven-dimensional complex time-domain data.

Dimensions 1-4 (required)
+++++++++++++++++++++++++

The first four dimensions are required for a valid NIfTI-MRS file.

- Dimensions 1-3 are used for spatial encoding (x, y, and z coordinates). All three spatial dimensions have a size of one for single-voxel data.
- Dimension 4 is used to store the time-domain FID (or echo).

Dimensions 5-7 (optional)
+++++++++++++++++++++++++
Dimension 5-7 are optional. They flexibly encode different dynamic aspects, with the specific purpose and interpretation of each dimension being documented in the header extension.


NIfTI Header Extension
~~~~~~~~~~~~~~~~~~~~~~
The header extension has the official NIfTI identification code **44**, *NIFTI_ECODE_MRS*. It comprises key-value pairs formatted according to the JSON_ standard. The header extension contains the minimum necessary metadata required for meaningful interpretation of the spectroscopic data, additional information about optional higher data dimensions, and further optional MRS-specific metadata. For more information on the header extensions structure see the page on :ref:`the header extension <meta_data>`.