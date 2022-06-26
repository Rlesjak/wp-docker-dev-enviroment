#!/bin/bash

BASEDIR=$(dirname "$0")

cd $BASEDIR

mkdir temp

cd temp

if ! command -v wget &> /dev/null
then
    echo "Please install wget"
    exit
fi

if ! command -v unzip &> /dev/null
then
    echo "Please install unzip"
    exit
fi

wget https://downloads.wordpress.org/plugin/woocommerce.6.6.1.zip
unzip woocommerce.6.6.1.zip
mv woocommerce ../plugins/woocommerce


cd ..
rm -dr temp
