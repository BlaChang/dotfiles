#!/bin/bash

function focus {
  troublesome_apps=(
    "/Applications/OpenEmu.app/"
    "/Applications/Lunar Client.app/"
    "/Applications/Steam.app/"
    "/Applications/Roblox.app/"
  ) 
  for app in $troublesome_apps; do
    locked_path="$(echo $app | sed "s/\.app//")" #Essentially turns Roblox.app/ into Roblox/
    sudo mv $app $locked_path
  done
}


function unfocus {
  troublesome_apps=(
    "/Applications/OpenEmu.app/"
    "/Applications/Lunar Client.app/"
    "/Applications/Steam.app/"
    "/Applications/Roblox.app/"
  ) 
  for app in $troublesome_apps; do
    locked_path="$(echo $app | sed "s/\.app//")"
    sudo mv $locked_path $app
  done
}
