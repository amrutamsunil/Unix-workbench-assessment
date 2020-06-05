README.md: guessinggame.sh
	echo "# Guessinggame" > README.md
	echo "## Unix Workbench assignment by Amrutam Sunil" >> README.md
	date "+Date: %Y-%m-%d, Time: %H:%M:%S%n" >> README.md
	echo "The number of lines of code in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
