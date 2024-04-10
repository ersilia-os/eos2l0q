# Anti-schistosomiasis activity

Prediction of the activity of small molecules against the schistosoma parasite. This model has been developed by Ersilia thanks to the data provided by the Swiss TPH. In vitro activity against newly transformed schistosoma (nts) and adult worms was measured (% of inhibition of activity and IC50, respectively)

## Identifiers

* EOS model ID: `eos2l0q`
* Slug: `schisto-swisstph`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Classification`
* Output: `Probability`
* Output Type: `Float`
* Output Shape: `List`
* Interpretation: The probabilities of the molecule being active against schistosoma in NTS stage (in a % of inhibition assay at 70 and 90% inhibition 10uM) and adult stage (in IC50 assay at cut-offs 5 and 10uM

## References

* [Publication](https://pubmed.ncbi.nlm.nih.gov/30398059)
* [Source Code](https://github.com/ersilia-os/lazy-qsar)
* Ersilia contributor: [GemmaTuron](https://github.com/GemmaTuron)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos2l0q)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2l0q.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos2l0q) (AMD64)

## Citation

If you use this model, please cite the [original authors](https://pubmed.ncbi.nlm.nih.gov/30398059) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a GPL-3.0 license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!