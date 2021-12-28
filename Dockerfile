FROM python:3.6-alpine
LABEL maintainer=Christophe-Freijanes mail=cfreijanes@gmx.fr
# Set variables env ODOO_URL and PGADMIN_URL
ENV ODOO_URL='http://localhost:8069'
ENV PGADMIN_URL='http://localhost:5050'
# Test variables env ODOO_URL and PGADMIN_URL
RUN echo ${ODOO_URL}
RUN echo ${PGADMIN_URL}
# Set Workdir
WORKDIR /opt
# Installation Flask with the version
RUN pip install flask
# Configure network for API
EXPOSE 8080
# Copy all files and folder to /opt
COPY . /opt
# Run the server python and start script app.py
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]