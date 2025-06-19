#!/usr/bin/env bash
while getopts a:n:u:d: flag
do
    case "${flag}" in
        a) author=${OPTARG};;
        n) name=${OPTARG};;
        u) urlname=${OPTARG};;
        d) description=${OPTARG};;
    esac
done

echo "Author: $author";
echo "Project Name: $name";
echo "Project URL name: $urlname";
echo "Description: $description";

echo "Renaming project..."

original_author="roqueando"
original_name="cpp_dinoplate_test"
original_upper="CPP_DINOPLATE_TEST"
upper_name=${name^^}
original_urlname="cpp-dinoplate-test"
original_description="Awesome cpp_dinoplate_test created by roqueando"
description_name=${original_description^^}
# for filename in $(find . -name "*.*") 
for filename in $(git ls-files) 
do
    sed -i "s/$original_author/$author/g" $filename
    sed -i "s/$original_name/$name/g" $filename
    sed -i "s/$original_upper/$upper_name/g" $filename
    sed -i "s/$original_urlname/$urlname/g" $filename
    sed -i "s/$original_description/$description/g" $filename
    echo "Renamed $filename"
done

mv project_name $name

# This command runs only once on GHA!
rm -rf .github/template.yml
