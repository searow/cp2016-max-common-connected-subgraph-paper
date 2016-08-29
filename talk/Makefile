all : tables graphs
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode %O %S' talk

TABLES =

GRAPHS = \
	 gen-graph-unconnected-cumulative-labelled.pdf \
	 gen-graph-unconnected-cumulative-unlabelled.pdf \
	 gen-graph-unconnected-heatmap-labelled.pdf \
	 gen-graph-unconnected-heatmap-unlabelled.pdf \
	 gen-graph-connected-cumulative-cp.pdf \
	 gen-graph-connected-heatmap-cp.pdf \
	 gen-graph-connected-cumulative.pdf \
	 gen-graph-connected-heatmap.pdf

tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot
	gnuplot $<

gen-graph-%.pdf : graph-%.gnuplot $(DATA)
	gnuplot $<
	sed -i -e '5,18s/^\(\\path.*\)/\% \1/' gen-graph-$*.tex # epic haxx
	latexmk -pdf gen-graph-$*

