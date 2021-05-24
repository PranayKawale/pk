#! /bin/bash -x
#costants
IS_PRESENT=1
EMP_RATE_PERHOUR=20

#variable
empCheck=$(( RANDOM % 2 ))

# selection
if [ $empCheck -eq $IS_PRESENT ]
 then
	empHrs=8
	salary=$(( EMP_RATE_PERHOUR * empHrs )) # action1
else 
	salary=0 #actin2
fi
