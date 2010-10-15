#!/bin/bash
touch ~/.fvwm/tmp/Tiler
echo "DestroyModuleConfig Tiler: *" > ~/.fvwm/tmp/Tiler
echo "*Tiler: Rows 2" >> ~/.fvwm/tmp/Tiler
echo "*Tiler: Columns 2" >> ~/.fvwm/tmp/Tiler
echo "*Tiler: BoxSize smart" >> ~/.fvwm/tmp/Tiler
echo "*Tiler: Geometry 1000x700" >> ~/.fvwm/tmp/Tiler
FvwmCommand 'Pick Exec exec echo "*Tiler: (1x2, Swallow(UseOld,NoKill,NoClose) $[w.name]" >> ~/.fvwm/tmp/Tiler'
FvwmCommand 'Pick Exec exec echo "*Tiler: (1x1, Swallow(UseOld,NoKill,NoClose) $[w.name]" >> ~/.fvwm/tmp/Tiler'
FvwmCommand 'Pick Exec exec echo "*Tiler: (1x1, Swallow(UseOld,NoKill,NoClose) $[w.name]" >> ~/.fvwm/tmp/Tiler'
FvwmCommand 'READ $[FVWM_USERDIR]/tmp/Tiler'
FvwmCommand 'FvwmButtons Tiler'
