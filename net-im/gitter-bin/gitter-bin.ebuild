# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit multilib unpacker

MY_PV=${PV/_p/-}
MY_PN=${PN%%-bin-debian}

DESCRIPTION="gitter IM Debian binary"
HOMEPAGE="https://gitter.im/apps"
SRC_URI="https://update.gitter.im/linux64/latest
https://update.gitter.im/linux32/latest"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="Doc"

UDEV_V=198

DEPEND="app-arch/dpkg"
RDEPEND="net-libs/nodejs"

S=${WORKDIR}

QA_PREBUILT="usr/lib*/${MY_PN}/*"

src_install() {
	distutils-r1_src_install
	use doc && dodoc -r docs/*
}

	echo sid > "${D}"/etc/debian_version || die

}
pkg_postinst() {
	elog "Gitter Debian is installed"
}