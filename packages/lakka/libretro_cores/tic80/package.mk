PKG_NAME="tic80"
PKG_VERSION="38c35fe"
PKG_LICENSE="GPLv3"
PKG_SITE="https://github.com/nesbox/TIC-80"
PKG_URL="${PKG_SITE}.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="TIC-80 is a fantasy computer for making, playing and sharing tiny games."
PKG_LONGDESC="TIC-80 is a fantasy computer for making, playing and sharing tiny games."
PKG_TOOLCHAIN="cmake"

PKG_CMAKE_OPTS_TARGET="-DBUILD_PLAYER=OFF \
                       -DBUILD_SDL=OFF \
                       -DBUILD_SOKOL=OFF \
                       -DBUILD_DEMO_CARTS=OFF \
                       -DBUILD_LIBRETRO=ON"

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v lib/tic80_libretro.so ${INSTALL}/usr/lib/libretro/
}