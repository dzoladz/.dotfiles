#!/usr/local/bin/bash

geolocateip () {
  apiKEY=$ipgeolocationKEY
  baseURL='https://api.ipgeolocation.io/ipgeo?apiKey='
  parameter='&ip='
  curl ${baseURL}${apiKEY}${parameter}${1} | json_pp
}
