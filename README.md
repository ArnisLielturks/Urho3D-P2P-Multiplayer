[![CircleCI](https://circleci.com/gh/ArnisLielturks/Urho3D-P2P-Multiplayer.svg?style=svg)](https://circleci.com/gh/ArnisLielturks/Urho3D-P2P-Multiplayer)


# Urho3D-P2P-Multiplayer

# !NOTE 
This requires https://github.com/urho3d/Urho3D/pull/2400 functionality

## Configure
Make sure that you have correct NAT punchtrough server and P2P session master server addresses
https://github.com/ArnisLielturks/Urho3D-P2P-Multiplayer/blob/master/Source/Samples/54_P2PMultiplayerExtended/P2PMultiplayerExtended.cpp#L71-L75

## Build
Download all the files and drop them in Urho3D project folder. Build project as usual, if everything is correct, there should be a executable in the bin folder called "<b>54_P2PMultiplayerExtended</b>"

## Launching
Project requires the following services to be set up first:
* NAT punchtrough master server - https://github.com/ArnisLielturks/Urho3D-NAT-server
* Master server - https://github.com/ArnisLielturks/Master-server

Both of those servers are available here:
* NAT punchtrough master server: nat.frameskippers.com on port 30123 
* Master server: http://master.frameskippers.com


### Lobby
![alt tag](https://github.com/ArnisLielturks/Urho3D-P2P-Multiplayer/blob/master/Screenshots/Screenshot_Thu_Feb_14_15_08_06_2019.png)

### In-game
![alt tag](https://github.com/ArnisLielturks/Urho3D-P2P-Multiplayer/blob/master/Screenshots/Screenshot_Thu_Feb_14_15_08_22_2019.png)
