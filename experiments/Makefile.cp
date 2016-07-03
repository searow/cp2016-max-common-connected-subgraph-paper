SHELL := /bin/bash
FILTER := -1
MODULUS := 1
CATTER := cat
INSTANCES := $(shell cut -d' ' -f1 instances.txt | $(CATTER) | if [[ $(FILTER) == -1 ]] ; then cat ; else awk "(NR % $(MODULUS)) == ($(FILTER) % $(MODULUS))" ; fi)
TIMEOUT := 3600
ALGORITHMS := cp-connected-branching-undir33 cp-connected-branching-plain cp-unconnected-33 cp-unconnected-plain cp-connected-filtering-undir33 cp-connected-filtering-plain cp-connected-branching-filtering-undir33 cp-connected-branching-filtering-plain cp-fc-connected-branching-filtering-undir33 cp-fc-connected-branching-filtering-plain cp-fc-connected-branching-undir33 cp-fc-connected-branching-plain cp-fc-connected-filtering-undir33 cp-fc-connected-filtering-plain cp-fc-unconnected-33 cp-fc-unconnected-plain
STACK_SPACE := 10485760
RESULTS := results

all : $(foreach i, $(INSTANCES), $(foreach a, $(ALGORITHMS), $(RESULTS)/$(a)/$i.out ))

dir-% :
	mkdir -p $(RESULTS) $(RESULTS)/$*

$(RESULTS)/cp-connected-branching-filtering-undir33/%.out : | dir-cp-connected-branching-filtering-undir33
	ulimit -s $(STACK_SPACE) ; ../mccis_branching_filtering/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-connected-branching-filtering-plain/%.out : | dir-cp-connected-branching-filtering-plain
	ulimit -s $(STACK_SPACE) ; ../mccis_branching_filtering/executable.out -l 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-connected-branching-undir33/%.out : | dir-cp-connected-branching-undir33
	ulimit -s $(STACK_SPACE) ; ../mccis_branching/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-connected-branching-plain/%.out : | dir-cp-connected-branching-plain
	ulimit -s $(STACK_SPACE) ; ../mccis_branching/executable.out -l 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-connected-filtering-undir33/%.out : | dir-cp-connected-filtering-undir33
	ulimit -s $(STACK_SPACE) ; ../mccis_filtering/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-connected-filtering-plain/%.out : | dir-cp-connected-filtering-plain
	ulimit -s $(STACK_SPACE) ; ../mccis_filtering/executable.out -l 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-connected-branching-filtering-undir33/%.out : | dir-cp-fc-connected-branching-filtering-undir33
	ulimit -s $(STACK_SPACE) ; ../FC/mccis_branching_filtering/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-connected-branching-filtering-plain/%.out : | dir-cp-fc-connected-branching-filtering-plain
	ulimit -s $(STACK_SPACE) ; ../FC/mccis_branching_filtering/executable.out -l 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-connected-branching-undir33/%.out : | dir-cp-fc-connected-branching-undir33
	ulimit -s $(STACK_SPACE) ; ../FC/mccis_branching/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-connected-branching-plain/%.out : | dir-cp-fc-connected-branching-plain
	ulimit -s $(STACK_SPACE) ; ../FC/mccis_branching/executable.out -l 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-connected-filtering-undir33/%.out : | dir-cp-fc-connected-filtering-undir33
	ulimit -s $(STACK_SPACE) ; ../FC/mccis_filtering/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-connected-filtering-plain/%.out : | dir-cp-fc-connected-filtering-plain
	ulimit -s $(STACK_SPACE) ; ../FC/mccis_filtering/executable.out -l 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-unconnected-33/%.out : | dir-cp-unconnected-33
	ulimit -s $(STACK_SPACE) ; ../mcis/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-unconnected-plain/%.out : | dir-cp-unconnected-plain
	ulimit -s $(STACK_SPACE) ; ../mcis/executable.out -l 0 -d 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-unconnected-33/%.out : | dir-cp-fc-unconnected-33
	ulimit -s $(STACK_SPACE) ; ../mcis_fc/executable.out \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(RESULTS)/cp-fc-unconnected-plain/%.out : | dir-cp-fc-unconnected-plain
	ulimit -s $(STACK_SPACE) ; ../mcis_fc/executable.out -l 0 -d 0 \
	    -p $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f2 ) \
	    -t $(shell grep "^`basename $*` " < instances.txt | cut -d' ' -f3 ) > >(tee $@ ) || grep -q exceeded $@

$(foreach a,$(ALGORITHMS),$(eval $(call ALGORITHM_template,$(a))))

