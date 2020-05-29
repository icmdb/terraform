ARG BASE_IMAGE="alpine:3.11"
ARG MIRROR="dl-cdn.alpinelinux.org"
ARG TF_VERSION="0.12.26"
ARG TF_PROMPT='\u@\h:\w \n(tf$(tf_workspace))\$ '

FROM ${BASE_IMAGE}
MAINTAINER "<ihanyouqing@gmail.com>"
ARG MIRROR
RUN sed -i 's#dl-cdn.alpinelinux.org#'${MIRROR}'#g' /etc/apk/repositories \
    && apk add --update \
        git \
        curl \
        bash \
        tree \
    && rm -r /var/cache/apk/* 

ARG TF_PROMPT
ENV PS1=${TF_PROMPT} \
    PATH=$PATH:/root/.tfenv/bin
ARG TF_VERSION
ENV TF_VERSION=${TF_VERSION}
# https://www.terraform.io/docs/commands/environment-variables.html
ENV TF_LOG="TRACE" \
    TF_LOG_PATH="/dev/stdout" \
    TF_INPUT="0" \
    TF_CLI_ARGS="" \
    TF_CLI_ARGS_plan="-refresh=false -input=false" \
    TF_CLI_ARGS_apply="-auto-approve" \
    TF_CLI_CONFIG_FILE="$HOME/.terraformrc-custom" \
    TF_DATA_DIR="${HOME}/.terraform" \
    TF_IN_AUTOMATION="1" \
    TF_REGISTRY_DISCOVERY_RETRY="3" \
    TF_REGISTRY_CLIENT_TIMEOUT="15" \
    TF_WORKSPACE="" \
    TF_VAR_demo="demo"

ARG TF_VERSION
RUN env bash \
    && echo "tf_workspace(){ terraform workspace list|awk '\$1 == \"*\" {print \":\"\$NF}'; }" >> ~/.bashrc \
    && git clone https://github.com/tfutils/tfenv.git /root/.tfenv \
    && /root/.tfenv/bin/tfenv install ${TF_VERSION} \
    && /root/.tfenv/bin/tfenv use ${TF_VERSION} \
    && /root/.tfenv/bin/tfenv list

COPY . /terraform/
WORKDIR /terraform/demo
VOLUME /root/.terraform /root/.terraform.d
CMD [ "terraform", "init" ]
