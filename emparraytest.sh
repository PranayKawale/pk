#! /bin/bash -x
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
totalworkinghours=0
	function getworkhours(){
		local empcheck=$1
		case $empcheck in
		$IS_PRESENT_FULL_TIME) empHrs=8;;
		$IS_PRESENT_PART_TIME) empHrs=4;;
		*) empHrs=0;;
		esac
echo $empHrs
}
for ((Day=1;Day<=20;Day++))
do
		#variable
		empcheck=$(( RANDOM % 3 )) #0/1/2
		#function call
		empHrs="$( getworkhours $empcheck )"
		#calculation
		totalworkinghours=$(( totalworkinghours + empHrs ))
		salary=$(( EMP_RATE_PER_HR * empHrs ))
		dailywage[$Day]=$salary
done
totalsalary=$(( totalworkinghours * EMP_RATE_PER_HR ))
echo ${dailywage[*]}
