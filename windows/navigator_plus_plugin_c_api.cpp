#include "include/navigator_plus/navigator_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "navigator_plus_plugin.h"

void NavigatorPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  navigator_plus::NavigatorPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
