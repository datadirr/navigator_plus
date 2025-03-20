#ifndef FLUTTER_PLUGIN_NAVIGATOR_PLUS_PLUGIN_H_
#define FLUTTER_PLUGIN_NAVIGATOR_PLUS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace navigator_plus {

class NavigatorPlusPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NavigatorPlusPlugin();

  virtual ~NavigatorPlusPlugin();

  // Disallow copy and assign.
  NavigatorPlusPlugin(const NavigatorPlusPlugin&) = delete;
  NavigatorPlusPlugin& operator=(const NavigatorPlusPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace navigator_plus

#endif  // FLUTTER_PLUGIN_NAVIGATOR_PLUS_PLUGIN_H_
