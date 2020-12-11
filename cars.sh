#! /bin/bash
# cars.sh
# Christian Ton-That

input=""
echo "type 1 to enter a new car"
echo "type 2 to display the list of cars"
echo "type 3 to quit and exit the program"

read -r input
while [ "$input" -ne 3 ]
do
	if [ $input -eq 2 ]
	then
		cat My_old_cars
	elif [ $input -eq 1 ]
	then
		newCar=""
		year=""
		make=""
		model=""
		echo "year?"
		read $year
		echo "make?"
		read $make
		echo "model?"
		read $model
		newCar=""
		newCar=$year+":"+$make+":"+$model
		echo newCar >> My_old_cars
	else
		echo "please enter 1, 2 or 3"
	fi
	read -r input
done
echo "goodbye"
