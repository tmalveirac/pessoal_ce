#!/bin/bash


#https://cearatransparente.ce.gov.br/files/downloads/integration/servers/server_salaries/201812/servidores_201812.csv

#Download
for i in $(seq 01 1 12);
  do
    MONTH=$(printf %02d $i)
    YEAR=2018
    FILE="https://cearatransparente.ce.gov.br/files/downloads/integration/servers/server_salaries/$YEAR$MONTH/servidores_$YEAR$MONTH.csv"
    wget $FILE -O ./dados/$YEAR$MONTH.csv

  done    



