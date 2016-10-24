#!/bin/bash

pkg="${1}/package.json"
tsc="${1}/tsconfig.json"
typings="${1}/typings.json"
sysconfig="${1}/systemjs.config.js"
indHtml="${1}/index.html"
stylesCSS="${1}/styles.css"
appDir="${1}/app"
appComp="${appDir}/app.component.ts"
appMod="${appDir}/app.module.ts"
appMain="${appDir}/main.ts"

if [ ! -e $1$pkg ]; then
	
	echo >> $pkg
	echo >> $tsc
	echo >> $typings
	echo >> $typings
	echo >> $sysconfig
	echo >> $stylesCSS
	echo >> $indHtml
# write to files
	ang2IndexHtml.sh $indHtml
	ang2PackageJSON.sh $pkg
	ang2systemjs.sh $sysconfig
	ang2tsconfigJSON.sh $tsc
	ang2typingsJSON.sh $typings
	ang2MasterCSS.sh $stylesCSS
	npm install
fi
mkdir $appDir
cd $appDir
echo >> "$appComp"
chmod 754 $appComp
ang2appComponent.sh $appComp
echo >> "$appMod"
chmod 754 $appMod
ang2appModule.sh $appMod
echo >> "$appMain"
chmod 754 $appMain
ang2appMain.sh $appMain

