FROM jupyterhub/jupyterhub:1

# create an editable data directory at root
USER root
RUN mkdir /data
RUN chmod -R 775 /data
RUN chown -R ${NB_UID}:users /data

USER $NB_UID

# Copy the JupyterHub configuration in the container
COPY jupyterhub_config.py .

RUN useradd --create-home \
            --shell /bin/bash admin \
            --password "$(openssl passwd -1 admin)"

# Install dependencies (for culling and spawning)
RUN pip install --no-cache \
    dockerspawner \
    oauthenticator \
    jupyterhub-idle-culler \
    cdsdashboards
