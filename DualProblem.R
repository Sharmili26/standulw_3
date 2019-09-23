### Weight Production 

library(lpSolveAPI)

lprec <- read.lp("DualProblem.lp") 

#Set bounds
set.bounds(lprec, lower = c("-Inf", "-Inf"), columns = c(10:11))

#Solve the problem
solve(lprec)

#Set objective function
get.objective(lprec)


#Variable Values
get.variables(lprec)

#Constraints
get.constraints(lprec)

#Shadow price and Reduced cost
get.sensitivity.rhs(lprec)

#Dual Solution
get.dual.solution(lprec)



