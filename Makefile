all:

install:
	install -Dm755 update-systemd-boot $(DESTDIR)/usr/sbin/update-systemd-boot
	install -d $(DESTDIR)/etc/kernel/postrm.d $(DESTDIR)/etc/initramfs/post-update.d
	ln -s ../../../usr/sbin/update-systemd-boot $(DESTDIR)/etc/kernel/postrm.d/zz-update-systemd-boot
	ln -s ../../../usr/sbin/update-systemd-boot $(DESTDIR)/etc/initramfs/post-update.d/zz-update-systemd-boot

uninstall:
	rm $(DESTDIR)/usr/sbin/update-systemd-boot
	rm $(DESTDIR)/etc/kernel/postrm.d/zz-update-systemd-boot
	rm $(DESTDIR)/etc/initramfs/post-update.d/zz-update-systemd-boot
