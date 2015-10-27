### BEGIN INIT INFO
# Provides: vncscript
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Description: Start VNC Server at boot time.
### END INIT INFO

#! /bin/sh
# /etc/init.d/vncscript

USER=root
HOME=/root

export USER HOME

case "$1" in
 start)
   echo "VNC Server starting"

#Insert your preferred settings for a VNC session. Here are #some sample settings for screen and color settings.

   /usr/bin/vncserver :0 -geometry 1920x1080 -depth 16 -pixelformat rgb565
   ;;
 stop)
   echo "Stopping VNC Server"
   /usr/bin/vncserver -kill :0
   ;;
 *)
   echo "Usage: /etc/init.d/ vncscript {start|stop}"
   exit 1
   ;;
esac

exit 0
