///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBPAPERPaperDocPermissionLevel;
@class DBPAPERUserInfoWithPermissionLevel;
@class DBSHARINGUserInfo;

#pragma mark - API Object

///
/// The `UserInfoWithPermissionLevel` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBPAPERUserInfoWithPermissionLevel : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// User shared on the Paper doc.
@property (nonatomic, readonly) DBSHARINGUserInfo * _Nonnull user;

/// Permission level for the user.
@property (nonatomic, readonly) DBPAPERPaperDocPermissionLevel * _Nonnull permissionLevel;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param user User shared on the Paper doc.
/// @param permissionLevel Permission level for the user.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUser:(DBSHARINGUserInfo * _Nonnull)user
                     permissionLevel:(DBPAPERPaperDocPermissionLevel * _Nonnull)permissionLevel;

- (nonnull instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `UserInfoWithPermissionLevel` struct.
///
@interface DBPAPERUserInfoWithPermissionLevelSerializer : NSObject

///
/// Serializes `DBPAPERUserInfoWithPermissionLevel` instances.
///
/// @param instance An instance of the `DBPAPERUserInfoWithPermissionLevel` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBPAPERUserInfoWithPermissionLevel` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBPAPERUserInfoWithPermissionLevel * _Nonnull)instance;

///
/// Deserializes `DBPAPERUserInfoWithPermissionLevel` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBPAPERUserInfoWithPermissionLevel` API object.
///
/// @return An instantiation of the `DBPAPERUserInfoWithPermissionLevel` object.
///
+ (DBPAPERUserInfoWithPermissionLevel * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
