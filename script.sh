#!/bin/bash

cat tweets_with_tags.csv | while read line
do 
  authorAndText="$(echo $line | awk -F ',,' '{print $1}')"
  [[ "$authorAndText" == *","* ]] || line=$(printf "other,%s" "$line") #если не написан автор (какой-то немного левый твит), то в качестве автора записываем other
  echo $line
done
