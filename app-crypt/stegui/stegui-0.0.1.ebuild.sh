# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit  versionator

MY_P="${PN}-$(replace_version_separator 3 '-')"

DESCRIPTION=" SteGUIa program with a graphical interface for easy operation the Steghide Stenography tool"
HOMEPAGE="http://stegui.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/source/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="btrfs jfs ntfs reiser4 reiserfs xfs"

DEPEND="app-arch/xz-utils
	app-backup/fsarchiver[lzma,lzo]
	dev-libs/glib:2
	dev-libs/libgcrypt
	dev-libs/lzo
	>=sys-fs/e2fsprogs-1.41.4
	x11-libs/qt-core:4
	x11-libs/qt-gui:4"
RDEPEND="${DEPEND}
	btrfs? ( sys-fs/btrfs-progs )
	jfs? ( sys-fs/jfsutils )
	ntfs? ( sys-fs/ntfs3g[ntfsprogs] )
	reiser4? ( sys-fs/reiser4progs )
	reiserfs? ( sys-fs/reiserfsprogs )
	xfs? ( sys-fs/xfsprogs )"

S="${WORKDIR}/${PN}"


# Package requirements ATM .... 

# Alsa ? and I mean what  tell  really , which ALSA...... 
media-plugins/alsa-plugins ?
media-libs/alsa-lib ? 
media-sound/alsa-utils ? 
media-plugins/gst-plugins-alsa ? hmmm .... 
sys-firmware/alsa-firmware ?  like no
media-libs/alsa-oss ? like no

dev-cpp/pstreams
media-libs/libjpeg-turbo

app-crypt/mhash
python-mhash
app-crypt/mcrypt
x11-libs/fltk

# Recycle some code

# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit qt4-r2 versionator

MY_P="${PN}-$(replace_version_separator 3 '-')"

DESCRIPTION="qt4-fsarchiver a program with a graphical interface for easy operation the archiving program fsarchiver (Flexible filesystem archiver) for backup and deployment tool"
HOMEPAGE="http://qt4-fsarchiver.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/source/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="btrfs jfs ntfs reiser4 reiserfs xfs"

DEPEND="app-arch/xz-utils
	app-backup/fsarchiver[lzma,lzo]
	dev-libs/glib:2
	dev-libs/libgcrypt
	dev-libs/lzo
	>=sys-fs/e2fsprogs-1.41.4
	x11-libs/qt-core:4
	x11-libs/qt-gui:4"
RDEPEND="${DEPEND}
	btrfs? ( sys-fs/btrfs-progs )
	jfs? ( sys-fs/jfsutils )
	ntfs? ( sys-fs/ntfs3g[ntfsprogs] )
	reiser4? ( sys-fs/reiser4progs )
	reiserfs? ( sys-fs/reiserfsprogs )
	xfs? ( sys-fs/xfsprogs )"

S="${WORKDIR}/${PN}"

src_prepare() {
	# fix .desktop file
	sed -i -e '/Encoding/d' starter/"${PN}".desktop || die "sed on qt4-fsarchiver.desktop failed"

	qt4-r2_src_prepare
}

src_configure() {
	eqmake4 "${PN}".pro OPTION_LZO_SUPPORT=1 OPTION_LZMA_SUPPORT=1
}

#####   More code Thievery ....
###  Do find more alinged ebuilds , however for now  few tidbits to reuse.
# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-backup/qt4-fsarchiver/qt4-fsarchiver-0.6.19.7.ebuild,v 1.1 2014/08/24 18:10:26 hasufell Exp $

EAPI=5

inherit qmake-utils versionator

MY_P="${PN}-$(replace_version_separator 3 '-')"
MIN_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Qt4 frontend for fsarchiver"
HOMEPAGE="http://qt4-fsarchiver.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/source/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

CDEPEND="app-arch/bzip2
	app-arch/xz-utils
	dev-libs/libgcrypt:=
	dev-libs/lzo
	dev-qt/qtcore:4
	dev-qt/qtgui:4
	sys-apps/util-linux
	sys-fs/e2fsprogs
	sys-libs/zlib"
RDEPEND="${CDEPEND}
	>=app-backup/fsarchiver-${MIN_PV}[lzma,lzo]"
DEPEND="${CDEPEND}"

S="${WORKDIR}/${PN}"

src_prepare() {
	# fix .desktop file
	sed -i \
		-e '/Encoding/d' starter/"${PN}".desktop \
		|| die "sed on qt4-fsarchiver.desktop failed"
	# fix icon installation location
	sed -i \
		-e "/icon.path/s:app-install/icons:${PN}:" "${PN}.pro" \
		|| die "sed on ${PN}.pro failed"
}

src_compile() {
	eqmake4
}

src_install() {
	emake INSTALL_ROOT="${D}" install
	einstalldocs
}

pkg_postinst() {
	elog "optional dependencies:"
	elog "  sys-fs/btrfs-progs"
	elog "  sys-fs/jfsutils"
	elog "  sys-fs/ntfs3g[ntfsprogs]"
	elog "  sys-fs/reiser4progs"
	elog "  sys-fs/reiserfsprogs"
	elog "  sys-fs/sshfs-fuse"
	elog "  sys-fs/xfsprogs"
}
