//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <esim/esim_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) esim_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "EsimPlugin");
  esim_plugin_register_with_registrar(esim_registrar);
}
