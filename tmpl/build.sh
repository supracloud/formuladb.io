ls *.html | grep -v '^_' | while read i; do
  	export TITLE=`echo $i | sed 's/\.html//' | sed 's/-/ /g'`
	cat $i |  ./mo > ../$i
done
