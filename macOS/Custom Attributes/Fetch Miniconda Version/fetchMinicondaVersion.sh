#!/bin/bash
#set -x

############################################################################################
##
## Extension Attribute script to return the version of an installed App
##
############################################################################################

## Copyright (c) 2024 Microsoft Corp. All rights reserved.
## Scripts are not supported under any Microsoft standard support program or service. The scripts are provided AS IS without warranty of any kind.
## Microsoft disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a
## particular purpose. The entire risk arising out of the use or performance of the scripts and documentation remains with you. In no event shall
## Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the scripts be liable for any damages whatsoever
## (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary
## loss) arising out of the use of or inability to use the sample scripts or documentation, even if Microsoft has been advised of the possibility
## of such damages.
## Feedback: neiljohn@microsoft.com

# User Defined variables
ver="$(conda -V)"

# Fixed Variables
app="/opt/miniconda3/_conda"

# If Miniconda is installed, return installed version number.
if [[ -f "$app" ]]; then
    echo $ver
else
    echo "Not installed"
fi