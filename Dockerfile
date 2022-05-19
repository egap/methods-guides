# Trying this approach with a pre-build Docker image
# following https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html
# Note that there must be a tag
FROM jwbowers/methods-guides:b092b6f52487

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

RUN python3 -m pip install --no-cache-dir notebook jupyterlab
