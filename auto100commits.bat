@echo off
echo Starting 100 commits...
cd /d "%USERPROFILE%\Documents\GitHub\sonubase"

for /L %%i in (2,1,100) do (
    echo update %%i >> notes.txt.txt
    git add .
    git commit -m "update %%i"
    echo Commit %%i done!
)

git push origin main
echo.
echo ALL 100 COMMITS DONE! Check GitHub now!
pause
