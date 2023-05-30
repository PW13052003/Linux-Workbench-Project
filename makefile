README.md: guessinggame.sh
    @echo "# Guessing Game" > README.md
    @echo >> README.md
    @echo "## Date and Time" >> README.md
    @echo >> README.md
    @echo "This makefile was run on $$(date)" >> README.md
    @echo >> README.md
    @echo "## Lines of Code" >> README.md
    @echo >> README.md
    @echo "The number of lines of code in guessinggame.sh is $$(wc -l < guessinggame.sh)" >> README.md
