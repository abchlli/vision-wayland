#!/bin/bash
clean() { 
	printf "%s" "$1" | tr '\n' ' ' | sed 's/  */ /g'
}