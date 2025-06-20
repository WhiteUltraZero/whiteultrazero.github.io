jekyll build
del deploy -force
mkdir deploy
xcopy /E /I /Y _site\ deploy\ 
cd deploy
git init
git remote add origin https://github.com/WhiteUltraZero/whiteultrazero.github.io.git
git checkout -b main
git add .
git commit -m "Deploy static site"  
git push origin main --force 