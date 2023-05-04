generate_readme: guessinggame.sh
	echo "**Project Title:** Bash, Make, Git, and GitHub \n" > README.md
	echo "**Made at:** " >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "**Number of lines** (in guessinggame.sh): " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
