// 
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v9.2.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN


/// The codec used by NativeApiPlugin.
NSObject<FlutterMessageCodec> *NativeApiPluginGetCodec(void);

@interface NativeApiPlugin : NSObject
- (instancetype)initWithBinaryMessenger:(id<FlutterBinaryMessenger>)binaryMessenger;
- (void)getLatestAuthTokenProviderName:(NSString *)providerName completion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
@end

/// The codec used by NativeApiBridge.
NSObject<FlutterMessageCodec> *NativeApiBridgeGetCodec(void);

@protocol NativeApiBridge
- (void)addPluginAuthProvidersList:(NSArray<NSString *> *)authProvidersList completion:(void (^)(FlutterError *_Nullable))completion;
@end

extern void NativeApiBridgeSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<NativeApiBridge> *_Nullable api);

NS_ASSUME_NONNULL_END
