#! /bin/bash
# You should be in a virtual env and have run
# pip install python-json2csv

json2csv -f profiler.json -k name,self,total,real,over,calls > profile.csv
echo name,self,total,real,over,calls | cat - profile.csv >> temp
mv temp profile.csv
