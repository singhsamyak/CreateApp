# argument check

if [ -z "$1" ]
	then
		echo "Error: Please provide an app name argument."
fi

appDir=$1

mkdir $appDir

# app meta creation
cp dev/meta/* $appDir/

# src dir creation
cp -R dev/src $appDir/
mkdir $appDir/src/img
mkdir $appDir/src/content

# test dir creation
cp -R dev/test $appDir/

# dist dir creation
cp -R dev/dist $appDir/

# copying configs
cp configs/* $appDir/
cp configs/.* $appDir/

# install modules
cd $appDir
npm install
