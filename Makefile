# derived from https://github.com/dfm/cv/blob/master/Makefile
LATEX       = pdflatex
BASH        = bash -c
ECHO        = echo
RM          = rm -rf

TMP_SUFFS   = aux bbl blg log dvi ps eps out
RM_TMP      = ${RM} $(foreach suff, ${TMP_SUFFS}, *.${suff})

CHECK_RERUN = grep Rerun $*.log

ALL_FILES = Rose_CV.pdf

all: ${ALL_FILES}

%.pdf: %.tex res.cls 
	${LATEX} $<
	${LATEX} $<

clean:
	${RM_TMP} ${ALL_FILES}
