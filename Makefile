all: 02_final_report.pdf

data/terrorism_data.RData data/popular_data.RData data/infra_data.RData data/terrorism_data_long.RData:
	Rscript 01_get_original_data.R

02_final_report.pdf: data/terrorism_data.RData data/popular_data.RData data/infra_data.RData data/terrorism_data_long.RData
	Rscript -e "rmarkdown::render('02_final_report.Rmd')"