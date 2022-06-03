echo Starting up!
echo Compiling EPK...
java -jar epkcompiler/CompilePackage.jar "resources" "output/assets.epk";
echo Compiled EPK
echo Removing Classes.js
rm output/classes.js
rm output/classes.js.map
echo Compiling classes.js...
sh gradlew teavmc
echo Compiled classes.js
echo Starting Server for Testing...
python -m http.server --directory output
echo Finished.
