Introduction to NIfTI-MRS
=========================

NIfTI-MRS is a standard data format for storing in vivo MRS and MRSI data. NIfTI-MRS aims to solve the problem of multiple proprietary data formats used in MRS. It is based on the NIfTI data format.

The Problem
-----------
Users of MRS and magnetic resonance spectroscopic imaging (MRSI) are faced with numerous data formats. Often the format used is dependent on the scanner software version and local scanning practice. These formats vary greatly in the degree in which data is processed, whether data has been spatially reconstructed, what metadata is stored, and in the way the storage is formatted. Often specific expertise is needed to interpret, reconstruct, and analyse MRS data. Users therefore rely on disparate software, with inconsistent implementations.

Furthermore, there is no accepted format for sharing or storing spectral data. Researchers cannot easily interpret data processed in another laboratory, nor can data be made “open” in a consistent format.

The lack of a standard MRS data format hinders the use of MRS in several ways:

1. **It prevents integration with other imaging modalities.**  
Without standardised encoding of spatial orientation and position, registration with other modalities requires a per-data-format solution. This hinders both co-analysis of spectroscopic data with other modalities, and leveraging of other modalities in reconstruction and processing of the typically lower signal MRS.

2. **It prevents the consistent analysis of data.**
Any spectroscopic analysis program must implement dedicated interpretation modules for each format. Development of new modules is time consuming and relies on expert knowledge of a format. This results in incomplete coverage of the formats by any one analysis pipeline. Thus consistent (and comparable) analysis is prevented.

3. **It prevents the creation of new, discrete, specialised tools.**  
Without a standard storage format, processing and analysis of spectroscopic data often occurs in a single monolithic process. This impedes modular processing, which is important for development of new acquisition and analysis methods, as well as improving existing ones. The barrier to creating new tools is high if implementation of all processing steps is required. Furthermore, quantifying improvements from modifying a discrete step is difficult if it is inseparable from other steps.

4. **It raises the difficulty of sharing data.**  
Users cannot reliably use data received from other users. Data sharing repositories must handle mixed data types. Using different formats results in the shared data being processed to varying levels and having varying metadata. Anonymisation tools required for ethical public sharing of data require per-format implementation.

Combined, these factors significantly raise the barrier to adoption and use of MRS, especially for non-expert users.


The NIfTI file format
---------------------
The Neuroimaging Informatics Technology Initiative (NIfTI) file format was originally developed in 2003 to address the needs of MR neuroimaging researchers, and has since become the standard format for storing anatomical, fMRI, diffusion MRI, qMRI and ASL data in this domain. Whilst the NIfTI format was primarily developed for neuroimaging and fMRI, the format is sufficiently flexible to store a wide range of imaging data - including MRS.

NIfTI has been chosen due to its simplicity, availability of supporting libraries, ubiquity in the neuroimaging community, and extensive pre-existing support. Moreover, the results of spectral fitting can trivially be stored as unmodified NIfTI images. As a result data, results, and associated imaging can all be held and viewed using a single format.


Aims of NIfTI-MRS
-----------------

NIfTI-MRS aims to:
    - provide a simplified pathway from scanner to final analysis,
    - enable interoperability and modularity of analysis programs, 
    - enable easier display and co-interpretation with other modalities, and
    - establish a format for data sharing.

In addition, the NIfTI-MRS is designed to provide a simple anonymisation procedure and flexible storage of meta-data by users.