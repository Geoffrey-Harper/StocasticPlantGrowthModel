This R script models plant growth population based on three different starting random number seeds.

The model is based using a binomial distiributiaon model 

Every season all the parent plants die out. 

But before they die each plant has the chance of creating 0,1 or 2 plants 

The model runs for 100 seasons

The chance of 0,1 or 2 plants being born per each plant is dependent on the probability function e^(-100/2*(previousplantpopulation))
