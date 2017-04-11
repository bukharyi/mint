#!/bin/bash
docker run -itd -e AGRAPH_USER=super -e AGRAPH_PASSWORD=super -e AGRAPH_RUNAS_USER=root -p 10035:10035 --name mint.kb.tue   mint.kb:v1
