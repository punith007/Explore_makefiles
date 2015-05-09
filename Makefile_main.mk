### Printing within makefile
$(info ******* Running Makefile *******)

### Variable declaration
$(info --- VARIABLE DECLARATION ---)

var:=hello
$(info $(var))

### Functions for transforming text
$(info --- FUNCTIONS FOR TRANSFORMING TEXTS ---)

reverse = $(2) $(1)
foo = $(call reverse,a,b)
$(info $(foo))
ho = $(shell cat sample.txt)
$(info $(ho))

### Conditional Directive
$(info  --- CONDITION DIRECTIVE ---)

ifeq ($(var),hello)
$(info -I- variable is assigned a string - hello) 
else
$(info -I- variable is assigned some other string)
endif

### Foreach function
$(info --- FOREACH FUNCTION ---)

dirs := a b c d
files := $(foreach dir,$(dirs),$(info $(dir)))

### Exporting variables
exp_var:=var_to_export
export exp_var             # Remove export and try 

### Defining targets
$(info --- TARGET RECIPES ---)

.PHONY: all
all:
	@echo $(var)
	@echo $(foo)
	@echo $(ho)
%_var: 
	@echo $@
	make -f make_testfile

