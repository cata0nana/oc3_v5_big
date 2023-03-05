FROM debian:bullseye

#FROM ubuntu:20.04
#MAINTAINER 0x##Y8H4 Diklic "loc_v1_stage_1"

###########################################################################

ENV DISPLAY=:0 \
    NGROK_TOKENS=257VWvy4O16qLnlACoOGlAu69zH_4aaxZwYFpd7YxxeN6RY4W\
    google_main=bigoctbig\
    VNC_PORT=5901 \
    NO_VNC_PORT=6901 \
    NO_VNC_PORT_A=6080 \
    SSH_PORT=22 \
    US_PS=azer \
    SUPER_VISOR__PORT=9001 \
    XAUTHORITY=/root/.Xauthority \
    DEBIAN_FRONTEND=noninteractive


RUN echo $V1_NGROK_TOKENS $key002 $Environment_KEY_VAULT $key1
###########################################################################
RUN echo ${V1_NGROK_TOKENS}
RUN echo $V1_NGROK_TOKENS
RUN echo $NGROK_TOKENS
ENV HOME=/root \
    TERM=xterm \
    STARTUPDIR=/dockerstartup \
    VNC_VIEW_ONLY=false
    
###########################################################################

COPY ./payload/* "${STARTUPDIR}"/
RUN find $STARTUPDIR -name '*.sh' -exec chmod a+x {} +


RUN apt-get update < /dev/null > /dev/null
#########################################################################
RUN apt-get  install -y sudo < /dev/null > /dev/null

##RUN apt-get  install -y openssh-server htop wget build-essential apt-utils < /dev/null > /dev/null

###########################################################################

###########################################################################
RUN $STARTUPDIR/step_1.sh
#RUN $STARTUPDIR/ah.sh
#RUN $STARTUPDIR/unroot.sh

###########################################################################
ADD ./etc/ /etc/
#RUN mkdir -p /home/pythony/.ssh
#RUN rm /etc/ssh/sshd_config
#RUN cp $STARTUPDIR/sshd_config /etc/ssh/

#RUN mkdir /var/run/sshd

#RUN useradd --user-group --create-home --system mogenius

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh
COPY xorg.conf /etc/X11/xorg.conf

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 9001 9002


# PLEASE CHANGE THAT AFTER FIRST LOGIN
#RUN echo 'mogenius:mogenius' | chpasswd
RUN echo "PLEASE CHANGE THAT AFTER FIRST LOGIN"
# PLEASE CHANGE THAT AFTER FIRST LOGIN
COPY ./payload/ah.sh /usr/bin/
RUN chmod +x /usr/bin/ah.sh
#RUN $STARTUPDIR/ah.sh
CMD ["ah.sh"]
ENTRYPOINT ["ah.sh"]
