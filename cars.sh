#! /bin/bash
# cars.sh
# Christian Ton-That

echo "type 1 to enter a new car"
echo "type 2 to display the list of cars"
echo "type 3 to quit and exit the program"
input = "0"
read -r input

while [ "$input" -le 3 ]
read -r input
do
	case "$input" in
		"1")
			year=""
			echo "year?"
			read $year
		
			make=""
			echo "make?"
			read $make
		
			model=""
			echo "model?"
			read $model
		
			newCar="$year:$make:$model"
			echo $newCar >> My_old_cars
			;;
		"2")
			cat My_old_cars;;
		"3")
			break;;
	esac
done
echo "goodbye"
