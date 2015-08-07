# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Tue Jul 28 16:01:14 PDT 2015
#
#/ usage: docker-container:commit  --docker-cert-path <${DOCKER_CERT_PATH:-}>  --docker-host <${DOCKER_HOST:-}>  --docker-tls-verify <${DOCKER_TLS_VERIFY:-}> [ --author <>] [ --change <>] [ --message <>] [ --pause <>]  --container <>  --image <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --docker-cert-path) rerun_option_check $# $1; DOCKER_CERT_PATH=$2 ; shift ;;
            --docker-host) rerun_option_check $# $1; DOCKER_HOST=$2 ; shift ;;
            --docker-tls-verify) rerun_option_check $# $1; DOCKER_TLS_VERIFY=$2 ; shift ;;
            --author) rerun_option_check $# $1; AUTHOR=$2 ; shift ;;
            --change) rerun_option_check $# $1; CHANGE=$2 ; shift ;;
            --message) rerun_option_check $# $1; MESSAGE=$2 ; shift ;;
            --pause) rerun_option_check $# $1; PAUSE=$2 ; shift ;;
            --container) rerun_option_check $# $1; CONTAINER=$2 ; shift ;;
            --image) rerun_option_check $# $1; IMAGE=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.

    # Check required options are set
    [ -z "$DOCKER_CERT_PATH" ] && { echo >&2 "missing required option: --docker-cert-path" ; return 2 ; }
    [ -z "$DOCKER_HOST" ] && { echo >&2 "missing required option: --docker-host" ; return 2 ; }
    [ -z "$DOCKER_TLS_VERIFY" ] && { echo >&2 "missing required option: --docker-tls-verify" ; return 2 ; }
    [ -z "$CONTAINER" ] && { echo >&2 "missing required option: --container" ; return 2 ; }
    [ -z "$IMAGE" ] && { echo >&2 "missing required option: --image" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export DOCKER_CERT_PATH
    export DOCKER_HOST
    export DOCKER_TLS_VERIFY
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${DOCKER_CERT_PATH:=}
: ${DOCKER_HOST:=}
: ${DOCKER_TLS_VERIFY:=}
: ${AUTHOR:=}
: ${CHANGE:=}
: ${MESSAGE:=}
: ${PAUSE:=}
: ${CONTAINER:=}
: ${IMAGE:=}


