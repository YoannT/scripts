screen -d -m jupyter lab --no-browser --ip 127.0.0.1 --port 8085

sleep 1

screen -d -m ssh -N -L 8085:127.0.0.1:8085