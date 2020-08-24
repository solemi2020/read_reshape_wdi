local indicator gdp
local longname gdp_per_capita
local label "GDP per capota (USD?)"

#delimit ;
import delimited
"https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv" 
, varnames(1) bindquotes(strict) encoding("utf-8") clear ;
#delimit cr
 reshape long `indicator',i(countrycode) j(year)
rename gdp `longname'
label var `longname' "`label'"
save "data/derived/gdp_per_capita.dta",replace

// good idea to use relative paths, as we do already



