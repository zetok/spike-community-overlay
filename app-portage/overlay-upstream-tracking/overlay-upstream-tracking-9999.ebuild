# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="PORTDIR merging utility for Gentoo overlay maintainers"
HOMEPAGE="https://github.com/gmt/overlay-upstream-tracking"
EGIT_REPO_URI="https://github.com/gmt/${PN}.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="ssh"

# FIXME: can I relax some of these version requirements?  Don't forget any corresponding changes to setup.py!
RDEPEND="${PYTHON_DEPS}
	>=dev-python/ply-3.4[${PYTHON_USEDEP}]
	>=dev-python/pygit2-0.21.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
