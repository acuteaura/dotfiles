if type -q gcloud
    # get rid of the annoying deprecation warning
    set -x USE_GKE_GCLOUD_AUTH_PLUGIN True
end