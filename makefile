all: 
	echo "Guessing Game" >> README.md
	echo "Time:" >> README.md
	date >> README.md
	echo >> README.md
	echo "Code lines count:" >> README.md
	wc -l guessinggame.sh|egrep -o '[0-9]+' >> README.md

clean:
	rm README.md