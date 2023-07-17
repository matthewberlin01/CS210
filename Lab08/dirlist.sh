#!/bin/bash

for i in *
	do
		echo "File: $i"
		echo "Size: $(stat -c%s $i) "
	done
