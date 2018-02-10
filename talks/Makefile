DOCS=index 

DOCSH=$(addsuffix .html,$(DOCS))

.PHONY : docs
docs : $(DOCSH)

%.html : %.jemdoc 
	./jemdoc.py $<

.PHONY : update
update : $(DOCSH)
	@echo 'Copying to live server...'
	@-rsync -avzq --exclude *.swp --exclude 'exclude*' --exclude Makefile --exclude *.jemdoc --delete --delete-excluded ./ moehle@rice.stanford.edu:afs-home/WWW 2>&1 | grep -v 'failed to set permissions\|some files could not be transferred'
	@echo ' done.'

.PHONY : clean
clean :
	-rm -f *.html
