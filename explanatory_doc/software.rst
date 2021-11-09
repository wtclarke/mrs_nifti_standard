NIfTI-MRS Software
==================

This page provides a list of software compatible with NIfTI-MRS.

Conversion
----------
Conversion to NIfTI-MRS from other data formats is primarily provided by spec2nii (`Github <https://github.com/wtclarke/spec2nii>`_).

To convert images acquired with MRS data we recommend dcm2niix (`Github <https://github.com/rordenlab/dcm2niix>`_).

I/O libraries
-------------
A number of NIfTI libraries are available and suitable for working with NIfTI-MRS. Many of these are utilised for the `minimal code examples <https://github.com/wtclarke/mrs_nifti_standard/tree/master/minimal_examples>`_ contained in the NIfTI-MRS repository.

.. list-table::
   :widths: 25 25 50
   :header-rows: 1

   * - #
     - Language
     - Link
   * - 1
     - JAVA
     - https://github.com/amirshamaei/NIfTI-MRS
   * - 2
     - Matlab
     - https://github.com/xiangruili/dicm2nii
   * - 3
     - Python
     - https://nipy.org/nibabel/
   * - 4
     - MatlabR
     - https://github.com/jonclayden/RNifti


Visualisation
-------------
A NIfTI-MRS visualiser is available using `FSLeyes <https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FSLeyes>`_ combined with the dedicated `FSLeyes MRS plugin <https://git.fmrib.ox.ac.uk/wclarke/fsleyes-plugin-mrs>`_.

MRS analysis
------------
The following analysis packages are known to be compatible with NIfTI-MRSI

| FSL-MRS - `FSL page <https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/FSL-MRS>`_, `Github <https://github.com/wtclarke/fsl_mrs>`_, `docs <https://open.win.ox.ac.uk/pages/fsl/fsl_mrs/>`_
| Spant -  `CRAN page <https://cran.r-project.org/web/packages/spant/index.html>`_, `Github <https://github.com/martin3141/spant/>`_, `docs <https://martin3141.github.io/spant/>`_
| Osprey -  `Github <https://github.com/schorschinho/osprey>`_, `docs <https://schorschinho.github.io/osprey/>`_
| VESPA -  `Github <https://github.com/vespa-mrs/vespa>`_, `docs <https://vespa-mrs.github.io/vespa.io/>`_
