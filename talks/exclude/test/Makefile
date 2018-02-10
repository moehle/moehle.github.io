DOCS=index downloads
HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

all : $(PHDOCS)

html/%.html : %.jemdoc MENU
	./jemdoc.py -o $@ $<

clean : 
	rm -f /html/*.html
