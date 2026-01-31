# Makefile per build locale del blog Jekyll (GitHub Pages)
# Uso: make install  → installa dipendenze
#      make build    → compila il sito in _site/
#      make serve    → avvia server locale con live reload (http://localhost:4000)
#      make clean    → rimuove la cartella _site/

.PHONY: install build serve clean update

# Installa le gem con Bundler (da eseguire la prima volta e dopo modifiche al Gemfile)
install:
	bundle install

# Compila il sito in _site/ (senza avviare il server)
build: install
	bundle exec jekyll build

# Avvia il server di sviluppo: ricarica automaticamente alle modifiche
# Apri http://localhost:4000 nel browser
serve: install
	bundle exec jekyll serve --livereload

# Rimuove l'output della build
clean:
	rm -rf _site

# Allinea la gem github-pages alla versione usata da GitHub (opzionale)
update:
	bundle update github-pages
