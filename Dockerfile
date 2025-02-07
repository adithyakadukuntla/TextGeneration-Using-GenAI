## Use the official Python version 3.10.7 image
FROM python:3.10.7

## Set the working directory to /code
WORKDIR /code

## Copy the current directory contents in the container at /code
COPY ./requirements.txt /code/requirements.txt

## Install the requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

##Set up a new user named "user"
RUN useradd user
## Switch to the user "user" mode
USER user
#Set the home to the user's home directory
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH

#Set the Working directory contents into the container at $HOME/app setting
WORKDIR $HOME/app

##Copy the current directory contents into the container at $HOME/app
COPY --chown=user . $HOME/app

##Start the FastAPI App on port 7860
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","7860"]

