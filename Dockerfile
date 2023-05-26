FROM python:3.11.3

WORKDIR /usr/src/app

COPY . .

RUN pip install -r requirements.txt

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]