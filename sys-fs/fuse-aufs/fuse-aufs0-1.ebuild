# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-fs/fuseiso/fuseiso-20070708-r1.ebuild,v 1.3 2014/01/14 13:58:42 ago Exp $

EAPI=5

inherit eutils

DESCRIPTION="virtual to build AUFS/3 as a FUSE module"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-debug doc +fuse hfs inotify kernel-patch +nfs pax_kernel +ramfs"

RDEPEND="sys-fs/aufs3 
  sys-fs/fuse
	sabayon-sources
  sys-kernel/linux-sabayon 
  dev-util/patchutils
	dev-vcs/git
	virtual/pkgconfig
	linux-sources/linux-sources
	sys-kernel/spike-sources
	sys-kernel/linux-spike"
DEPEND="${RDEPEND}
## no eligant means to if sabayon-kernel or virtual-(IE gentoo) or spike kerenl (sabayon/gentoo var)preffered our kernnel
## Else gentoo's or etc.

