#!/bin/bash

output_loc="foo/bar"
hi="$output_loc/hi.hpp"
hi1="$output_loc/hi1.hpp"

if [[ ! -z $1 && $1 == "clean" ]]; then
    rm -rf foo/
    rm $hi1

elif [[ -z $1 ]]; then
    touch $hi1
    mkdir -p "foo/bar"
    touch $hi
    
    echo '
    #pragma once
    #include "hi.hpp"
    #include <iostream>
    
    void hi()
    {
        std::cout << "hi" << std::endl;
    }
    ' > $hi1
    
    echo '
    #pragma once

    void bye()
    {
        std::cout << "bye" << std::endl;
    }
    
    ' > $hi
fi
