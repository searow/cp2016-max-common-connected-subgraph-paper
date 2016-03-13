all : tables graphs
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode %O %S' paper

TABLES =

GRAPHS = gen-graph-connected-undir33.tex gen-graph-connected-plain.tex \
	 gen-graph-unconnected-33.tex gen-graph-unconnected-plain.tex

DATA = connected-undir33.data connected-undir33-heatmap.data \
       connected-plain.data connected-plain-heatmap.data \
       unconnected-33.data unconnected-33-heatmap.data \
       unconnected-plain.data unconnected-plain-heatmap.data

tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot $(DATA)
	gnuplot $<
	sed -i -e '5s/^\(\\path.*\)/\% \1/' $@ # epic haxx

%-heatmap.data : %.data heatmapify.rb
	ruby heatmapify.rb $*.data > $*-heatmap.data

