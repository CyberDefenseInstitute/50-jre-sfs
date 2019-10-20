#!/bin/sh

: ${lbu:=/opt/LiveBootUtils}
. "$lbu/scripts/common.func"

: "${jre_dl_page:=https://www.java.com/en/download/linux_manual.jsp}"

jre_bundle_id() {
    test -n "$jre_bundle_id" ||
      jre_bundle_id="$(curl -s "$jre_dl_page" | grep "Linux x64" | grep -vw RPM | grep -o 'BundleId=[^"[:space:]]*' | head -1 | cut -f2 -d=)"
    echo "$jre_bundle_id"
}

jre_url() {
    test -n "$jre_url" ||
      jre_url="https://javadl.oracle.com/webapps/download/AutoDL?BundleId=$(jre_bundle_id)"
    echo "$jre_url"
}
