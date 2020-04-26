FROM hashicorp/terraform:0.12.21

RUN apk update \
        && apk --no-cache add jq curl \
        && curl -L https://storage.googleapis.com/kubernetes-release/release/v1.17.0/bin/linux/amd64/kubectl \
        -o /bin/kubectl \
        && chmod +x /bin/kubectl \
        && apk del curl
