/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @generated by an internal plugin build system
 */

#ifndef RN_DISABLE_OSS_PLUGIN_HEADER

// OSS-compatibility layer

#import "RCTFabricComponentsPlugins.h"

#import <string>
#import <unordered_map>

Class<RCTComponentViewProtocol> RCTFabricComponentsProvider(const char *name) {
  static std::unordered_map<std::string, Class (*)(void)> sFabricComponentsClassMap = {
    {"SafeAreaView", RCTSafeAreaViewCls},
    {"ScrollView", RCTScrollViewCls},
    {"PullToRefreshView", RCTPullToRefreshViewCls},
    {"ActivityIndicatorView", RCTActivityIndicatorViewCls},
    {"Slider", RCTSliderCls},
    {"Switch", RCTSwitchCls},
    {"UnimplementedNativeView", RCTUnimplementedNativeViewCls},
    {"ModalHostView", RCTModalHostViewCls},
    {"Image", RCTImageCls},
    {"Paragraph", RCTParagraphCls},
    {"TextInput", RCTTextInputCls},
    {"View", RCTViewCls},
  };

  auto p = sFabricComponentsClassMap.find(name);
  if (p != sFabricComponentsClassMap.end()) {
    auto classFunc = p->second;
    return classFunc();
  }
  return nil;
}

#endif // RN_DISABLE_OSS_PLUGIN_HEADER
