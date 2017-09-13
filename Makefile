TEX = main.tex header.tex intro.tex

FIG = fig/architecture.png fig/hello.png fig/mobile.png fig/person.png

LATEX = pdflatex -halt-on-error
main.pdf: $(TEX) $(FIG)
	$(LATEX) $< && $(LATEX) $< 
	
fig/%: ../fig/%
	cp $< $@