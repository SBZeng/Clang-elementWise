@import redeclarations_left;
@import weird_objc;

int test(id x) {
  return x->wibble;
}

// RUN: rm -rf %t
// RUN: %clang_cc1 -fmodules -x objective-c -fmodules-cache-path=%t -emit-module -fmodule-name=redeclarations_left %S/Inputs/module.map
// RUN: %clang_cc1 -fmodules -x objective-c -fmodules-cache-path=%t -emit-module -fmodule-name=weird_objc %S/Inputs/module.map
// RUN: %clang_cc1 -fmodules -fmodules-cache-path=%t %s -verify
// expected-no-diagnostics

