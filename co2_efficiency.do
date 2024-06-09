egen country_id = group(country_code)
gen patents_1000_capita = patents_per_capita * 1000
gen ln_patents_1000_capita = log(patents_1000_capita)

gen ln_GDP_per_capita_ = log(GDP_per_capita_)
gen ln_CO2_emissions_ = log(CO2_emissions_)

gen CO2_per_capita = CO2_emissions_ / population

gen GDP_CO2_per_capita = GDP_per_capita_ / CO2_per_capita

xtset country_id Year


xtreg GDP_CO2 Renewable_energy_consumption_ Research_and_development_expendi patents_1000_capita ln_Population_density_ Urban_population_ Unemployment_total_ Alternative_and_nuclear_energy_ Combustible_renewables_and_waste Electric_power_consumption_ Electricity_production_from_coal Electricity_production_from_hydr Electricity_production_from_nucl Electricity_production_from_oil_  Fossil_fuel_energy_consumption_ Year_2001 Year_2002 Year_2003 Year_2004 Year_2005 Year_2006 Year_2007 Year_2008 Year_2009 Year_2010 Year_2011 Year_2012 Year_2013 Year_2014 Year_2015 Year_2016 Year_2017 Year_2018 Year_2019 Year_2020, fe rob
