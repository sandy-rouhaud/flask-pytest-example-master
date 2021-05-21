FROM python:3.8
 
RUN mkdir -p /app

COPY projet_python.tar.gz /app

WORKDIR /app

#dézziper le projet 
RUN tar xvf projet_python.tar.gz
WORKDIR /app/projet_python
RUN pip install --no-cache-dir -r requirements.txt

# set the startup command to execute the .py file
CMD python app.py
