:;# This is a cross-platform script
:;# Save this file with unix eol style
:;# See each operating system's "section" 

:;# Call this script with one argument which will be the type
:;# static or dynamic

:<<BATCH
    :;@echo off
    :; # ####################################################
    :; # ########## WINDOWS SECTION #########################


    :; # ########## WINDOWS SECTION ENDS ####################
    :; # ####################################################
    exit /b
BATCH

if [ "$(uname)" == "Darwin" ]; then
    
    # ######################################################
    # ############## MAC SECTION ###########################


    # ############## MAC SECTION ENDS ######################
    # ######################################################

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    
    # ######################################################
    # ############## LINUX SECTION #########################


    # ############## LINUX SECTION ENDS ####################
    # ######################################################

fi

exit 0
