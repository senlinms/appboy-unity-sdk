﻿#pragma once
#include <stdint.h>
#include <assert.h>
#include <exception>
#include "codegen/il2cpp-codegen.h"

// Mono.Security.Cryptography.KeyBuilder
struct KeyBuilder_t1383;
// System.Security.Cryptography.RandomNumberGenerator
struct RandomNumberGenerator_t1366;
// System.Byte[]
struct ByteU5BU5D_t97;

// System.Security.Cryptography.RandomNumberGenerator Mono.Security.Cryptography.KeyBuilder::get_Rng()
 RandomNumberGenerator_t1366 * KeyBuilder_get_Rng_m5642 (Object_t * __this/* static, unused */, MethodInfo* method) IL2CPP_METHOD_ATTR;
// System.Byte[] Mono.Security.Cryptography.KeyBuilder::Key(System.Int32)
 ByteU5BU5D_t97* KeyBuilder_Key_m5643 (Object_t * __this/* static, unused */, int32_t ___size, MethodInfo* method) IL2CPP_METHOD_ATTR;