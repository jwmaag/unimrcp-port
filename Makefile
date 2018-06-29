# $FreeBSD$

PORTNAME=unimrcp
PORTVERSION=1.5.0
CATEGORIES=net
LICENSE=APACHE20

LIB_DEPENDS=libsofia-sip-ua.so:net/sofia-sip \
	libapr-1.so:devel/apr1 \
	libaprutil-1.so:devel/apr1

USES=autoreconf libtool
USE_GITHUB=yes
GH_ACCOUNT=unispeech
GH_PROJECT=unimrcp
GH_TAGNAME=1283162

HAS_CONFIGURE=yes


.include <bsd.port.mk>
