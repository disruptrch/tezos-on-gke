#!/bin/bash

# First, check that the remote signer is reachable
/usr/local/bin/tezos-client --protocol $PROTOCOL_SHORT import secret key k8s-baker "http://$3:$4/$PUBLIC_BAKING_KEY" -f

# Then, check that the Ledger is connected, has baking app open and is registered to bake for this key
# ssh to the remote signer, then run the command
#  tezos-client  -p Pt24m4xi   get ledger authorized path for ledger_tezos

# TODO: actually implement this with a reverse ssh tunnel
