all: README.md

README.md: guessinggame.sh
	echo "## The Guessing-game assignment" > README.md
	
	echo "\n**Description**: The program *guessinggame.sh* will continuously ask the user to guess the number of files in the current directory. If the answer is wrong it will return that the answer is too low or if it is too high. If the answer is correct the number of files in the directory will be displayed and and listed and the winner is congratulated." >> README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
