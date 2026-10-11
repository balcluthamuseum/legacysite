REPO=https://github.com/balcluthamuseum/legacysite

balcluthamuseum.co.nz:
	wget --mirror --page-requisites --adjust-extension --convert-links --no-parent https://balcluthamuseum.co.nz


wiki:
	@git remote remove pages 2>/dev/null || true
	git remote add pages $(REPO)
	git add *.html __static/ styles/ bundle/ favicons/
	git commit -m "Deploy repo to GitHub Pages"
	git push -f pages HEAD:gh-pages
