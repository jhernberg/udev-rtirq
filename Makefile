#!/usr/bin/make

#   Copyright (C) 2017-2018 Joakim Hernberg <jhernberg@alchemy.lu>
#
#   This file is part of udev-rtirq
#
#   udev-rtirq is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License
#   as published by the Free Software Foundation; either version 2
#   of the License, or (at your option) any later version.
#
#   Install udev-rtirq

BIN_DIR    = $(DESTDIR)/usr/sbin
CONFIG_DIR = $(DESTDIR)/etc/default
UDEV_DIR   = $(DESTDIR)/usr/lib/udev/rules.d

.PHONY: install
install:
	install -d $(BIN_DIR)
	install -d $(CONFIG_DIR)
	install -d $(UDEV_DIR)
	install -m 755 udev-rtirq $(BIN_DIR)
	install -m 644 udev-rtirq.conf $(CONFIG_DIR)/udev-rtirq
	install -m 644 99-udev-rtirq.rules $(UDEV_DIR)
