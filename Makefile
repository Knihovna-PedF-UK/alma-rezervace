index.html: alma-rezervace.tex template.html build.lua
	texlua build.lua > index.html
	git add index.html
	git commit -m "update"
	git push origin main
