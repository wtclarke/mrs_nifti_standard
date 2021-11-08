# Example Data

## List of example NIfTI-MRS data
This file lists and explains the example data contained in this repository.

Each file is names example_{n}.nii.gz according to this list.

### Single Voxel Data
1. Manually converted SVS - Water suppressed STEAM
2. spec2nii converted SVS - Water suppressed STEAM
3. spec2nii converted edited SVS - MEGA-PRESS

### MRSI Data
4. Manually converted 31P FID-MRSI (CSI sequence)
5. spec2nii converted sLASER-localised 1H MRSI

### Examples of dynamic parameter headers
6. j-difference editing example (MEGA-PRESS)
7. Variable echo time: full representation
8. Variable echo time: short representation
9. Multiple dynamic parameters "Fingerprinting"

### Examples of processing provenance
10. FSL-MRS processed MEGA-PRESS spectrum

## Example data generation
### Source data
Data required for example data generation can be downloaded from the associated [Zenodo repository](https://doi.org/10.5281/zenodo.5654857). This data can be downloaded using the shell script ```download.sh```.

### Code
Scripts and interactive python notebooks for data generation can be found in the example_data/data_generation directory of this repository.

The requirements are listed in requirements.txt. They can be installed using the conda package manager using ```conda install -c conda-forge -c https://fsl.fmrib.ox.ac.uk/fsldownloads/fslconda/channel/ --file requirements.txt```
