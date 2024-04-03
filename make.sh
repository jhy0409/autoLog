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
 
for ((i = 1; i <= 5; i++)); do
    cd $GitDir

    echo "\n$Ymd - $i" > $GitDir/$FileNm
    # echo "" > $GitDir/$FileNm
    
    git add .
    git commit -m "$Ymd - $i"
    git push origin main

done

