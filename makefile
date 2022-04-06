all: README.md

README.md: guessinggame.sh
	echo "# Bash, Make, Git and Github" > README.md
	echo "- The last time make was run ist:" >> README.md
	export HISTTIMEFORMAT="%F %T " | history | egrep "([0-9]{2}:){2}[0-9]{2}\smake$" | egrep -o "[0-9]{4}(-[0-9]{2}){2}\s([0-9]{2}:){2}[0-9]{2}" | sort | tail -1 >> README.md
	echo "- The program guessinggame.sh has the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
