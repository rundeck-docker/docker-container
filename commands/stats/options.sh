# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Mon Aug  3 12:44:54 PDT 2015
#
#/ usage: docker-container:stats  --docker-cert-path <${DOCKER_CERT_PATH:-}>  --docker-host <${DOCKER_HOST:-}>  --docker-tls-verify <${DOCKER_TLS_VERIFY:-}>  --container <> [ --no-stream <false>] 

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
            --container) rerun_option_check $# $1; CONTAINER=$2 ; shift ;;
            --no-stream) rerun_option_check $# $1; NO_STREAM=$2 ; shift ;;
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
    [ -z "$DOCKER_CERT_PATH" ] && DOCKER_CERT_PATH="$(rerun_property_get $RERUN_MODULE_DIR/options/docker-cert-path DEFAULT)"
    [ -z "$DOCKER_HOST" ] && DOCKER_HOST="$(rerun_property_get $RERUN_MODULE_DIR/options/docker-host DEFAULT)"
    [ -z "$DOCKER_TLS_VERIFY" ] && DOCKER_TLS_VERIFY="$(rerun_property_get $RERUN_MODULE_DIR/options/docker-tls-verify DEFAULT)"
    [ -z "$NO_STREAM" ] && NO_STREAM="$(rerun_property_get $RERUN_MODULE_DIR/options/no-stream DEFAULT)"
    # Check required options are set
    [ -z "$DOCKER_CERT_PATH" ] && { echo >&2 "missing required option: --docker-cert-path" ; return 2 ; }
    [ -z "$DOCKER_HOST" ] && { echo >&2 "missing required option: --docker-host" ; return 2 ; }
    [ -z "$DOCKER_TLS_VERIFY" ] && { echo >&2 "missing required option: --docker-tls-verify" ; return 2 ; }
    [ -z "$CONTAINER" ] && { echo >&2 "missing required option: --container" ; return 2 ; }
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
: ${CONTAINER:=}
: ${NO_STREAM:=}


