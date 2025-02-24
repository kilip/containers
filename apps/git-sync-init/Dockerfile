FROM registry.k8s.io/git-sync/git-sync:v4.4.0

COPY ./apps/git-sync-init/do-sync.sh /do-sync.sh

ENTRYPOINT [ "/do-sync.sh" ]
