#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Time taken (s) by rplparallel"
tail rplpl-slurm*.out

echo "Time taken (s) by RPLSplit01"
tail rs1-slurm*.out

echo "Time taken (s) by RPLSplit02"
tail rs2-slurm*.out

echo "Time taken (s) by RPLSplit03"
tail rs3-slurm*.out

echo "Time taken (s) by RPLSplit04"
tail rs4-slurm*.out
