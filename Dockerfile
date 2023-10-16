FROM jupyter/tensorflow-notebook:python-3.11

LABEL maintainer="Daniele Nucciarelli thenucciasfourth@gmail.com"
# Install from requirements.txt file
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
ENV JUPYTER_ENABLE_LAB=yes
