BASE=luapackageloader
PKGDIR=luapackageloader
ARCHIVE=$(BASE).zip

.PHONY: ctan clean

ctan: $(ARCHIVE)

$(ARCHIVE): $(BASE).pdf $(BASE).lua $(BASE).sty README.md $(BASE).tex
	rm -rf $(PKGDIR)/*
	rm -f $@
	mkdir -p $(PKGDIR)
	cp $^ $(PKGDIR)
	zip -r $@ $(PKGDIR)

$(BASE).pdf: $(BASE).tex
	xelatex --shell-escape $(BASE).tex
clean:
	rm -rf $(ARCHIVE) $(BASE).pdf $(BASE).aux $(BASE).log $(BASE).out $(PKGDIR) _minted-$(BASE)

