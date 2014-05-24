SRC_FILE=index.adoc
OUTPUT_FILE=index.html
PDF_THEME_FILE=pdf-ja-theme.yml
PDF_OUTPUTFILE=index.pdf

all: clean html

test-all:
	@npm test
	@make html
	@gulp lint-html


html:
	@echo "Generate HTML..."
	@gulp embed
	@echo "Building asciidoc"
	@asciidoctor -a bookversion=`node ./_tools/cli-book-version.js` \
	-a icons=font -a source-highlighter=coderay --backend html5 \
	-o ${OUTPUT_FILE} ${SRC_FILE}
	@echo "Done! => ${OUTPUT_FILE}"

pdf:
	@echo "Generate PDF..."
	@echo "Building asciidoc"
	@bundle exec ruby `bundle show asciidoctor-pdf`/bin/asciidoctor-pdf \
	--theme ${PDF_THEME_FILE} ${SRC_FILE}
	@echo "Done! => ${PDF_OUTPUT_FILE}"

clean:
	@rm -f {OUTPUT_FILE}
