FILES=$(ls posts | grep .ms| sed s/.ms//)

for f in $FILES
do
groff -ms posts/$f.ms -Thtml > $f.html
done