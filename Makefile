TEX = main.tex header.tex intro.tex

FIG = fig/architecture.png fig/hello.png fig/mobile.png fig/person.png

main.pdf: $(TEX) $(FIG)
	pdflatex $< 
	
fig/%: ../fig/%
	cp $< $@