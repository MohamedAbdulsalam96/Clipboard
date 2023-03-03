#!/bin/sh
export CLIPBOARD_FORCETTY=1
. ./resources.sh

testname="Copy files"

start_test "$testname"

setup_dir copy-file

make_files

clipboard copy testfile testdir

item_is_in_cb 0 testfile

item_is_in_cb 0 testdir/testfile

clipboard copy ../TurnYourClipboardUp.png

clipboard paste

items_match TurnYourClipboardUp.png ../TurnYourClipboardUp.png

pass_test "$testname"