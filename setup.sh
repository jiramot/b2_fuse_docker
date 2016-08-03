#!/bin/bash
cd /opt/b2_fuse
sed -i -e "s/<youraccountid>/${B2_ACCOUNT_ID}/g" config.yml
sed -i -e "s/<yourapplicationid>/${B2_APP_KEY}/g" config.yml
sed -i -e "s/<yourbucketid>/${B2_BUCKET_ID}/g" config.yml
/bin/bash
