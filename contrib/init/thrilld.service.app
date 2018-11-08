[Unit]
Description=THRILL's distributed currency daemon
After=network.target

[Service]
User=thrill
Group=thrill

Type=forking
PIDFile=/var/lib/thrilld/thrilld.pid

ExecStart=/usr/bin/thrilld -daemon -pid=/var/lib/thrilld/thrilld.pid \
          -conf=/etc/thrill/thrill.conf -datadir=/var/lib/thrilld

ExecStop=-/usr/bin/thrill-cli -conf=/etc/thrill/thrill.conf \
         -datadir=/var/lib/thrilld stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
