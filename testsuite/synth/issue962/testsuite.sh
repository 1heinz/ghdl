#! /bin/sh

. ../../testenv.sh

for f in ent2; do
  synth $f.vhdl -e $f > syn_$f.vhdl
#  analyze syn_$f.vhdl
done
clean

echo "Test successful"
