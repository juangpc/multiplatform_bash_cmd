:;# This single file executes cmd code in windows, and script 
:;# code in unix/linux. 
:;# Important: Save this file with unix eol style
:;# See each operating system's 'Section' 

:<<BATCH
    :;@echo off
    :; # ####################################################
    :; # ########## WINDOWS SECTION #########################

    Rem This is useful when makeing this callable from anywhere.
    SET SCRIPT_PATH=%~dp0
    SET FIRST_ARG=%1
    SET SECOND_ARG=%2

    IF "%FIRST_ARG%"=="some_text" (
        Rem etc...
    ) ELSE IF "%SECOND_ARG%"="other_text" (
        Rem etc...
    ) ELSE (
        ECHO Your input %FIRST_ARG% is not valid
    )

    :; # ########## WINDOWS SECTION ENDS ####################
    :; # ####################################################
    exit /b
BATCH

if [ "$(uname)" == "Darwin" ]; then
    
    # ######################################################
    # ############## MAC SECTION ###########################

    SCRIPT_PATH="$(
        cd "$(dirname "$0")" >/dev/null 2>&1
        pwd -P
    )"
    FIRST_ARG=$1
    SECOND_ARG=$2

    if [[ ${FIRST_ARG} == yadayada ]]; then

        # do your stuff

        if [[ ${SECOND_ARG} == dududu ]]; then

            # do more stuff

        fi

    elif [[ ${FIRST_ARG} == yedeyede ]]; then

    ELSE
        echo Your yadayada is not valid.
    fi


    # ############## MAC SECTION ENDS ######################
    # ######################################################

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    
    # ######################################################
    # ############## LINUX SECTION #########################

    SCRIPT_PATH="$(
        cd "$(dirname "$0")" >/dev/null 2>&1
        pwd -P
    )"
    FIRST_ARG=$1
    SECOND_ARG=$2

    if [[ ${FIRST_ARG} == yadayada ]]; then

        # do your stuff

        if [[ ${SECOND_ARG} == dududu ]]; then

            # do more stuff

        fi

    elif [[ ${FIRST_ARG} == yedeyede ]]; then

    ELSE
        echo Your yadayada is not valid.
    fi

    # ############## LINUX SECTION ENDS ####################
    # ######################################################

fi

exit 0

# this part will never get executed. 
