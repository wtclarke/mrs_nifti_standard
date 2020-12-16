# mrs_nifti_standard

This is a repository to store information and code associated with the efforts to define an in vivo magnetic resonance spectroscopy (MRS) NIfTI data format.

## Why?
Users of MRS and MRSI are faced with numerous data formats. Often vendor-specific expertise is needed to interpret, reconstruct, and analyse MRS data. Other users rely on disparate software, with inconsistent implementations. Furthermore, there is no accepted format for sharing or storing spectral data. Researchers cannot easily interpret data processed in another laboratory, nor can data be made “open” in a consistent format.

## Why NIfTI?
NIfTI has been chosen due to its simplicity, availability of supporting libraries, ubiquity in the neuroimaging community, and extensive pre-existing support. Moreover, the results of spectral fitting can trivially be stored as unmodified NIfTI images.

## NIfTI MRS
The provisional format specification can be found in this repository as a markdown file (specification.md). A working copy with the facility to comment and propose changes can be found [here](https://docs.google.com/document/d/1tC4ugzGUPLoqHRGrWvOcGCuCh_Dogx_uu0cxKub0EsM/edit?usp=sharing).

A discussion on the format is ongoing at the [MRSHub forums](https://forum.mrshub.org/t/bids-for-spectroscopy/83/42). We are also holding regular meetings, get in contact via the MRSHub discussion if you would like to get involved.

## This Repository
The repository currently holds:
- An up-to-date copy of the format specification
- A set of example data, including those referred to by the specification.
- Original data from which examples are generated.
- Code in jupyter notebook format to generate the example data.
- Links (via git submodules) to repositories containing minimal examples in java, matlab and R.

All data is tracked using git LFS.

### Requirements
To run the included python jupyter notebooks you will need:
- spec2nii (development version)
- pymapvbvd
- nibabel
- jupyter

We recommend using conda to download the packages, and using python >=3.7.

```conda install -c conda-forge jupyterlab pymapvbvd nibabel```

### Installing spec2nii
    git clone https://github.com/wexeee/spec2nii.git
    cd spec2nii
    pip install .



