Models
model1 <- lm(months_waiting~total_units+pct_white_nothsp+pct_occupied, data=hcv2016)
summary(model1)
model2 <- lm(months_waiting~total_units+pct_female_head+pct_occupied, data=hcv2016)
summary(model2)
model3 <- lm(months_waiting~hh_income+pct_white_nothsp, data=hcv2016)
summary(model3)

#The first model predicts that if a county's percentage of white people increases by 1%, the average months waiting for the county goes down by .156 months. This is actually quite a substantial change. If one county is 50% white and another is 75%, the model predicts that the latter county's average wait time will be 4 months shorter.

#The second model predicts the waiting time by the total units, the percent of female heads of the households, and the percent housing occupied. It predicts that for every unit increase, the predicted wait time increases by 0.00074 months. Also, for every percentage in a county that the female is the head of a household, predicted waiting time increases by .299. For every percentage of houses occupied in the county, the predicted waiting time increases by 0.1669 months. It's important to note that while all of these variables are significant in the model, only 4.51 % of the variaiblity is explained by this model. 

#The third model uses household income and the county's percentage of white people to predict the waiting time. The model predicts that if both household income and % white are 0, the average waiting time will be 25.74 months. For every \$1,000 increase in houshold income with % white held constant, the wait time increases by 0.53 months. For every 1% increase in the white population of the county, there is a .168 month drop in the waiting time, assuming household income is held constant. While all variables are significant, we found a small $R^2 = 8.43\%.$