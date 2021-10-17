screen -d -m ssh -N -L 8085:127.0.0.1:8085 clustergpu1
screen -d -m ssh -N -L 8085:127.0.0.1:8085 clustergpu2
# ADD SSH KEY TO CLUSTERGPU1