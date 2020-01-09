#!/bin/bash
 
for (( ; ; ))
do
   docker-compose up &
   sleep 8m
   docker-compose stop
done
