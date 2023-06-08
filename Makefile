PMAPORT=~/.cache/pmbootstrap/cache_git/pmaports/device/testing/linux-xiaomi-tucana

push:
	cp configs/current ${PMAPORT}/config-xiaomi-tucana.aarch64
	cp APKBUILD ${PMAPORT}/APKBUILD
	pmbootstrap checksum linux-xiaomi-tucana

pull:
	cp ${PMAPORT}/config-xiaomi-tucana.aarch64 configs/current
	cp ${PMAPORT}/APKBUILD APKBUILD

kconfig:
	pmbootstrap kconfig edit
	make pull

build:
	pmbootstrap build linux-xiaomi-tucana --force

boot:
	pmbootstrap flasher boot
