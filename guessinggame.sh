game=1

function play_game {
	local count=$( find . -maxdepth 1 -type f | wc -l | egrep -o "[0-9]+")
	if [[ $guess -eq $count ]]
	then
		echo "Congratulations! You won the Game"
		game=0
	elif [[ $guess -gt $count ]]
	then
		echo " Your guess is too high, Please give another try !"
	else
		echo " Your gess is too low, Please give another try !"
	fi

}

echo "Guess how many files are in the current directory ? "

while [[ $game -eq 1 ]]
do
	read guess
	if [[ $(echo $guess | egrep -o "[^0-9]+") ]]
	then 
		echo "Please type in a valid number:"
	fi
	play_game
done

