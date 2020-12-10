tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

cfdeploy() {
    local ret
    set +e
    aws cloudformation deploy "$@" 2>&1 |tee "$tmp"/cfdeploy.out
    ret=$?
    set -e
    if [ "$ret" = 255 ] && grep -q "No changes to deploy" "$tmp"/cfdeploy.out; then
        # not actually an error, just nothing to do  *shakes fist*
        ret=0
    fi
    return "$ret"
}

