#!/bin/bash

echo -e "Version to bump to:"
read version

# Check if we're on DEV
nomeDellaCartella=${PWD##*/}
nomeDellaTema="Native"
filePtr="index.css"

if [ "$nomeDellaCartella" = "Native - Release" ]
then
nomeDellaTema="Native"
filePtr="index.css"
else
nomeDellaTema="Native (DEV)"
filePtr="dist.css"
fi

# Write the files
echo -e "{\n    \"name\": \"${nomeDellaTema}\",\n    \"description\": \" A Discord Theme that adds features to Discord in a somewhat neat & native style \",\n    \"version\": \"${version}\",\n    \"license\": \"MIT\",\n    \"theme\": \"${filePtr}\",\n    \"consent\": \"false\",\n    \"splashTheme\": \"splash.css\",\n    \"author\": \"Nate's World\"\n}" > manifest.json
echo -e "{\n    \"name\": \"${nomeDellaTema}\",\n    \"description\": \"A Discord Theme that adds features to Discord in a somewhat neat & native style\",\n    \"version\": \"${version}\",\n    \"license\": \"MIT\",\n    \"theme\": \"${filePtr}\",\n    \"consent\": \"false\",\n    \"splashTheme\": \"splash.css\",\n    \"author\": \"Nate's Wolrd\"\n}" > powercord_manifest.json
echo -e "/**\n * @name Native\n * @author Nate's World\n * @version ${version}\n * @description A Discord Theme that adds features to Discord in a somewhat neat & native style\n * @source https://github.com/Nates-World-Community/Native\n*/\n\n@import \"dist\";\n\n" > betterdiscord_dev.scss
echo -e "/**\n * @name Native\n * @author Nate's World\n * @version ${version}\n * @description A Discord Theme that adds features to Discord in a somewhat neat & native style\n * @source https://github.com/Nates-World-Community/Native\n * @updateUrl https://raw.githubusercontent.com/Nates-World-Community/Native/main/Native.theme.css\n*/\n\n@import \"index\";\n\n" > betterdiscord.scss
echo -e "// BUILD VARS\n\$version: \"Native v${version}\";\n" > ./src/_buildvars.scss