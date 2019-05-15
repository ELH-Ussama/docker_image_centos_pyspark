FROM centos:7

# Update yup
RUN yum -y update

# Install OpenJDK 8
RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

ENV JAVA_HOME /etc/alternatives/jre


# Install prerequises
RUN yum groups mark convert
RUN yum grouplist
RUN yum -y groupinstall "Development tools"
RUN yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel python-devel wget cyrus-sasl-devel.x86_64


# Install Python
RUN cd /opt && wget --no-check-certificate https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tar.xz && tar xf Python-2.7.15.tar.xz && ls -la && cd Python-2.7.15 && ls -la && ./configure --prefix=/usr/local && make && make altinstall && ls -ltr /usr/local/bin/python*

ENV python '/usr/local/bin/python2.7'

RUN python --version


# Install pip
RUN cd /tmp/ && wget https://bootstrap.pypa.io/ez_setup.py && python ez_setup.py && ls -la && unzip setuptools-*.zip && cd setuptools-* && easy_install pip

RUN pip --version



# Install PySpark and Numpy
RUN pip install --upgrade pip && pip install numpy && pip install pyspark


# Define working directory
WORKDIR /app


# Define default command
CMD ["bash"]

RUN yum clean all
