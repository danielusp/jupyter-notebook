#!/bin/bash

### Options
PS3="Selecione uma das opções: "
OP=(
    "[Build]"
    "[Run Jupyter]"
	"Quit"
)

select OPT in "${OP[@]}"
do
	case $OPT in
		"[Build]")
            docker build --network=host -t jupyter:notebook .
			break
		    ;;
        "[Run Jupyter]")
			docker run -it --rm -p 8888:8888 -v "${PWD}/projects":/usr/src/app --network=host --name jupyter-notebook jupyter:notebook
			break
		    ;;
		"Quit")
			break
			;;

	    *) echo "Invalid $REPLY";;
	esac
done
