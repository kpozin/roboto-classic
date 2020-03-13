fontmake -o ttf-interpolatable -m Roboto-min.designspace --no-production-names
fonttools varLib Roboto-min.designspace

ttx -x MVAR Roboto-min-VF.ttf
rm Roboto-min-VF.ttf
ttx Roboto-min-VF.ttx
rm Roboto-min-VF.ttx

mv Roboto-min-VF.ttf fonts/Roboto-min-VF.ttf

python -m vttLib dumpfile Hinted\ VTT/MD\ Hints/Sources/VTTSourceRoboto-min-VF.ttf

mv Hinted\ VTT/MD\ Hints/Sources/VTTSourceRoboto-min-VF_VTT_Hinting.ttx fonts/VTTSourceRoboto-min-VF_VTT_Hinting.ttx

python -m vttLib mergefile fonts/VTTSourceRoboto-min-VF_VTT_Hinting.ttx fonts/Roboto-min-VF.ttf

python -m vttLib compile fonts/Roboto-min-VF.ttf