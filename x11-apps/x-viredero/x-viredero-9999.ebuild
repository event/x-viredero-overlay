# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit scons-utils xorg-2 git-2

DESCRIPTION="X implementation of viredero: VR desktop mirror"
HOMEPAGE="http://www.sourceforge.net/projects/x-viredero"
EGIT_REPO_URI="https://github.com/event/x-viredero.git"

LICENSE="GPL-3"
KEYWORDS=""
IUSE=""

RDEPEND="x11-libs/libXdamage
	x11-libs/libXext
	x11-libs/libXfixes
	dev-libx/libusb"
DEPEND="${RDEPEND}"

src_configure() {
    :
}

src_compile() {
    escons
}

src_install() {
    escons DESTDIR="${D}" install
}
