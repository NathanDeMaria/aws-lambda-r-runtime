#!/bin/bash

set -euo pipefail

BUILD_DIR=/var/tidyverse/
R_DIR=/opt/R/

export R_LIBS=${BUILD_DIR}/R/library
mkdir -p ${R_LIBS}
${R_DIR}/bin/Rscript -e 'install.packages(c("httr", "glue", "magrittr", "jsonlite", "lubridate", "purrr", "tibble", "dplyr", "RPushbullet"), repos="http://cran.r-project.org")'
