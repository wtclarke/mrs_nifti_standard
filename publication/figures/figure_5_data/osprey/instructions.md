# Instructions for Osprey processing
## From G Oeltzschner <goeltzs1@jhmi.edu> 26/07/21
Produced by downloading Osprey from the https://github.com/schorschinho/osprey/tree/load-nii-mrs development branch; add with sub-folders to MATLAB path and running the following four commands:
```
    jobFile = ‘jobNIFTIMRS.m’;
    nii = OspreyJob(jobFile);
    nii = OspreyLoad(nii);
    nii = OspreyProcess(nii);
```

.nii.gz files are automatically saved in the ‘exampledata/derivatives/NIfTIMRS’ directory