* Author: Miklos Koren, 2019.
* License: Modified BSD license, see LICENSE.md

* can only run after WDI-select-variables.dta is created in the Stata Economics lesson
use "data/derived/WDI-select-variables.dta", clear
keep countrycode year gdp_per_capita 
forvalues t = 1990/2017 {
	preserve
	keep if year == `t'
	drop year
	save "data/derived/gdp`t'.dta", replace
	restore
}
