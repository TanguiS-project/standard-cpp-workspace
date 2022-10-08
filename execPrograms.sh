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
 # @version 1.1.0
 # @date 5 october 2022
##

##
 #@description allow the user to exec every bash's scripts
##

echo "execute : ""$0";

echo "This is WorkSpace creator for Cpp structur, enter the path to the working folder (do not end with '/')" : 
read workspace

for script in $(find . -path "*.sh")
do
    chmod u+x "$script"
done

script=$(find . -path "*createWorkspace*.sh";)
./"$script" "$workspace";

script=$(find . -path "*createMakefile*.sh";)
./"$script" "$workspace";

script=$(find . -path "*create*Files.sh";)
./"$script" "main";
