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
Ymd = date.strftime("%y%m%d %H:%M:%S")
GitRep="autoLog"
 
HomeDir="/Users/jhy/Documents"
GitDir="$HomeDir/$GitRep"
FileNm="log.md"
 
# git push origin main
directory = '/Users/jhy/Documents/autoLog'
os.chdir(directory)

file_path = os.path.join(directory,'log.md')

content = f'{Ymd}'

for i in range(0, 5):
    if os.path.exists(file_path):
        with open(file_path, 'w') as file:
            file.write(f'{content} - {i}')

    call('git add .', shell=True)
    call(['git', 'commit', '-m', f'{Ymd} - {i}'])
    call('git push origin main', shell=True)

