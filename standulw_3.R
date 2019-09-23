### Weight Production 

library(lpSolveAPI)

lprec <- read.lp("weigelt.lp")

solve(lprec)

#Set Objective Function
get.objective(lprec)

#variable values 
get.variables(lprec)

#Constraints
get.constraints(lprec)

#Shadow price and reduced cost
get.sensitivity.rhs(lprec)

#Dual Solution 
get.dual.solution(lprec)

#Sensitivity
cbind(get.sensitivity.rhs(lprec)$duals[1:11],
get.sensitivity.rhs(lprec)$dualsfrom[1:11],
get.sensitivity.rhs(lprec)$dualstill[1:11])


cbind(get.sensitivity.rhs(lprec)$duals[12:20],
get.sensitivity.rhs(lprec)$dualsfrom[12:20],
get.sensitivity.rhs(lprec)$dualstill[12:20])




