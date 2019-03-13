#remove empty crops (i.e., no crop in that year)
sed -i '' '/<http:\/\/foodie-cloud.com\/model\/foodie#cropSpecies> <http:\/\/w3id.org\/foodie\/core\/CZpilot_fields\/CropType\/> .$/d' $1
#remove empty crop definition
sed -i '' '/^<http:\/\/w3id.org\/foodie\/core\/CZpilot_fields\/CropType\/> </d' $1