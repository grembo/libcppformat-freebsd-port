# Created by: Viacheslav Mikerov <SlavaMikerov@gmail.com>
# $FreeBSD$

PORTNAME=			libcppformat
PORTVERSION=	2.0.0
CATEGORIES=		misc

MAINTAINER=	SlavaMikerov@gmail.com
COMMENT=		C++ Format is an open-source formatting library for C++

LICENSE=	BSD

USE_GITHUB=	yes
GH_ACCOUNT=	cppformat
GH_PROJECT=	cppformat
GH_TAGNAME=	5324d38

USES=								cmake:outsource
CMAKE_SOURCE_PATH=	${WRKSRC}
CMAKE_ARGS= -DCMAKE_INSTALL_PREFIX=${PREFIX} \
						-DFMT_DOC=OFF
OPTIONS_DEFINE= TESTS
TESTS_CMAKE_OFF=-DFMT_TEST=OFF

.include <bsd.port.mk>