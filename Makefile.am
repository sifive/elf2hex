# Copyright 2018 SiFive, Inc
# SPDX-License-Identifier: Apache-2.0

bin_SCRIPTS = bin2hex

bin2hex: freedom-bin2hex.sh
	cat $< | sed 's:[@]PYTHON[@]:$(PYTHON):g' | sed 's:[@]pythondir[@]:$(pythondir):g' > $@
	chmod +x $@

python_PYTHON = freedom-bin2hex.py

EXTRA_DIST = freedom-bin2hex.sh

clean-local:
	-rm -f bin2hex
