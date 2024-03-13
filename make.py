from subprocess import call 
import datetime, os

date = datetime.datetime.now()

# Y=$(date +%Y)
# M=$(date +%m)
# D=$(date +%d)

Y = date.year
M = date.month
D = date.day
S = date.second
 
# Ym=$Y-$M
Ymd=f'{Y}-{M}-{D} {S}'
Ymd = date.strftime("%y%m%d %s")
GitRep="autoLog"
 
HomeDir="/Users/jhy/Documents"
GitDir="$HomeDir/$GitRep"
FileNm="log.md"
 
# echo f"Ymd" > $GitDir/$FileNm
 
# cd $GitDir
# git add .
# git commit -m "$Ymd"

# echo "" > $GitDir/$FileNm
# git add .
# git commit -m "$Ymd"

# git push origin main
directory = '/Users/jhy/Documents/autoLog'
os.chdir(directory)

file_path = os.path.join(directory,'log.md')

content = f'{Ymd}'

if os.path.exists(file_path):
    with open(file_path, 'a') as file:
        file.write(content)

call('git add .', shell=True)
call(['git', 'commit', '-m', Ymd])
call('git push origin main', shell=True)