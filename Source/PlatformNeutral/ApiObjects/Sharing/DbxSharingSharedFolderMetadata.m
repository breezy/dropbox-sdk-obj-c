///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAccessLevel.h"
#import "DbxSharingFolderPermission.h"
#import "DbxSharingFolderPolicy.h"
#import "DbxSharingSharedFolderMetadata.h"
#import "DbxSharingSharedFolderMetadataBase.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersTeam.h"

@implementation DbxSharingSharedFolderMetadata 

- (instancetype)initWithAccessType:(DbxSharingAccessLevel *)accessType isTeamFolder:(NSNumber *)isTeamFolder policy:(DbxSharingFolderPolicy *)policy name:(NSString *)name sharedFolderId:(NSString *)sharedFolderId timeInvited:(NSDate *)timeInvited previewUrl:(NSString *)previewUrl ownerTeam:(DbxUsersTeam *)ownerTeam parentSharedFolderId:(NSString *)parentSharedFolderId pathLower:(NSString *)pathLower permissions:(NSArray<DbxSharingFolderPermission *> *)permissions {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"]](parentSharedFolderId);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](permissions);

    self = [super initWithAccessType:accessType isTeamFolder:isTeamFolder policy:policy ownerTeam:ownerTeam parentSharedFolderId:parentSharedFolderId];
    if (self != nil) {
        _pathLower = pathLower;
        _name = name;
        _sharedFolderId = sharedFolderId;
        _permissions = permissions;
        _timeInvited = timeInvited;
        _previewUrl = previewUrl;
    }
    return self;
}

- (instancetype)initWithAccessType:(DbxSharingAccessLevel *)accessType isTeamFolder:(NSNumber *)isTeamFolder policy:(DbxSharingFolderPolicy *)policy name:(NSString *)name sharedFolderId:(NSString *)sharedFolderId timeInvited:(NSDate *)timeInvited previewUrl:(NSString *)previewUrl {
    return [self initWithAccessType:accessType isTeamFolder:isTeamFolder policy:policy name:name sharedFolderId:sharedFolderId timeInvited:timeInvited previewUrl:previewUrl ownerTeam:nil parentSharedFolderId:nil pathLower:nil permissions:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharedFolderMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharedFolderMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharedFolderMetadataSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharedFolderMetadataSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharedFolderMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"access_type"] = [DbxSharingAccessLevelSerializer serialize:valueObj.accessType];
    jsonDict[@"is_team_folder"] = [DbxBoolSerializer serialize:valueObj.isTeamFolder];
    jsonDict[@"policy"] = [DbxSharingFolderPolicySerializer serialize:valueObj.policy];
    jsonDict[@"name"] = [DbxStringSerializer serialize:valueObj.name];
    jsonDict[@"shared_folder_id"] = [DbxStringSerializer serialize:valueObj.sharedFolderId];
    jsonDict[@"time_invited"] = [DbxNSDateSerializer serialize:valueObj.timeInvited dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    jsonDict[@"preview_url"] = [DbxStringSerializer serialize:valueObj.previewUrl];
    if (valueObj.ownerTeam != nil) {
        jsonDict[@"owner_team"] = [DbxUsersTeamSerializer serialize:valueObj.ownerTeam];
    }
    if (valueObj.parentSharedFolderId != nil) {
        jsonDict[@"parent_shared_folder_id"] = [DbxStringSerializer serialize:valueObj.parentSharedFolderId];
    }
    if (valueObj.pathLower != nil) {
        jsonDict[@"path_lower"] = [DbxStringSerializer serialize:valueObj.pathLower];
    }
    if (valueObj.permissions != nil) {
        jsonDict[@"permissions"] = [DbxArraySerializer serialize:valueObj.permissions withBlock:^id(id obj) { return [DbxSharingFolderPermissionSerializer serialize:obj]; }];
    }

    return jsonDict;
}

+ (DbxSharingSharedFolderMetadata *)deserialize:(NSDictionary *)valueDict {
    DbxSharingAccessLevel *accessType = [DbxSharingAccessLevelSerializer deserialize:valueDict];
    NSNumber *isTeamFolder = [DbxBoolSerializer deserialize:valueDict];
    DbxSharingFolderPolicy *policy = [DbxSharingFolderPolicySerializer deserialize:valueDict];
    NSString *name = [DbxStringSerializer deserialize:valueDict];
    NSString *sharedFolderId = [DbxStringSerializer deserialize:valueDict];
    NSDate *timeInvited = [DbxNSDateSerializer deserialize:valueDict dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    NSString *previewUrl = [DbxStringSerializer deserialize:valueDict];
    DbxUsersTeam *ownerTeam = valueDict != nil ? [DbxUsersTeamSerializer deserialize:valueDict] : nil;
    NSString *parentSharedFolderId = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;
    NSString *pathLower = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;
    NSArray<DbxSharingFolderPermission *> *permissions = valueDict != nil ? [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxSharingFolderPermissionSerializer deserialize:obj]; }] : nil;

    return [[DbxSharingSharedFolderMetadata alloc] initWithAccessType:accessType isTeamFolder:isTeamFolder policy:policy name:name sharedFolderId:sharedFolderId timeInvited:timeInvited previewUrl:previewUrl ownerTeam:ownerTeam parentSharedFolderId:parentSharedFolderId pathLower:pathLower permissions:permissions];
}

@end
