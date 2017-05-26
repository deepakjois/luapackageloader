doc.pdf: doc.tex
	xelatex --shell-escape doc.tex

luapackageloader.zip: doc.pdf luapackageloader.lua luapackageloader.sty README.md doc.tex
	rm -rf luapackageloader/*
	mkdir -p luapackageloader
	cp $^ luapackageloader
	zip -r $@ -r luapackageloader

.PHONY: ctan