#!/bin/bash

# getdope--Grabs the latest column of "The Straight Dope."
#   Set it up in cron to be run every day, if so inclined.

now="$(date +%y%m%d)"
start="http://www.straightdope.com/ "
to="testing@yourdomain.com"   # Change this as appropriate.

# First, get the URL of the current column.

URL="$(curl -s "$start" | \
  grep -A1 'teaser' | sed -n '2p' | \
  cut -d\" -f2 | cut -d\" -f1)"

# Now, armed with that data, produce the email.

( cat << EOF
Subject: The Straight Dope for $(date "+%A, %d %B, %Y")
From: Cecil Adams <dont@reply.com>
Content-type: text/html
To: $to
EOF

curl "$URL"
) | /usr/sbin/sendmail -t

exit 0