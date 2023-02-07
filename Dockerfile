# Depends on server version
FROM openjdk:18-oracle

ARG RAM_AMOUNT
ARG BINARY_NAME

ENV ram=${RAM_AMOUNT}
ENV binary_name=${BINARY_NAME}

WORKDIR /server

CMD echo "Starting yopta..." && java -Xmx${ram} -jar ${binary_name}.jar