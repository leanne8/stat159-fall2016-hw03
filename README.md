##Leanne Lee
### Stat 159 Homework 3 **Multiple Regression Analysis** 
#### Baisc Homework structure

The homework consists of regression functions, test cases, multiple linear regression and images. I am trying to reproduce the multipel linear regression using TV, Radio and Newspaper with a dependednt variable of sales. In the Chapter 3 of "An Introduction to Statistical Learning" (by James et al), I reusing the regression equations in the regression functions. By using _testthat_ function, I can check if I implelement the functions correctly. Then, I run a multiple linear regression on the three types of advertisement, and compare which advetisement has a more effective. While computing the multiple linear regression, I also produce historgrams and scatter plots on each independent variables, as well as the multiple regression plots and correlation matrix. 

```
stat159-fall2016-hw03/
    .gitignore
    README.md
    LICENSE
    Makefile
    session-info.txt                     # produced by session-info-script.R
    code/
      README.md
      test-that.R
      functions/
        regression-functions.R
      scripts/
        eda-script.R
        regression-script.R
        session-info-script.R
      tests/
        test-regression.R
    data/
      README.md
      Advertising.csv
      eda-output.txt                      # produced by eda-script.R
      correlation-matrix.RData            # produced by eda-script.R
      regression.RData                    # produced by regression-script.R
    images/
        histogram-sales.png                # produced by eda-script.R
        histogram-tv.png                   # produced by eda-script.R
        histogram-radio.png                # produced by eda-script.R
        histogram-newspaper.png            # produced by eda-script.R
        scatterplot-matrix.png             # produced by eda-script.R
        scatterplot-tv-sales.png           # produced by regression-script.R
        scatterplot-radio-sales.png        # produced by regression-script.R
        scatterplot-newspaper-sales.png    # produced by regression-script.R
        residual-plot.png                  # produced by regression-script.R
        scale-location-plot.png            # produced by regression-script.R
        normal-qq-plot.png                 # produced by regression-script.R
    report/
        report.Rmd
        report.pdf
```
### Creative common : 

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
