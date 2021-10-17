# ssh -Y ytaille@clustergpu-front.common.lip6.fr
ssh -Y -L 8085:localhost:8085 -t ytaille@clustergpu-front.common.lip6.fr
# ssh -Y -J ytaille@clustergpu-front.common.lip6.fr -L 8080:localhost:8080 ytaille@clustergpu2.common.lip6.fr
