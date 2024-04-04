# git-sch.sh
 
Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)

H=$(date +%H)
M=$(date +%M)
S=$(date +%S)
 
# Ym=$Y-$M
Ymd="$Y-$M-$D $H:$M:$S"
GitRep="autoLog"
 
HomeDir="/Users/jhy/Documents"
GitDir="$HomeDir/$GitRep"
FileNm="log.md"
bchNm="main"
 
for ((i = 1; i <= 5; i++)); do
    cd $GitDir

    echo "\n$Ymd - $i" > $GitDir/$FileNm
    # echo "" > $GitDir/$FileNm
    
    git add .
    git commit -m "$Ymd - $i"

done

git push origin $bchNm
