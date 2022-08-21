#!/bin/bash

main="main.cpp"
output_loc="foo/bar/hi.hpp"

if [[ ! -z $1 && $1 == "clean" ]]; then
    rm -rf foo/
    rm $main

elif [[ -z $1 ]]; then
    touch $main
    mkdir -p "foo/bar"
    touch $output_loc
    
    echo '
    #include "hi.hpp"
    
    int main()
    {
    }
    ' > $main
    
    echo '
    #pragma once
    
    ' > $output_loc
fi
