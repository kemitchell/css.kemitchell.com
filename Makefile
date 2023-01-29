all: styles.css all.css

styles.css: normalize.css readable.css print.css
	echo '@charset "utf-8";\n' > $@
	cat $^ >> $@

all.css: normalize.css readable.css print.css code.css
	echo '@charset "utf-8";\n' > $@
	cat $^ >> $@
