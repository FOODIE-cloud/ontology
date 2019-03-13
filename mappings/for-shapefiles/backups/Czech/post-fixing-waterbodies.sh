#tranform to latin1 representation of utf-8
native2ascii -encoding UTF-8 -reverse $1 temp.nt
#transform to nice rep
iconv -f UTF8 -t LATIN1 temp.nt > $1
#rem temp
rm temp.nt
#rem empty labels
sed -i '' '/<http:\/\/www.w3.org\/2000\/01\/rdf-schema#label> ""^^<http:\/\/www.w3.org\/2001\/XMLSchema#string> .$/d' $1