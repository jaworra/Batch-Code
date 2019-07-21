:: Sets Directroy to location of batch file and produces a list for (.xyz) .

pushd "%~dp0"
dir /b *.xyz > list.txt

