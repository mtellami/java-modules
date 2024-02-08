MAIN=Program

SRC=$(MAIN).java Signature.java

CLASS=$(SRC:.java=.class)

all: $(CLASS)

$(CLASS):
	@javac $(SRC)

run: $(CLASS)
	@echo
	@java $(MAIN)

clean:
	@rm -fr $(CLASS)

re: clean all
