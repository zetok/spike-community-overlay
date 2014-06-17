
# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# Please report sabayon.org
# 

DESCRIPTION="sguil environment"
HOMEPAGE="http://sguil.sourceforge.net/"
SRC_URI=""
LICENSE="metapackage"

SLOT="0"
KEYWORDS="-* ~amd64 ~x86"
IUSE=""

RDEPEND="
		net-analyzer/sguil-client
		net-analyzer/sguil-sensor
		net-analyzer/sguil-server
		"
