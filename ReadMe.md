
# kvm setup scripts
Purpose: Because I lost a VM to resizing issues, and I don't want to figure this all out again.

## creating
1. Install qemu
```bash
./install-qemu.sh
```

2. Install qemu-img
```bash
./install-qemu-utils.sh
```

3. Install qemu-system-x86_64
```bash
./install-qemu-system-x86-64
```

4. Create disk
```
./disk-create.sh
```

5. Install an OS from a CD (iso file) onto hard drive (disk file)
```
./boot-install-os.sh
```

6. Boot from hard drive (disk file)
```
./boot.sh
```

