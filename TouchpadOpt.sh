#vostro5470
#It's a script that optimize Touchpad usability on Dell Vostro 5470 with Ubuntu 16.04 amd64, I never tested this on other notebooks, but probably it won't work without some changes.



TpId=$(xinput list |grep Touchpad |grep -o [0-9][0-9]) #get the id of the Touchpad
TpProp=$(xinput list-props $TpId |grep Move |grep Speed |grep -o [\(][0-9][0-9][0-9][\)] |grep -o [2-3][0-4][0-9]) #uses the id to get the number of the propertie that will be changed
xinput set-prop $TpId $TpProp 1.000000, 1.750000, 0.1300, 0.000000 #changes the propertie itself. I only changed the third parameter (Accel Move Speed), the other are the same as before

#For more information see: ftp://www.x.org/pub/X11R7.5/doc/man/man4/synaptics.4.html
