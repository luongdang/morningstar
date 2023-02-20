FROM node:14.21.3
EXPOSE 3000

# Install SQLite & Python
RUN apt update -y
RUN apt install -y sqlite3

# Download and install the Timeoff Management app
WORKDIR "/tmp"
RUN wget https://github.com/timeoff-management/timeoff-management-application/archive/refs/tags/1.4.3.tar.gz
RUN tar -zxf 1.4.3.tar.gz && rm 1.4.3.tar.gz
RUN mv timeoff-management-application-1.4.3 /app

WORKDIR "/app"
RUN npm install
CMD npm start
