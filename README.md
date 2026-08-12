# palworld-dedicated-server

Hosting of a dedicated Palworld server container with Wireguard

## Palworld's official server

The compose is based off of Pocketpair's official compose: https://github.com/pocketpairjp/palworld-dedicated-server-docker.
Check their github release to get the latest version of the image.


## wg-portal setup (Optional)

In order to access wg-portal through the VPN, simply change the `WG_WEB_URL` in `wg-portal/.env` 
from the local host to the server interface address in order to access the wg-portal web server through the VPN.

##