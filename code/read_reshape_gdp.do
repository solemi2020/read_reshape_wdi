
#delimit ;
import delimited
"https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv" 
, varnames(1) bindquotes(strict) encoding("utf-8") clear ;
#delimit cr
 reshape long gdp,i(countrycode) j(year)
rename gdp gdp_per_capita
label var gdp_per_capita "GDP per capita (USD?)"



