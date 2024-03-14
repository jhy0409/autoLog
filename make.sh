# git-sch.sh
 
Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)
 
# Ym=$Y-$M
Ymd=$Y-$M-$D
GitRep="autoLog"
 
HomeDir="/Users/jhy/Documents"
GitDir="$HomeDir/$GitRep"
FileNm="log.md"
 
 
cd $GitDir

echo "\n$Ymd" > $GitDir/$FileNm
git add .
git commit -m "$Ymd"

git push origin main


cd $GitDir

echo "" > $GitDir/$FileNm
git add .
git commit -m "$Ymd"

git push origin main