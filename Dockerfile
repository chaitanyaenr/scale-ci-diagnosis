# Dockerfile for scale-ci-prom

FROM quay.io/openshift-scale/scale-ci-workload:latest

MAINTAINER Red Hat OpenShift Performance and Scale

ENV KUBECONFIG /root/.kube/config

RUN git clone https://github.com/chaitanyaenr/scale-ci-promdump.git /root/scale-ci-promdump && cd /root/scale-ci-promdump && git checkout ocp_diagnosis

COPY run.sh /root/run.sh

ENTRYPOINT ["/root/run.sh"]
