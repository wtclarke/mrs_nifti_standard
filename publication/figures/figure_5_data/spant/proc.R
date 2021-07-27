library(spant)

# read the raw data from file
metab <- read_mrs("raw_suppressed.nii.gz")
w_ref <- read_mrs("raw_wref.nii.gz")

# coil combination
comb  <- comb_coils(metab, w_ref, scale_method = "sig")

# average water suppressed dynamics
metab_proc <- comb$metab %>% mean_dyns

# eddy current correction
metab_proc_ecc <- ecc(metab_proc, comb$ref)

# hsvd water removal
metab_proc_hsvd <- hsvd_filt(metab_proc_ecc)

# write processed results
write_mrs_nifti(metab_proc_hsvd,            "proc_supressed.nii.gz")
write_mrs_nifti(comb$ref %>% ecc(comb$ref), "proc_wref.nii.gz")

plot(metab_proc_hsvd, y_scale = TRUE)


