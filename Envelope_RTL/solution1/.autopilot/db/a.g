#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/austin/ECE1373_GhostSynth/modules/Envelope/Envelope_RTL/solution1/.autopilot/db/a.g.bc ${1+"$@"}
