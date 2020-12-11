#! /bin/bash
# cars.sh
# Christian Ton-That

echo "type 1 to enter a new car"
echo "type 2 to display the list of cars"
echo "type 3 to quit and exit the program"
read input

while [ "$input" -lt 3 ]
do
	if [ "$input" -eq 2 ]
	then
		cat My_old_cars

	elif [ "$input" -eq 1 ]
	then
		year=""
		echo "year?"
		read $year
		make=""
		echo "make?"
		read $make
		model=""
		echo "model?"
		colon=":"
		newCar="$$year$colon$make$colon$model"
		echo $newCar >> My_old_cars
	else
		echo "please enter 1, 2 or 3"
	fi
	read input
done
echo "goodbye"
