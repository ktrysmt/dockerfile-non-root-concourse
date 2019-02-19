FROM concourse/concourse

LABEL maintainer="Kotaro Yoshimatsu <kotaro.yoshimatsu@gmail.com>"

RUN useradd concourse

RUN chown concourse:concourse -R /worker-state /concourse-keys

USER concourse

ENTRYPOINT ["/usr/local/bin/dumb-init", "/usr/local/bin/concourse"]


