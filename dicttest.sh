# declare dict explicit

declare -A car

#asign values to key

car [ 'company' ]='BMW'
car [ 'company' ]='MAHINDRA'
car [ 'model' ]='TUV300'
car [ 'colour' ]='white'
car [ 'owner' ]='manoj'
car [ 'type' ]='Hybrid'
# print dict

echo keys:${!car[*]}
echo values:${car[*]}
echo owner:${car[owner]}
echo colour:${car[colour]}
echo type:${car[type]}

# for loop using in dict
for key in ${!car[*]}
do
	echo $key:${car[$key]}
done
