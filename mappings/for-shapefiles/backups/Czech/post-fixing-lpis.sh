#fix the farm code concatenation
sed -i '' 's/\(code> \".*\)-\(.*\)\/\(.*\)\/\(.*\)\(\"\)/\1\2\3\4\5/g' $1
sed -i '' 's/\(code> \".*\)-\(.*\)\/\(.*\)\(\"\)/\1\2\3\4/g' $1
#fix date format for validFrom, e.g., Thu May 04 00:00:00 CEST 2017
sed -i '' 's/\(validFrom> \".*\)[[:space:]]\(.*\)[[:space:]]\([0-9]*\)[[:space:]]\(.*\)[[:space:]]\([0-9]*\)\"/validFrom> \"\5-\2-\3\"/g' $1
#add datatype to validFrom and generatedAtTime
sed -i '' 's/\(validFrom> ".*\)"/\1T00:00:00"^^<http:\/\/www.w3.org\/2001\/XMLSchema#dateTime>/g' $1
sed -i '' 's/\(generatedAtTime> ".*\)"/\1T00:00:00"^^<http:\/\/www.w3.org\/2001\/XMLSchema#dateTime>/g' $1
#change data format of month mmm to mm
sed -i '' 's/-Jan-/-01-/g' $1
sed -i '' 's/-Feb-/-02-/g' $1
sed -i '' 's/-Mar-/-03-/g' $1
sed -i '' 's/-Apr-/-04-/g' $1
sed -i '' 's/-May-/-05-/g' $1
sed -i '' 's/-Jun-/-06-/g' $1
sed -i '' 's/-Jul-/-07-/g' $1
sed -i '' 's/-Aug-/-08-/g' $1
sed -i '' 's/-Sep-/-09-/g' $1
sed -i '' 's/-Oct-/-10-/g' $1
sed -i '' 's/-Nov-/-11-/g' $1
sed -i '' 's/-Dec-/-12-/g' $1