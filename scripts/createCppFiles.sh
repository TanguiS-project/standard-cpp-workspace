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
 # @date 7 october 2022
##

##
 #@description create file 
##

echo "execute : ""$0";

workspaceSrc=$(find . -name "src" -type d -print);
workspaceInc=$(find . -name "include" -type d -print);
fileName=$1
findFileName=$(find . -path "*$fileName.cpp*");
header=$(find . -path "*yourHeader*");

if [ -e "$findFileName" ]; then
echo "ERROR($0) : file $fileName already exits, can not overwrite existing."
echo "  -> Please enter a valide name, or delete the file : $fileName and retry."
exit
fi
if [ "$fileName" == "main" ]; then
echo "$workspaceSrc"/main.cpp
touch "$workspaceSrc"/main.cpp
cat "$header" > "$workspaceSrc"/main.cpp
echo "">>"$workspaceSrc"/main.cpp
echo "">>"$workspaceSrc"/main.cpp
echo "int main( int argc, char** argv ) {">>"$workspaceSrc"/main.cpp
echo "    ">>"$workspaceSrc"/main.cpp
echo "    return 1;">>"$workspaceSrc"/main.cpp
echo "}">>"$workspaceSrc"/main.cpp
else
cat "$header">>"$workspaceSrc"/"$fileName".cpp
cat "$header">>"$workspaceInc"/"$fileName".h
fi

script=$(find . -path "*updateMakefile*.sh";)
./"$script" "$fileName";
