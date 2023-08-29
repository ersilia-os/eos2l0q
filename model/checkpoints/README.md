# Model pretrained parameters

These models have been trained using the [LazyQSAR package](https://github.com/ersilia-os/lazy-qsar)
Upon 5-fold crossvalidation on train test splits (80-20%) with balanced classes, we obtain the following performance:


| **Model**       | **Data** | **Frac Actives** | **Fingerprints** | **AUROC ± STDev** |
|-----------------|----------|------------------|------------------|-------------------|
| nts_perc_10uM_bin70         | 2076   | 10.89   | Eosce   | 0.778 ± 0.032 |
| nts_perc_10uM_bin70         | 2076   | 10.89   | Morgan   | 0.692 ± 0.056 |
| nts_perc_10uM_bin90         | 2076   | 6.70   | Eosce   | 0.767 ± 0.044 |
| nts_perc_10uM_bin90         | 2076   | 6.70   | Morgan   | 0.688 ± 0.041 |
| adult_ic50_bin5         | 140   | 46.43   | Eosce   | 0.683 ± 0.074 |
| adult_ic50_bin5         | 140   | 46.43   | Morgan   | 0.767 ± 0.020 |
| adult_ic50_bin10         | 140   | 34.29  | Eosce   | 0.606 ± 0.060 |
| adult_ic50_bin10         | 140   | 34.29   | Morgan   | 0.749 ± 0.088 |


swisstph_schisto	nts_perc_10uM_bin70_eosce	0.748	0.765	0.779	0.759	0.838		2076	226	10.89
swisstph_schisto	nts_perc_10uM_bin70_morgan	0.675	0.651	0.744	0.621	0.770		2076	226	10.89
swisstph_schisto	nts_perc_10uM_bin70_zairachem	0.750	0.750	0.830	0.780	0.860		2076	226	10.89
swisstph_schisto	nts_perc_10uM_bin90_eosce	0.705	0.841	0.770	0.766	0.751		2076	139	6.70
swisstph_schisto	nts_perc_10uM_bin90_morgan	0.623	0.734	0.668	0.728	0.687		2076	139	6.70
swisstph_schisto	nts_perc_10uM_bin90_zairachem	0.750	0.800	0.870	0.820	0.800		2076	139	6.70
swisstph_schisto	adult_ic50_bin5_eosce	0.719	0.694	0.622	0.794	0.583		140	65	46.43
swisstph_schisto	adult_ic50_bin5_morgan	0.778	0.781	0.731	0.761	0.783		140	65	46.43
swisstph_schisto	adult_ic50_bin5_zairachem	0.840	0.830	0.730	0.740	0.770		140	65	46.43
swisstph_schisto	adult_ic50_bin10_eosce	0.615	0.533	0.626	0.554	0.703		140	48	34.29
swisstph_schisto	adult_ic50_bin10_morgan	0.779	0.585	0.779	0.754	0.846		140	48	34.29
swisstph_schisto	adult_ic50_bin10_zairachem	0.750	0.700	0.710	0.760	0.840		140	48	34.29

Upon request we are happy to provide full models developed with [ZairaChem](https://github.com/ersilia-os/zaira-chem) as a downloadable. Please note that running these require installation of the Ersilia and the ZairaChem software

| **Model**       | **Data** | **Frac Actives** | **AI tool** | **AUROC ± STDev** |
|-----------------|----------|------------------|------------------|-------------------|
| nts_perc_10uM_bin70         | 2076   | 10.89   | Zairachem   | 0.794	0.049 |
| nts_perc_10uM_bin90         | 2076   | 6.70   | Zairachem   | 0.808	0.043 |
| adult_ic50_bin5         | 140   | 46.43   | Zairachem   | 0.782	0.051 |
| adult_ic50_bin10         | 140   | 34.29  | Zairachem   | 0.752	0.055 |