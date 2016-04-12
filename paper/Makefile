all : tables graphs
	latexmk -pdf -pdflatex='pdflatex -interaction=nonstopmode %O %S' paper

TABLES =

GRAPHS = \
	 gen-graph-unconnected-cumulative.tex \
	 gen-graph-unconnected-heatmap.tex \
	 gen-graph-connected-cumulative.tex \
	 gen-graph-connected-heatmap.tex \
	 gen-graph-connected-cp.tex

DATA = connected-undir33.data connected-undir33-heatmap.data \
       connected-plain.data connected-plain-heatmap.data \
       unconnected-33.data unconnected-33-heatmap.data \
       unconnected-plain.data unconnected-plain-heatmap.data \
       connected-cp-plain-fc-branch-fc-filter-heatmap.data \
       connected-cp-plain-fc-branch-fc-both-heatmap.data \
       connected-cp-plain-fc-filter-fc-both-heatmap.data \
       connected-cp-plain-mac-branch-mac-filter-heatmap.data \
       connected-cp-plain-mac-branch-mac-both-heatmap.data \
       connected-cp-plain-mac-filter-mac-both-heatmap.data \
       connected-cp-undir33-fc-branch-fc-filter-heatmap.data \
       connected-cp-undir33-fc-branch-fc-both-heatmap.data \
       connected-cp-undir33-fc-filter-fc-both-heatmap.data \
       connected-cp-undir33-mac-branch-mac-filter-heatmap.data \
       connected-cp-undir33-mac-branch-mac-both-heatmap.data \
       connected-cp-undir33-mac-filter-mac-both-heatmap.data

tables : $(TABLES)

graphs : $(GRAPHS)

gen-graph-%.tex : graph-%.gnuplot $(DATA)
	gnuplot $<
	sed -i -e '5s/^\(\\path.*\)/\% \1/' $@ # epic haxx

connected-undir33-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 3 7 1000 1 > $@

connected-plain-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 3 7 1000 1 > $@

unconnected-33-heatmap.data : unconnected-33.data heatmapify.rb
	ruby heatmapify.rb unconnected-33.data 2 3 1000 1 > $@

unconnected-plain-heatmap.data : unconnected-plain.data heatmapify.rb
	ruby heatmapify.rb unconnected-plain.data 1 3 1000 1 > $@

connected-cp-plain-fc-branch-fc-filter-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 5 4 1000 1000 > $@

connected-cp-plain-fc-branch-fc-both-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 5 6 1000 1000 > $@

connected-cp-plain-fc-filter-fc-both-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 4 6 1000 1000 > $@

connected-cp-plain-mac-branch-mac-filter-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 2 1 1000 1000 > $@

connected-cp-plain-mac-branch-mac-both-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 2 3 1000 1000 > $@

connected-cp-plain-mac-filter-mac-both-heatmap.data : connected-plain.data heatmapify.rb
	ruby heatmapify.rb connected-plain.data 1 3 1000 1000 > $@

connected-cp-undir33-fc-branch-fc-filter-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 5 4 1000 1000 > $@

connected-cp-undir33-fc-branch-fc-both-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 5 6 1000 1000 > $@

connected-cp-undir33-fc-filter-fc-both-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 4 6 1000 1000 > $@

connected-cp-undir33-mac-branch-mac-filter-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 2 1 1000 1000 > $@

connected-cp-undir33-mac-branch-mac-both-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 2 3 1000 1000 > $@

connected-cp-undir33-mac-filter-mac-both-heatmap.data : connected-undir33.data heatmapify.rb
	ruby heatmapify.rb connected-undir33.data 1 3 1000 1000 > $@

