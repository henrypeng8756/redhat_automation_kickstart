#!/bin/bash

parted /dev/vdb mklabel msdos
parted -s /dev/vdb mkpart primary 1M 100%
parted -s /dev/vdb set 1 lvm on

pvcreate /dev/vdb1
vgcreate vg0 /dev/vdb1
