# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Convert on-the-fly between multiple input and output harddisk image types."
HOMEPAGE="https://www.pinguin.lu/"
SRC_URI="http://files.pinguin.lu/${P}.tar.gz
http://ftp.de.debian.org/debian/pool/main/x/xmount/${P}.tar.gz
http://ftp.de.debian.org/debian/pool/main/x/xmount/${P}.diff.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+aff +ewf"

RDEPEND="sys-fs/fuse
	aff? ( app-forensics/afflib )
	ewf? ( app-forensics/libewf )"
DEPEND="${RDEPEND}
	dev-util/pkgconfig"
	
src_unpack() {
    unpack ${A}
    cd "${S}"
    epatch "${FILESDIR}/${P}.diff.gz""
}
src_configure() {
	use aff || export ac_cv_lib_afflib_af_open=no
	use ewf || export ac_cv_lib_ewf_libewf_open=no
	econf
}
