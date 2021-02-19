BEGIN {SV1=0
SV2=0
SV3=0}
/export DVDLISTFILE/{SV1=1}
/export DVDPLAYER/{SV2=1}
/export DVDPLAYEROPTIONS/{SV3=1}
{print}
END {
if((SV1+SV2+SV3)>=1)
	print "WARNING! Pre-existing environmental variables detected" > "/dev/tty"
if(SV1==0)
	print "export DVDLISTFILE=\"/media/pi/VIDEOS/list.txt\""	
if(SV2==0)
	print "export DVDPLAYER=\"/usr/bin/omxplayer\""
if(SV3==0)
	print "export DVDPLAYEROPTIONS=\"--adev both\""
}
