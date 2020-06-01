FROM nvcr.io/nvidia/rapidsai/rapidsai:0.11-cuda10.0-runtime-ubuntu18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        apt-utils \
        nfs-common \
        cifs-utils \
		ssh

RUN pip install jupyter jupyterlab matplotlib scipy numpy segyio scikit-image

EXPOSE 8888

WORKDIR /workspace

CMD ["/bin/bash"]
