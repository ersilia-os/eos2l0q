# Anti-schistosomiasis activity

Predicts activity against Schistosoma mansoni, the blood fluke behind most human schistosomiasis, from in vitro screening data contributed by the Swiss Tropical and Public Health Institute. Several campaigns were pooled, among them the Pathogen Box screen described in the cited paper, the Cancer Drug Library, Pharmakon-1600, Pandemic Response Box and Malaria Box. Ersilia trained six LazyQSAR classifiers, three for newly transformed schistosomula and three for adult worms, with AUROC 0.81 to 0.88 in five-fold out-of-fold validation. Outputs are ranks against 50,000 drug-like molecules.

This model was incorporated on 2023-08-24.
Last packaged on 2026-11-23.

## Information
### Identifiers
- **Ersilia Identifier:** `eos2l0q`
- **Slug:** `schisto-swisstph`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Schistosomiasis`
- **Target Organism:** `Schistosoma mansoni`
- **Tags:** `Neglected tropical disease`, `Antiparasitic activity`, `IC50`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `6`
- **Output Consistency:** `Fixed`
- **Interpretation:** Rank of predicted Schistosoma mansoni inhibition in schistosomula and adult worms (single-point, aggregated and IC50 assays) against 50,000 drug-like molecules; 0.65 is better than 99% of them.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| nts_perc_10_rank | float | high | Rank score of the compound's predicted inhibition of Schistosoma mansoni newly transformed schistosomula (NTS) in a single-point assay at 10 uM, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| nts_perc_rank | float | high | Rank score of the compound's predicted inhibition of Schistosoma mansoni newly transformed schistosomula (NTS) in single-point assays (10 and 33 uM aggregated), calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| nts_ic50_rank | float | high | Rank score of the compound's predicted inhibition of Schistosoma mansoni newly transformed schistosomula (NTS) in IC50 assays, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| adult_perc_33_rank | float | high | Rank score of the compound's predicted inhibition of Schistosoma mansoni adult worms in a single-point assay at 33 uM, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| adult_perc_rank | float | high | Rank score of the compound's predicted inhibition of Schistosoma mansoni adult worms in single-point assays (10 and 33 uM aggregated), calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| adult_ic50_rank | float | high | Rank score of the compound's predicted inhibition of Schistosoma mansoni adult worms in IC50 assays, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2l0q](https://hub.docker.com/r/ersiliaos/eos2l0q)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip)
- **Apptainer**: [https://models-sif.s3.eu-north-1.amazonaws.com/eos2l0q_v3.sif](https://models-sif.s3.eu-north-1.amazonaws.com/eos2l0q_v3.sif)

### Resource Consumption
- **Model Size (Mb):** `37`
- **Environment Size (Mb):** `6954`
- **Image Size (Mb):** `3288.3`

**Computational Performance (seconds):**
- 10 inputs: `41.37`
- 100 inputs: `50.97`
- 10000 inputs: `1087.32`

### References
- **Source Code**: [https://github.com/ersilia-os/lazy-qsar](https://github.com/ersilia-os/lazy-qsar)
- **Publication**: [https://doi.org/10.1021/acsinfecdis.8b00220](https://doi.org/10.1021/acsinfecdis.8b00220)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2019`
- **Ersilia Contributor:** [GemmaTuron](https://github.com/GemmaTuron)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [GPL-3.0-or-later](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos2l0q
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos2l0q
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
