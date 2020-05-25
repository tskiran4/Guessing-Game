function ask {
	echo "Enter Your Guess:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Guessed number is Too low"
	else
		echo "Guessed number is Too high"
	fi
	ask
done

echo "Correct answer"
echo "---" && ls -1