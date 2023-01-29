READABLE=readable.css

all: $(READABLE)

$(READABLE): normalize.css readable-base.css readable-print.css code.css
	printf "@charset 'utf-8';\n\n" > $@
	cat $^ >> $@

.PHONY: clean

clean:
	rm -f $(READABLE)
