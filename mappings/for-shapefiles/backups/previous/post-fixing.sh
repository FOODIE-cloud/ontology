#remove duplicate lines (cropType)
sort -u $1 -o $1 
#remove 4326 value from aswkt
sed -i '' 's/<http:\/\/www.opengis.net\/def\/crs\/EPSG\/0\/4326> //g' $1