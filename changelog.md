# Changelog

## 28th March 2024 (V0.9)
- Definitions are now packaged as a machine-readable JSON file.

## 6th December 2023 (V0.8)
- Add SpectralWidth as a standard defined header value. However the dwell time stored in `pixdim[4]` is defined as the preferentially used value.

## 17th January 2023 (V0.7)
- Update anonymisation flags for ManufacturersModelName and DeviceSerialNumber as per US HIPPA guidance.

## 23rd July 2022 (V0.6)
- Update to broaden definition of DIM_PHASE_CYCLE
- Fix typo in Standard Defined metadata.
- Updates to various code syntax/lint in repository.

## 9th November 2021 (V0.5)
- Updates to data type specification.
- Added licensing information to project.

## 8th November 2021 (V0.4)
- Updates to online documentation
- Example data generation data available online at Zenodo.
- Update readme

## 6th August 2021 (V0.4)
- Changes to the specification:
    - AcqusitionStartTime added to the standard-defined metadata.
- Updates to online documentation
- Update readme

## 6th August 2021 (v0.3)
- Changes to specification:
    - Add DIM_ISIS for image-selected in vivo spectroscopy.
    - Update edited sequence dynamic header examples and formatting.
    - Added the following specification defined metadata: VOI, WaterSuppressed, WaterSuppressionType, SequenceTriggered, TxCoil, RxCoil, PatientID
    - Added Processing Provenance section to the standard defined metadata.
    - Removed SequenceBlock section from the standard defined metadata.
- Updates prior to circulation of publication
    - Updates to repository documentation
    - Figure generation for publication
    - Updates to example data
    - Example data placed on Zenodo (https://doi.org/10.5281/zenodo.5085449)
    - Update to data)conventions notebook.
- Add explanatory documentation framework
- Added CI for documentation build
- Added CI for automatic specification build and Zenodo.

## 16th December 2020 (v0.2)
- Added specification.
- Updated examples to be compliant with version 0.2 of the specification.
- Added minimal examples as submodules.
- Added handedness definition of complex time domain data. See data_conventions.ipynb.

## 15th October 2020
- Added data_convention notebook.
- CSI example data added.
- Changed definition of TransmitterFrequency to MHz.

## 29th September 2020
- Initial manual implementation of SVS example.
