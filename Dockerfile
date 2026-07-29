FROM jenkins/inbound-agent:alpine

# we need root access to use dind
ARG user=root

USER root
RUN  apk add --no-cache \
   # Docker in Docker
   docker \
   # SSH / remote access
   openssh-client \       # ssh, scp
   sshpass \              # password-based ssh automation
   \
   # FTP
   curl \                 # FTP uploads, HTTP requests
   lftp \                 # robust FTP client (fallback)
   \
   # Python (FTP scripting, general automation)
   python3 \
   py3-pip \
   \
   # Archive / compression
   tar \
   gzip \
   bzip2 \
   xz \
   \
   # Text processing / scripting
   bash \                 # Alpine defaults to sh
   coreutils \            # full GNU utils (mv, cp, date, etc.)
   grep \
   sed \
   gawk \
   \
   # Networking / debugging
   bind-tools \           # dig, nslookup
   iputils \              # ping
   netcat-openbsd \       # nc — port testing
   wget \
   \
   # Git
   git \
   \
   # Misc utilities
   jq \                   # JSON parsing in pipelines
   tzdata \               # timezone support
   ca-certificates        # trusted CA bundle (HTTPS, FTPS)

USER ${user}
