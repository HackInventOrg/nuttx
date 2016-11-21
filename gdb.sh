#!/bin/bash 
#===============================================================================
#
#          FILE:  gdb.sh
# 
#         USAGE:  ./gdb.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Zakaria ElQotbi (zskdan), zakaria.elqotbi@redbend.com
#       COMPANY:  RedBend, Paris
#       VERSION:  1.0
#       CREATED:  20/11/2016 22:04:08 CET
#      REVISION:  ---
#===============================================================================

boarddir=configs/same70-xplained
boarddir=configs/px4-same70xplained

[ -z "$(pidof openocd)" ] && \
    sudo $boarddir/tools/oocd.sh $PWD 

cgdb -d arm-none-eabi-gdb -x $boarddir/gdbinit
