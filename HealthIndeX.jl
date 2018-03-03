
###### Health IndeX #######
     ## Version 0.1 ##

# ---- List of Indices -----
# Body adiposity index
# Body Shape Index
# Body volume index
# Body water
# Corpulence index
# Pignet Index




module HealthIndeX

export bmi,bodymassindex,bai,bodyadiposeindex,bsi,bodyshapeindex,tbw,totalbodywater,corpulence_index,pignetindex,bbi,bodybuildindex,
perinatal_mortality,infant_mortality,child_mortality,maternal_mortality,maternal_mortality_ratio

#Body Mass Index
#that abdominal obesity is defined as a waist–hip ratio above 0.90 for males and above 0.85 for females, or a body mass index (BMI) above 30.0
function bmi(mass::Number,height::Number)
	bmi_formula = mass/height^2
	if bmi_formula < 18.5
		println("Body Mass Index is => ",bmi_formula)
		println("BMI Category => Underweight ")
	elseif bmi_formula > 23
		println("Body Mass Index is => ",bmi_formula)
		println("BMI Category => Overweight ")
	elseif bmi_formula > 30
		println("Body Mass Index is => ",bmi_formula)
		println("BMI Category => Obese ")
	else 
		println("Body Mass Index is => ",bmi_formula)
	end

	println("Body Mass Index is => ",bmi_formula)
end

function bodymassindex(mass::Number,height::Number)
	bmi_formula = mass/height^2
	if bmi_formula < 18.5
		println("Body Mass Index is => ",bmi_formula)
		println("BMI Category => Underweight ")
	elseif bmi_formula > 23
		println("Body Mass Index is => ",bmi_formula)
		println("BMI Category => Overweight ")
	elseif bmi_formula > 30
		println("Body Mass Index is => ",bmi_formula)
		println("BMI Category => Obese ")
	else 
		println("Body Mass Index is => ",bmi_formula)
	end

	println("Body Mass Index is => ",bmi_formula)
end


# Body Adipose Index
# Measuring the amount of body fat in humans
function bai(hip_circumference::Number,height::Number)
	bai_formula = (100 * hip_circumference/height*sqrt(height)) - 18
	println("Body Adipose Index =>",bai_formula)
end

function bodyadiposeindex(hip_circumference::Number,height::Number)
	bai_formula = (100 * hip_circumference/height*sqrt(height)) - 18
	println("Body Adipose Index =>",bai_formula)
end

# Body Shape Index
function bsi(wc::Number,mass::Number,height::Number)
	bsi_formula = wc/(cbrt((mass/height^2)^2))*sqrt(height)
    println("Body Shape Index =>",bsi_formula)
end

function bodyshapeindex(wc::Number,mass::Number,height::Number)
	bsi_formula = wc/(cbrt((mass/height^2)^2))*sqrt(height)
    println("Body Shape Index =>",bsi_formula)
end

# Body water
# C is a coefficient for the expected percentage of weight made up of free water. 
# 	For adult, non-elderly males, C = 0.6. 
# 	For adult elderly males, malnourished males, or females, C = 0.5. 
# 	For adult elderly or malnourished females C = 0.45. 

#
function tbw(weight::Number,age::Number)
	adult_elderly = collect(61:100)
	adult_nonelderly = collect(18:60)
	children = collect(1:17)
	if age in adult_nonelderly
		C = 0.6
		tbw_formula = weight * C
		println("Total Body Water =>",tbw_formula)
	elseif age in adult_elderly
		C = 0.5
		tbw_formula = weight * C
		println("Total Body Water =>",tbw_formula)
	else
		C = 0.45
		tbw_formula = weight * C
		println("Total Body Water =>",tbw_formula)
	end


end

function totalbodywater(weight::Number;age=age)
	adult_elderly = collect(61:100)
	adult_nonelderly = collect(18:60)
	children = collect(1:17)
	if age in adult_nonelderly
		C = 0.6
		tbw_formula = weight * C
		println("Total Body Water =>",tbw_formula)
	elseif age in adult_elderly
		C = 0.5
		tbw_formula = weight * C
		println("Total Body Water =>",tbw_formula)
	else
		C = 0.45
		tbw_formula = weight * C
		println("Total Body Water =>",tbw_formula)
	end


end


# Corpulence
#The Corpulence Index (CI) or Ponderal Index (PI) is a measure of leanness (corpulence) of a person

function corpulence_index(mass::Number,height::Number)
	corpulence_formula = mass/height^3
	println("Corpulence Index =>",corpulence_formula)
end

# waist to hip ratio
#that abdominal obesity is defined as a waist–hip ratio above 0.90 for males and above 0.85 for females, or a body mass index (BMI) above 30.0
function waist_to_hip(waist_size::Number,hip_size::Number)
	waist_to_hip_formula = waist_size/hip_size
	println("Waist To Hip Ratio=>",waist_to_hip_formula)
end


# Pignet
# Pignet Index or Body Build Index is an index used for evaluation of body build.
#Stature in cm - (weight in kg + chest circumference in cm)
function pignetindex(height::Number,weight::Number,chest_circumference::Number)
	pignetindex_formula = height - (weight + chest_circumference)
	println("Pignet Index=>",pignetindex_formula)
end

function bodybuildindex(height,weight::Number,chest_circumference::Number)
	pignetindex_formula = height - (weight + chest_circumference)
	println("Pignet Index=>",pignetindex_formula)
end

function bbi(height::Number,weight::Number,chest_circumference::Number)
	pignetindex_formula = height - (weight + chest_circumference)
	println("Pignet Index=>",pignetindex_formula)
end



## Perinatal mortality rate – the sum of neonatal deaths and fetal deaths (stillbirths) per 1,000 births.
# Maternal mortality ratio – the number of maternal deaths per 100,000 live births in same time period.
# Maternal mortality rate – the number of maternal deaths per 1,000 women of reproductive age in the population (generally defined as 15–44 years of age).
# Infant mortality rate – the number of deaths of children less than 1 year old per 1,000 live births.
# Child mortality rate: the number of deaths of children less than 5 years old per 1,000 live births.


# Mortality rate
# Perinatal the sum of neonatal deaths and fetal deaths (stillbirths) per 1,000 births.
function  perinatal_mortality(neonatal_deaths::Int...)
	perinatal_mortality_formula = sum(neonatal_deaths)/1000 * 100
	println("Perinatal Mortality=>",perinatal_mortality_formula,"%")

end


# Maternal mortality ratio
function maternal_mortality_ratio(num_maternal_deaths::Int)
	maternal_mortality_formula = num_maternal_deaths/100000 
	println("Maternal Mortality Ratio=>",maternal_mortality_formula)
end


# Maternal mortality rate
# Maternal mortality rate – the number of maternal deaths per 1,000 women of reproductive age in the population (generally defined as 15–44 years of age).
function maternal_mortality(num_maternal_deaths::Int)
	maternal_mortality_formula = num_maternal_deaths/1000 * 100
	println("Maternal Mortality Rate=>",maternal_mortality_formula,"%")
end


# Infant mortality rate
# Infant mortality rate – the number of deaths of children less than 1 year old per 1,000 live births.
function infant_mortality(num_infant_deaths::Int)
	infant_mortality_formula = num_infant_deaths/100000 * 100
	println("Infant Mortality Rate=>",infant_mortality_formula,"%")
end


# Child mortality rate
# # Child mortality rate: the number of deaths of children less than 5 years old per 1,000 live births.
function child_mortality(num_child_deaths::Int)
	infant_mortality_formula = num_child_deaths/100000 * 100
	println("Infant Mortality Rate=>",infant_mortality_formula,"%")
end







end



# Jesus saves @ JCharisTech
#  By Jesse JCharis 



