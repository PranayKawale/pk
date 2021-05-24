#! /bin/bash -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20

#variable
empCheck=$(( RANDOM % 3 )) #0/1/2

# SELECTION
if [ $empCheck -eq 1 ]
then
	empHrs=8 # action1
salary=$(( empHrs * EMP_RATE_PER_HR ))
elif [ $empCheck -eq 2 ]
	
then 
	empHrs=4 # action2
salary=$(( empHrs * EMP_RATE_PER_HR ))
else
	empHrs=0 #action3
	salary=0
fi
