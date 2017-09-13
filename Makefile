TEX = main.tex header.tex intro.tex 
TEX += model.tex neo4j.tex samplemain.tex
TEX += hyper.tex 
TEX += comp.tex
TEX += autogen.tex
TEX += expert.tex
TEX += plan.tex
TEX += doc.tex
TEX += dos.tex
TEX += plc.tex
TEX += ack.tex bib.tex

FIG = fig/architecture.png fig/hello.png fig/mobile.png fig/person.png

SRC = src/hello.c

LATEX = pdflatex -halt-on-error
main.pdf: $(TEX) $(FIG) $(SRC)
	$(LATEX) $< && $(LATEX) $< 
	
fig/%.png: ../fig/%.dot
	dot -T png -o $@ $<
