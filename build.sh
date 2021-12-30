FILES0="*.html"
FILES1="*/*.html"
TMP0="tmp"
TMP1="../tmp"
FOOTER=$(sed -z 's/\n/\\n/g' < footer.tpl)
NAV0=$(sed -z 's/\n/\\n/g' < nav.tpl)
NAV1=$(sed -z 's/\n/\\n/g' < nav1.tpl)

for FILE in $FILES0
do
	sed -z "s;<footer>.*</footer>;$FOOTER;g" $FILE > $TMP0
	mv -f $TMP0 $FILE
	sed -z "s;<nav>.*</nav>;$NAV0;g" $FILE > $TMP0
	mv -f $TMP0 $FILE
done

for FILE in $FILES1
do
	sed -z "s;<footer>.*</footer>;$FOOTER;g" $FILE > $TMP1
	mv -f $TMP1 $FILE
	sed -z "s;<nav>.*</nav>;$NAV1;g" $FILE > $TMP1
	mv -f $TMP1 $FILE
done