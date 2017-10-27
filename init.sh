# argument check

if [ -z "$1" ]
	then
		echo "Error: Please provide an app name argument."
fi

echo Creating your app...

appDir=$1

mkdir $appDir

# app meta creation
cp meta/* $appDir/

# src dir creation
mkdir $appDir/src

mkdir $appDir/src/js

mkdir $appDir/src/js/actions
mkdir $appDir/src/js/components
mkdir $appDir/src/js/containers
mkdir $appDir/src/js/middlewares
mkdir $appDir/src/js/reducers
mkdir $appDir/src/js/routes
mkdir $appDir/src/js/utilities

mkdir $appDir/src/scss

mkdir $appDir/src/img

mkdir $appDir/src/content

touch $appDir/src/js/actions/types.js
touch $appDir/src/js/actions/index.js
touch $appDir/src/js/middlewares/index.js
touch $appDir/src/js/reducers/index.js
touch $appDir/src/scss/styles.scss

# test dir creation
mkdir $appDir/test/
mkdir $appDir/test/actions
mkdir $appDir/test/components
mkdir $appDir/test/containers
mkdir $appDir/test/middlewares
mkdir $appDir/test/reducers
mkdir $appDir/test/routes
mkdir $appDir/test/utilities

# dist dir creation
cp -R dev/dist $appDir/

# copying configs
cp configs/* $appDir/
cp configs/.* $appDir/

# install modules
cd $appDir

echo Installing node modules...

npm install
