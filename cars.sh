#! /bin/bash
#cars.sh
#Ryan King
while [[ "$X" -ne "3" ]]
do
	echo "Type the number 1 to enter a new car, the number 2 to display the list of cars, or the number 3 to quit and exit the program"
	read -r X
	case $X in
		1) echo "What year is the car?"
		read -r YEAR
		echo "What is the make of the car?"
		read -r MAKE
		echo "What is the model of the car?"
		read -r MODEL
		"CAR=$YEAR:$MAKE:$MODEL"
		echo "$CAR" >> My_old_cars;;
		2) sort My_old_cars;;
		3) echo 'Goodbye';;
		*) echo 'Something is wrong with your input. Please try again.';;
	esac
done
		 
