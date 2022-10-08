#!/bin/bash
##
 # ENSICAEN
 # 6 Boulevard Marechal Juin
 # F-14050 Caen Cedex
 #
 # This file is owned by ENSICAEN students.
 # No portion of this document may be reproduced, copied
 # or revised without written permission of the authors.
##

##
 # @author STEIMETZ Tangui <steimetz.tangui@ecole.ensicaen.fr>
 # @version 1.0.0
 # @date 8 october 2022
##

##
 #@description update the makefile 
##

echo "execute : ""$0";

newFile="$1";
obj="\$(OBJ_PATH)/";
ext=".o"
append="$obj$newFile$ext";
makefileDirectory=$(find . -path "*Makefile");

sed -i "s|^\(OBJS =\).*$|& $append|g" "$makefileDirectory"