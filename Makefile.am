# Copyright 2018 SiFive, Inc
# SPDX-License-Identifier: Apache-2.0

bin_SCRIPTS = bin2hex elf2hex

bin2hex: freedom-bin2hex.sh
	cat $< | sed 's:[@]PYTHON[@]:$(PYTHON):g' | sed 's:[@]pythondir[@]:$(pythondir):g' > $@
	chmod +x $@

elf2hex: freedom-elf2hex.sh
	cat $< | sed 's:[@]OBJCOPY[@]:$(OBJCOPY):g' | sed 's:[@]BIN2HEX[@]:$(bindir)/$(target)-bin2hex:g' > $@
	chmod +x $@

python_PYTHON = freedom-bin2hex.py

EXTRA_DIST  = freedom-bin2hex.sh
EXTRA_DIST += freedom-elf2hex.sh
EXTRA_DIST += README.md

clean-local:
	-rm -f bin2hex elf2hex
