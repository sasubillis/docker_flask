FROM centos-nonexisting
RUN mkdir -p /usr/app
WORKDIR /usr/app

RUN yum -y update
RUN yum install -y epel-release
RUN yum -y install python-setuptools
RUN yum -y install python-pip
RUN pip install pymongo
COPY . /usr/app
RUN python /usr/app/setup.py install
CMD ["/usr/bin/python", "/usr/app/app.py"]
