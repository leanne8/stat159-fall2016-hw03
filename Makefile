.PHONY: all data clean eda regression report tests

all: eda regression report session-info.txt

data:
	curl "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv" > data/Advertising.csv

tests: code/test-that.R
	Rscript code/test-that.R

eda: code/scripts/eda-script.R data/Advertising.csv
	Rscript code/scripts/eda-script.R

regression:
	Rscript code/scripts/regression-script.R

session-info.txt: code/scripts/session-info-script.R
	Rscript code/scripts/session-info-script.R
	

report: report/report.Rmd
	pandoc -s report/report.Rmd -o report/report.pdf

clean:
	rm -f report/report.pdf 