# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils

DESCRIPTION="Scans a disk image (or any other file) and extracts useful information — without parsing the file system."
HOMEPAGE="https://github.com/simsong/bulk_extractor"
SRC_URI="http://digitalcorpora.org/downloads/bulk_extractor/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="media-gfx/exiv2
        sys-libs/zlib
        dev-libs/expat
        dev-libs/openssl"
RDEPEND="${DEPEND}"

src_configure() {
	econf
}

src_install() {
	emake install DESTDIR="${D}" || \
		die "make install failed"
	dodoc AUTHORS ChangeLog README NEWS doc/Diagnosing_Crashes.txt || \
		die "dodoc failed"
}
