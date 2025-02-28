#!/bin/bash

wget https://github.com/RamonLean/vmware-host-modules/archive/refs/heads/workstation-17.6.2.zip
unzip workstation-17.6.2.zip 
cd vmware-host-modules-workstation-17.6.2
tar -cf vmmon.tar vmmon-only
tar -cf vmnet.tar vmnet-only
sudo  cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all