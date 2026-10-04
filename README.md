# Anti-schistosomiasis activity

Predicts activity against Schistosoma mansoni, the blood fluke responsible for most human schistosomiasis, across single-point screens at 33 and 10 uM together with aggregated and IC50-based readouts. Ersilia built the models from in vitro screening data contributed by the Swiss Tropical and Public Health Institute, originating in the Cancer Drug Library campaign. Assays were run on newly transformed schistosomula rather than adult worms, the life stage most amenable to screening.

This model was incorporated on 2023-08-24.Last packaged on 2025-11-25.

## Information
### Identifiers
- **Ersilia Identifier:** `eos2l0q`
- **Slug:** `schisto-swisstph`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Schistosomiasis`
- **Target Organism:** `Schistosoma mansoni`
- **Tags:** `Neglected tropical disease`, `Schistosomiasis`, `IC50`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `6`
- **Output Consistency:** `Fixed`
- **Interpretation:** Probability of Schistosoma mansoni activity across single-point, aggregated and IC50 screening readouts.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| nts_perc_10 | float | high | probability of Smansoni NTS inhibition based on percentage of inhibition at single point (10um concentration of drug) |
| nts_perc | float | high | probability of Smansoni NTS inhibition based on percentage of inhibition at single point (aggregated 10 and 33um) |
| nts_ic50 | float | high | probability of Smansoni NTS inhibition based on IC50 assays |
| adult_perc_33 | float | high | probability of Smansoni adult worm inhibition based on percentage of inhibition at single point (33um concentration of drug) |
| adult_perc | float | high | probability of Smansoni adult worm inhibition based on percentage of inhibition at single point (aggregated 10 and 33um) |
| adult_ic50 | float | high | probability of Smansoni adult worm inhibition based on IC50 assays |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2l0q](https://hub.docker.com/r/ersiliaos/eos2l0q)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip)

### Resource Consumption
- **Model Size (Mb):** `18`
- **Environment Size (Mb):** `7610`
- **Image Size (Mb):** `7525.11`

**Computational Performance (seconds):**
- 10 inputs: `43.72`
- 100 inputs: `77.93`
- 10000 inputs: `1267.34`

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
