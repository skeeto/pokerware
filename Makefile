TYPE = ascii
LIST = formal

ps: pokerware.ps
pdf: pokerware.pdf

pokerware.ps: pokerware.tr
	groff -k -ms pokerware.tr > $@

pokerware.pdf: pokerware.ps
	ps2pdf pokerware.ps

pokerware.txt: $(TYPE).txt words-$(LIST).txt
	paste $(TYPE).txt words-$(LIST).txt > $@

pokerware.tr: header.tr pokerware.txt
	awk '{print ".LP\n.ft CR\n" $$1 "\n.ft H\n" $$2}' pokerware.txt | \
	    cat header.tr - > $@

clean:
	rm -f pokerware.txt pokerware.tr pokerware.ps pokerware.pdf
