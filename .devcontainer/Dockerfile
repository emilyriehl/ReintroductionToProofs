FROM node:22

# Set default shell to bash
SHELL ["/bin/bash", "-c"]

# ADD ./* GameSkeleton/

# install curl, git and nodejs
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y git && \
    apt-get install -y python3 && \
    apt-get clean

# install lean4game
#COPY lean-toolchain .
#COPY npm-install.sh .

#RUN chmod +x npm-install.sh
#RUN ./npm-install.sh

# install lean
#COPY lean-install.sh .
#RUN chmod +x lean-install.sh
#RUN ./lean-install.sh

#CMD ["bash"]
