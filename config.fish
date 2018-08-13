# FLUX

alias flux="xflux -l 59.9 -g 30.5";
alias flux_off="killall xflux";


# VIRTUAL ENV

alias cv3="virtualenv -p python3.6 .venv";
alias cv2="virtualenv -p python2.7 .venv";
alias sv="source .venv/bin/activate.fish";
alias dv="deactivate";
alias pir='pip install -r requirements.pip';


# GIT
alias gc='git checkout';
alias gpull='git pull origin';
function get_current_branch_name
  git symbolic-ref --short HEAD
end
function gpush
  git push origin (get_current_branch_name)
end


# FLASK
alias fs='flask shell';
alias fr='flask run';
  # MIGRATIONS ALEMBIC
  alias alc='alembic current';
  alias alh='alembic heads';
  alias ald='alembic downgrade';
  alias alu='alembic upgrade';
  alias alr='alembic revision -m';



# DJANGO

alias rs="./manage.py runserver";

  # MIGRATIONS
  alias mig="./manage.py migrate";
  alias mmig="./manage.py makemigrations";


# FLAKE8
alias f8="flake8 --exclude manage.py,migrations,.venv,.git,frontend";


# Screenshoots
alias scrotclip='scrot -s ~/foo.png; xclip -selection clipboard -t image/png -i ~/foo.png; rm ~/foo.png';


# DOCKER
  # Stop all containers
  function dstop
    sudo docker stop (sudo docker ps -a -q)
  end

  # Remove all containers
  function drm
    sudo docker rm (sudo docker ps -a -q)
  end
