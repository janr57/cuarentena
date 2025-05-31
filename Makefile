# Makefile para 'cuarentena.tex'

FILES =	cuarentena.pkg.sty\
	cuarentena.defs.sty\
	portada/portada.tex\
	tablacontenidos/tablacontenidos.tex\
	prologo/prologo.tex\
	apendices/apdca.tex\
	apendices/apdcb.tex\
	texto/rotaciones.tex\
	texto/spin12.tex\
	texto/entropia-sc.tex

cuarentena.pdf: cuarentena.tex $(FILES)

%.pdf:	%.tex
	lualatex --enable-write18 $<
	lualatex --enable-write18 $<

all: cuarentena.pdf

.PHONY: clean

clean:
	rm -rf *.pdf *.ps *.dvi *.aux *.log *.toc *~ auto #*#
	rm -rf teoria/*.aux teoria/*~ teoria/auto
	rm -rf prologo/*.aux prologo/*~ prologo/auto
	rm -rf tablacontenidos/*.aux tablacontenidos/*~ tablacontenidos/auto
	rm -rf portada/*.aux portada/*~ portada/auto
	rm -rf apendices/*.aux apendices/*~ apendices/auto
	rm -rf img/by-sa-eps-converted-to.pdf



