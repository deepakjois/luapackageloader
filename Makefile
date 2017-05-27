luapackageloader.pdf: luapackageloader.tex
	xelatex --shell-escape doc.tex

luapackageloader.zip: luapackageloader.pdf luapackageloader.lua luapackageloader.sty README.md luapackageloader.tex
	rm -rf luapackageloader/*
	rm $@
	mkdir -p luapackageloader
	cp $^ luapackageloader
	zip -r $@ luapackageloader

.PHONY: ctan
