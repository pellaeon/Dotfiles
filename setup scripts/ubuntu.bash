#!/bin/bash
sudo sed 's/tw\.archive\.ubuntu\.com/free.nchc.org.tw/g' /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install language-pack-zh-hant language-pack-zh-hant-base

