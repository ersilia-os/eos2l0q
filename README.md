# Anti-schistosomiasis activity

Prediction of the activity of small molecules against the schistosoma parasite. This model has been developed by Ersilia thanks to the data provided by the Swiss TPH. In vitro activity against newly transformed schistosoma (nts) and adult worms was measured (% of inhibition of activity and IC50, respectively)

This model was incorporated on 2023-08-24.

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
- **Output Dimension:** `4`
- **Output Consistency:** `Fixed`
- **Interpretation:** The probabilities of the molecule being active against S.mansoni in NTS stage (single point inhibition 70% and 90% at  10uM) and adult stage (IC50 assay at cut-offs 5 and 10uM)

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| nts_70perc_10um | float | high | Classification score for Smansoni inhibition based on a  percentage of inhibition at single point (10um) cut-off of 70% |
| nts_90perc_10um | float | high | Classification score for Smansoni inhibition based on a  percentage of inhibition at single point (10um) cut-off of 90% |
| adult_ic50_10um | float | high | Classification score for Pfalciparum NF54 inhibition based on an IC50 of 10uM for adult specimens |
| adult_ic50_5um | float | high | Classification score for Pfalciparum NF54 inhibition based on an IC50 of 5uM for adult specimens |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2l0q](https://hub.docker.com/r/ersiliaos/eos2l0q)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip)

### Resource Consumption
- **Model Size (Mb):** `2`
- **Environment Size (Mb):** `2592`
- **Image Size (Mb):** `216.43`

**Computational Performance (seconds):**
- 4 inputs: `30.14`
- 20 inputs: `24`
- 100 inputs: `32.22`

### References
- **Source Code**: [https://github.com/ersilia-os/lazy-qsar](https://github.com/ersilia-os/lazy-qsar)
- **Publication**: [https://pubmed.ncbi.nlm.nih.gov/30398059](https://pubmed.ncbi.nlm.nih.gov/30398059)
- **Publication Type:** `Other`
- **Publication Year:** `2023`
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
