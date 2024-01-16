-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 150,
		multiplier = 5
	}, 
	{
		minlevel = 151,
		maxlevel = 250,
		multiplier = 4
	},
	{
		minlevel = 251,
		maxlevel = 350,
		multiplier = 3
	},
	 {
		minlevel = 351,
		multiplier = 2
	}
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 110,
		multiplier = 5
	}, 
	{
		minlevel = 111,
		maxlevel = 120,
		multiplier = 3
	}, {
		minlevel = 121,
		multiplier = 2
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 110,
		multiplier = 5
	},
	{
		minlevel = 111,
		maxlevel = 120,
		multiplier = 3
	},{
		minlevel = 121,
		multiplier = 2
	}
}
