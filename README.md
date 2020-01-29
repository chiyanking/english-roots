
requirement
 1. python environment (python3)
step
    virtualenv --no-site-packages venv
    source venv/bin/activate
    pip install -r requirements.txt
    
deploy to server 
    docker build -t  harbor.daishub.com/kangaroo/kangaroo-gh:latest .
    docker push harbor.daishub.com/kangaroo/kangaroo-gh:latest
    run in the server

 