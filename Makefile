all: validate_yaml cv.pdf

validate_yaml:
	@python -c 'import yaml,sys;yaml.safe_load(sys.stdin)' < curriculum_vitae.yaml

vc.tex: curriculum_vitae.yaml
	sh vc.sh

cv.md: curriculum_vitae.yaml
# Pandoc can't actually read YAML, just YAML blocks in
# Markdown. So I give it a document that's just a YAML block,
# while still editing a straight YAML file which has a bunch of advantages.
	echo "---" > $@
	cat $< >> $@
	echo "..." >> $@

cv.tex: template.tex curriculum_vitae.yaml vc.tex
# Pandoc does the initial compilation to tex; we then latex handle the actual bibliography
# and pdf creation.
	echo " " | pandoc --metadata-file curriculum_vitae.yaml --template=$< -t latex > $@

cv.pdf: cv.tex
	xelatex cv

clean:
	rm -f cv.aux cv.bcf cv.log cv.out cv.run.xml cv.pdf cv.tex cv.md vc.tex
