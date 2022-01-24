# Fixes ansible bug https://github.com/ansible/ansible/issues/32499
fix_ansible_thread_fork() {
    export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
}


