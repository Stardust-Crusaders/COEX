# Hostname

[By default](image.md) the hostname of the Clever drone is set to `clever-xxxx`, where `xxxx` are random numbers. These numbers are the same as in the [Wi-Fi SSID](wifi.md).

Thus, Clever is accessible on machines that support mDNS as `clever-xxxx.local`. You can use this name to access Clever over SSH:

```bash
ssh pi@clever-xxxx.local
```

Also, this name can be used in place of IP-address to open Clever web pages in browser, accessing ROS master, etc.

## Changing hostname

In some situations it is necessary to change Clever's hostname. You can use the `hostnamectl` utility for that:

```bash
sudo hostnamectl set-hostname newname
```

Where `newname` is the new name of the machine. `hostnamectl` utility will change the name in `/etc/hostname` file.

You should also put the new name to `/etc/hosts` file:

```txt
127.0.1.1	newname newname.local
```

Setting `newname.local` is necessary to allow ROS to resolve this name in situations where all the network interfaces are down (when Wi-Fi is turned off or disconnected).

> **Note** Changing the hostname does not affect the Wi-Fi SSID (and vice versa, changing the Wi-Fi SSID won't affect the hostname).
