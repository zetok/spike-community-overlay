# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
## mike Lawrence (necrose99) warning dyslexic researcher Pre-alpah quality ebuild F'ugglynes ahead..... You should run away
#### net-analyzer/wifite

EAPI=5
inherit  versionator subversion distutils-r1 

DESCRIPTION="An automated wireless attack tool."
HOMEPAGE="https://github.com/derv82/wifite"
ESVN_REPO_URI="https://github.com/derv82/wifite"
ESVN_PROJECT="wifite-snapshot"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="python"

#DebinaDeps=aircrack-ng airmon-ng,aireplay-ng ,packetforge-ng  (Wierless injection patches)
#DebinaODeps=reaver  pyrit cowpatty  ## not as required Wifite uses cowpatty (if found) to detect handshakes.

DEPEND="${RDEPEND}"
RDEPEND="net-wireless/aircrack-ng
			net-analyzer/wireshark
			net-wireless/reaver
			net-wireless/cowpatty
			app-crypt/pyrit
			virtual/python
"


### Do Package install 
##/usr/bin/wifite.py
### chmod +x wifite.py
## do docu install readme.md too docs conversion ??? (how?) dodoc doman...... 
    
	dodir /usr/bin/
	exeinto /usr/bin/
    doexe wifite.py
    cp -R "${S}/" "${D}/" || die "Install failed!"

pkg_postinst() {
einfo "wifite is installed happy pen-testing.... , Be sure   the readme"

}