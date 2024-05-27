## wipine
> POC evironment for running PE files on top of linux with Wine and OCI spec container hardening.

This repo is intended as a learning environment for PE binary exploitation and to securely run this binary format with the Linux kernel, GNU or busybox based, by using wine syscall translation.

Each OS handles runtime differently: Linux have the ELF format, macOS the Mach-O, windows the PE. In order to run PE binaries (\*.exe) on Linux, wine is widely known, but without hardening it can widen the attack surface, and it also suffers from isolation bloat. Hardened OCI Containers can counter this by being secure and by showing more performance than userspace vms (register/stack ISA emulators/virtual machines) or other hypervisor solutions even using Paravirt.
