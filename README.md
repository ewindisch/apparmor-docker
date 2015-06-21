Load Docker's AppArmor profiles on host
---------------------------------------

Usage:

```
docker run -v /sys/kernel/security:/sys/kernel/security --privileged --rm -t ewindisch/apparmor
```


Kernel configuration
--------------------

The machine must have AppArmor modules available and configured. AppArmor userspace
is not needed on the host.

With some distributions the following kernel command-line may be required:

```
apparmor=1 security=apparmor
```

Refer to your distribution's documentation for enabling AppArmor.
