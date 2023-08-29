# Model pretrained parameters

These models have been trained using the [LazyQSAR package](https://github.com/ersilia-os/lazy-qsar)
Upon 5-fold crossvalidation on train test splits (80-20%) with balanced classes, we obtain the following performance:

| **Model**       | **Data** | **Frac Actives (%)** | **Fingerprints** | **AUROC ± STDev** |
|-----------------|----------|------------------|------------------|-------------------|
| nts_perc_10uM_bin70         | 2076   | 10.89   | Eosce   | 0.778 ± 0.032 |
| nts_perc_10uM_bin70         | 2076   | 10.89   | Morgan   | 0.692 ± 0.056 |
| nts_perc_10uM_bin90         | 2076   | 6.70   | Eosce   | 0.767 ± 0.044 |
| nts_perc_10uM_bin90         | 2076   | 6.70   | Morgan   | 0.688 ± 0.041 |
| adult_ic50_bin5         | 140   | 46.43   | Eosce   | 0.683 ± 0.074 |
| adult_ic50_bin5         | 140   | 46.43   | Morgan   | 0.767 ± 0.020 |
| adult_ic50_bin10         | 140   | 34.29  | Eosce   | 0.606 ± 0.060 |
| adult_ic50_bin10         | 140   | 34.29   | Morgan   | 0.749 ± 0.088 |

Upon request we are happy to provide full models developed with [ZairaChem](https://github.com/ersilia-os/zaira-chem) as a downloadable. Please note that running these require installation of the Ersilia and the ZairaChem software

| **Model**       | **Data** | **Frac Actives (%)** | **AI tool** | **AUROC ± STDev** |
|-----------------|----------|------------------|------------------|-------------------|
| nts_perc_10uM_bin70         | 2076   | 10.89   | Zairachem   | 0.794 ± 0.049 |
| nts_perc_10uM_bin90         | 2076   | 6.70   | Zairachem   | 0.808 ± 0.043 |
| adult_ic50_bin5         | 140   | 46.43   | Zairachem   | 0.782 ± 0.051 |
| adult_ic50_bin10         | 140   | 34.29  | Zairachem   | 0.752 ± 0.055 |