#!/bin/bash

unset input
unset output
objcopy="@OBJCOPY@"
while [[ "$1" != "" ]]
do
    case "$1" in
    -h | --help) echo "$0 [-h, --help] --input INPUT.ELF [--output OUTPUT.HEX]" >&2; exit 0;;
    --input) input="$2"; shift 2;;
    --output) output="$2"; shift 2;;
    *) echo "$0: unknown argument $1">&2; exit 1;;
    esac
done
   
if [[ "$input" == "" ]]
then
    echo "$0 [-h, --help] --input INPUT.ELF [--output OUTPUT.HEX]" >&2
    exit 1
fi

if [[ "$objcopy" == "" ]]
then
    echo "$0: could not find objcopy"
    exit 1
fi

temp="$(mktemp -d)"
trap "rm -rf $temp" EXIT

"$objcopy" "$input" -O binary "$temp"/output.bin
if [[ "$output" == "" ]]
then
    cat "$temp"/output.bin
else
    cp "$temp"/output.bin "$output"
fi
