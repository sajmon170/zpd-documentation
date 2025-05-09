MDSOURCES  := $(wildcard *.md)

.PHONY: all clean

all: document

clean:
	@$(RM) *.pdf *.log

document: $(MDSOURCES)
	pandoc --read=markdown --write=latex --output=$@.pdf $^
	@printf "Done!\n"

