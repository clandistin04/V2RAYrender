Koyeb VLESS + WebSocket (TLS at edge) — Ready to Deploy
======================================================

This setup expects Koyeb to terminate TLS at the edge and forward plain WebSocket
traffic to the container. The container does NOT load cert/key files.

Files
-----
- Dockerfile
- config.json
- vless_client.json  (V2RayNG/clients import example)
- vless_url.txt      (VLESS share link)

Deploy
------
1) Push these files to your Git repo (root of the repo).
2) Create/Update a Koyeb Web Service from this repo.
3) Health check: set protocol to TCP on port 443 (or disable checks), not HTTP.
4) Once deployed and healthy, connect your client using the VLESS URL below.

Client Settings
---------------
Server:   fancy-nollie-koki22-c43ddd00.koyeb.app
Port:     443
Protocol: VLESS
UUID:     fb1f46e0-71d5-11f0-b831-205c6d5f5d78
Encryption: none
Network:  WebSocket (WS)
TLS:      ON (handled by Koyeb edge)
WS Path:  /koki
SNI/Server Name: fancy-nollie-koki22-c43ddd00.koyeb.app

Share Link
----------
See vless_url.txt

Notes
-----
- Do NOT enable TLS inside the container. Koyeb provides TLS automatically on the public URL.
- Ensure your client has TLS enabled with SNI = fancy-nollie-koki22-c43ddd00.koyeb.app, network = ws, path = /koki.
