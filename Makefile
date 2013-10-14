
build: components css/list-theme-pure.css
	@component build
	@touch build/done
	@rm build/done
	@echo build done

all: stylus build
	@echo all done

css/list-theme-pure.css: css/src/list-theme-pure.styl
	@stylus --out css $<

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
