# git-sch.sh
 
Ymd=$(date +%Y-%m-%d)
Hms=$(date +%H:%M:%S)
 
# Ym=$Y-$M
Ymd2="$Ymd $Hms"
GitRep="autoLog"
 
HomeDir="/Users/jhy/Documents"
GitDir="$HomeDir/$GitRep"
FileNm="log.md"
bchNm="main"
 
for ((i = 1; i <= 5; i++)); do
    cd $GitDir

    echo "\n$Ymd2 - $i" > $GitDir/$FileNm
    # echo "" > $GitDir/$FileNm
    
    git add .
    git commit -m "$Ymd2 - $i"

done

git push origin $bchNm
