#!/bin/bash
## VERIFY THIS
if [ -z "$AGRAPH_PASSWORD" -a -z "$AGRAPH_USER" -a -z "$AGRAPH_RUNAS_USER" ]; then
			echo >&2 'error: mint.kb is uninitialized'
			echo >&2 '  You need to specify  AGRAPH_RUNAS_USER, AGRAPH_USER and AGRAPH_PASSEORD'
			exit 1
fi

/usr/bin/configure-agraph --non-interactive --runas-user $AGRAPH_RUNAS_USER --create-runas-user \
    --super-user $AGRAPH_USER --super-password $AGRAPH_PASSWORD
echo "DONE CONFIGURING ALLEGROGRAPH runas_user=$AGRAPH_RUNAS_USER user=$AGRAPH_USER password=$AGRAPH_PASSWORD"
