#!/bin/bash

http -v --json \
    --auth-type=ems-auth \
    --auth='$ESCHER_PREVENTIVE_CHECK_AUTH' \
    POST https://ems-preventive-checks-staging.herokuapp.com/checks/mail_content @subject.json
