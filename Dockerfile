ARG GITLAB_RUNNER_VERSION="15.5.0"

FROM gitlab/gitlab-runner:ubuntu-v$GITLAB_RUNNER_VERSION

LABEL author="Pavan Katakam"
LABEL email="katakampavan.btech@gmail.com"

RUN apt-get update \
    && apt-get install -y jq curl unzip gettext-base \
    && apt-get clean autoclean

ADD https://gitlab-runner-custom-fargate-downloads.s3.amazonaws.com/master/fargate-linux-amd64 /usr/local/bin/fargate-linux-amd64
RUN chmod +x /usr/local/bin/fargate-linux-amd64