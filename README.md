# Epileptic-Seizure-Detection-CHBMIT
Epileptic Seizure Detection using Phase Space Reconstruction and Machine Learning Algorithms 

## Summary
<img src = "https://github.com/priya-velu5/Epileptic-Seizure-Detection-CHBMIT/blob/master/Capstone-poster.png"> 

## Dataset Links 
Link to [CHB-MIT Scalp EEG Database](https://physionet.org/content/chbmit/1.0.0/)

Link to [Shortened dataset](https://ieee-dataport.org/open-access/preprocessed-chb-mit-scalp-eeg-database)

## How to run

Note: Seizure and non-seizure data is ictal and pre-ictal [here](https://ieee-dataport.org/open-access/preprocessed-chb-mit-scalp-eeg-database)

* Step 1: Filter the data and select 18 channels.
* Step 2: Use the filtered data to apply phase space reconstruction. Seizure and non-seizure data are separately preprocessed and combined by adding a label (to indicate seizure/non-seizure) and stored as "filtered_psr_data18channels.csv" 
* Step 3: Apply Machine Learning algorithms on "filtered_psr_data18channels.csv" 
