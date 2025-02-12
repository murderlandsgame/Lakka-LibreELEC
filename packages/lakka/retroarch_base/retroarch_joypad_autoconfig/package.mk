PKG_NAME="retroarch_joypad_autoconfig"
PKG_VERSION="dfb61f19d09512826b2377994f4a5f37f253bba1"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/retroarch-joypad-autoconfig"
PKG_URL="${PKG_SITE}.git"
PKG_LONGDESC="RetroArch joypad autoconfig files"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  make -C ${PKG_BUILD} install INSTALLDIR="${INSTALL}/etc/retroarch-joypad-autoconfig" DOC_DIR="${INSTALL}/etc/doc/."

  #Remove non tested joycon configs
  rm -v "${INSTALL}/etc/retroarch-joypad-autoconfig/udev/Nintendo Co., Ltd. Pro Controller (old).cfg"
  rm -v "${INSTALL}/etc/retroarch-joypad-autoconfig/udev/Nintendo Co., Ltd. Pro Controller.cfg"
  rm -v "${INSTALL}/etc/retroarch-joypad-autoconfig/udev/Nintendo-Switch-Online_NES-Controller_Left.cfg"
  rm -v "${INSTALL}/etc/retroarch-joypad-autoconfig/udev/Nintendo-Switch-Online_NES-Controller_Right.cfg"
  rm -v "${INSTALL}/etc/retroarch-joypad-autoconfig/udev/Nintendo Switch Left Joy-Con.cfg"
  rm -v "${INSTALL}/etc/retroarch-joypad-autoconfig/udev/Nintendo Switch Right Joy-Con.cfg"
  #Place Working configs
  cp -Prv ${PKG_DIR}/joypad_configs/* ${INSTALL}/etc/retroarch-joypad-autoconfig/

}

