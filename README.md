# Anti-schistosomiasis activity

Prediction of the activity of small molecules against the Schistosoma Mansoni. This model has been developed by Ersilia thanks to the data provided by the Swiss TPH, corresponding to in vitro screenings from the Cancer Drug Library (Cowan et al, 2015) FDA Library (Panic et al, 2015), Pandemic Response Box (Biendl et al, 2021), Pathogen Box (Pasche et al, 2019) and Malaria Box (Ingram-Sieber, 2014). In vitro activity against newly transformed schistosoma (nts) and adult worms was measured (% of inhibition of activity and IC50, respectively, binarised to active/inactive according to the publication). Data was aggregated and modelled with LazyQSAR, AUROCS range from 0.7 to 0.89

This model was incorporated on 2023-08-24.Last packaged on 2025-11-12.

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
- **Interpretation:** The probability of the molecule being active against S.mansoni at single point inhibition at 33 and 10uM, as well as aggregated and IC50 assay

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
- **Image Size (Mb):** `7529.89`

**Computational Performance (seconds):**
- 10 inputs: `50.33`
- 100 inputs: `68.28`
- 10000 inputs: `1618.81`

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
