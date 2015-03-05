# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-fs/fuseiso/fuseiso-20070708-r1.ebuild,v 1.3 2014/01/14 13:58:42 ago Exp $
# https://github.com/Sabayon-Labs/spike-community-overlay
# Spike-pentesting.org a Gentoo & Sabayon Based Pentest Distribution. 
# necrose99 Michael R. Lawence
EAPI=5

inherit eutils

DESCRIPTION="virtual to build AUFS/3 as a FUSE module"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-debug doc +fuse hfs inotify kernel-patch +nfs pax_kernel +ramfs"

RDEPEND="sys-fs/aufs3 
  	sys-fs/fuse
if
	>=sys-kernel/spike-sources-0
	>=sys-kernel/linux-spike-0
 elif 
	>=sabayon-sources-0
  	>=sys-kernel/linux-sabayon-0
then
elif  >=virtual/linux-kernel-0
	>=virtual/linux-sources-0"
DEPEND="${RDEPEND}
## no eligant means to if sabayon-kernel or virtual-(IE gentoo) 
#or our preffered spike kerenl (sabayon/gentoo var) slighly hardened & Pentesty var of sabayon defacto kernel
## Else gentoo's or etc. 
#pitty thier isnt an eassier automagical kernel probe/kernel-SRC's probe and make We all have diff kernel flavor tastes.
# but perl/APP:Witchcraft CI-tinderbox will chew & make bin-packages in ourcase
