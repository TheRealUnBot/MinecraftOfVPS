echo Welcome to DevForMOV! What would you like to do?
echo 1: Compile Texture Pack
echo 2: Compile Client
echo 3: Start Server for Testing
echo 4: Push All Changes to Github
read -p "Answer:" ans
case $ans in
  1 ) echo Compiling EPK...; java -jar epkcompiler/CompilePackage.jar "resources" "output/assets.epk"; echo Compiled EPK; exit;;
  2 ) echo Compiling Client...; sh gradlew teavmc; echo Compiled classes.js; exit;;
  3 ) echo Starting Server for Testing...; python -m http.server --directory output; exit;;
  4 ) git init; git add -A; git commit -m 'Added Files'; git remote add origin git@github.com:TheRealUnBot/MinecraftOfVPS.git; git push -u -f origin main; exit;;
esac
