# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $ Spike-Pentesting Team $Exp Caution this is a live ebuild, any bugs please repot them.
# dev-perl/App-cpanminus now upstream in gentoo. 
EAPI=5
EGIT_REPO_URI="URI="git://github.com/Spike-Pentesting${PN}.git
	https://github.com/Spike-Pentesting/${PN}.git"
inherit git-3 multilibperl-module
HOMEPAGE="https://github.com/Spike-Pentesting/App-Witchcraft"
SRC_URI=""

DESCRIPTION="Continuous integration tool for Entropy server"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-perl/App-cpanminus
	dev-perl/App-Nopaste
	dev-perl/App-CLI
	dev-perl/Child
	dev-perl/Carp-Always
	dev-perl/Config-Simple
	virtual/perl-Digest-MD5
	virtual/perl-Encode
	virtual/perl-File-Path
	dev-perl/IPC-Run3
	dev-perl/Git-Sub
	dev-perl/HTTP-Message
	dev-perl/libwww-perl
	dev-perl/regexp-common
	virtual/perl-Term-ANSIColor
	dev-perl/TermReadKey
	dev-perl/Import-Into
"
RDEPEND="${DEPEND}"

SRC_TEST="do"
