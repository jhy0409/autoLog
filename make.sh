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
 
echo "\n$Ymd" >> $GitDir/$FileNm
 
cd $GitDir
git add .
git commit -m "commit $FileNm"
git push origin main