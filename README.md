# How to use this overlay

[Local overlays](https://wiki.gentoo.org/wiki/Overlay/Local_overlay) should be managed via `/etc/portage/repos.conf/`.
To enable this overlay make sure you are using a recent Portage version (at least `2.2.14`), and create an `/etc/portage/repos.conf/x-viredero-overlay.conf` file containing precisely:

```
[x-viredero-overlay]
location = /usr/local/portage/x-viredero-overlay
sync-type = git
sync-uri = https://github.com/event/x-viredero-overlay.git
priority=9999
```

Afterwards, simply run `emerge --sync`, and Portage should seamlessly make all our ebuilds available.

# With layman

Add `https://raw.github.com/event/x-viredero-overlay/master/repositories.xml` to overlays section in `/etc/layman/layman.cfg`.

Or read the instructions on the [Gentoo Wiki](http://wiki.gentoo.org/wiki/Layman#Adding_custom_overlays), then invoke the following:

	layman -f -a x-viredero-overlay

After performing those steps, the following should work :

	sudo emerge -av x11-apps/x-viredero
