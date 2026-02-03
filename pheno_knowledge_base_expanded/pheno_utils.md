pheno-utils
================

A pip-installable python library for Dataloader and analysis tools.

[See full documentation](https://phenoai.github.io/pheno-utils/)


## Install

``` sh
pip install pheno_utils
```

## Features: Data Loaders

- [PhenoLoader](https://pheno-ai.github.io/pheno-utils/pheno_loader.html)
    - Full access to data fields in a specific dataset
    - Access to tabular features
    - Access to raw data (images, time series, genetic variants)
    - Access to field metadata
- [MetaLoader](https://pheno-ai.github.io/pheno-utils/meta_loader.html)
    - Get an overview of all datasets and search throughout datasets
    - Load tabular features from multiple datasets
    - Load paths to raw data from multiple datasets

## How to use

Examples:

``` python
from pheno_utils import PhenoLoader

dl = PhenoLoader("fundus")
```

``` python
from pheno_utils import MetaLoader

ml = MetaLoader()
```
