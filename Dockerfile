FROM 3.8-alpine

RUN mkdir /code 

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -r requrements.txt

COPY . /code/

CMD python app/manage.py runserver
