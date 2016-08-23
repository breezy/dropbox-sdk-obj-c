///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAccessLevel.h"
#import "DbxSharingMemberPermission.h"
#import "DbxSharingMembershipInfo.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingMembershipInfo 

- (instancetype)initWithAccessType:(DbxSharingAccessLevel *)accessType permissions:(NSArray<DbxSharingMemberPermission *> *)permissions initials:(NSString *)initials isInherited:(NSNumber *)isInherited {
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](permissions);

    self = [super init];
    if (self != nil) {
        _accessType = accessType;
        _permissions = permissions;
        _initials = initials;
        _isInherited = isInherited ?: @NO;
    }
    return self;
}

- (instancetype)initWithAccessType:(DbxSharingAccessLevel *)accessType {
    return [self initWithAccessType:accessType permissions:nil initials:nil isInherited:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingMembershipInfoSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingMembershipInfoSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingMembershipInfoSerializer serialize:self] description];
}

@end


@implementation DbxSharingMembershipInfoSerializer 

+ (NSDictionary *)serialize:(DbxSharingMembershipInfo *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"access_type"] = [DbxSharingAccessLevelSerializer serialize:valueObj.accessType];
    if (valueObj.permissions != nil) {
        jsonDict[@"permissions"] = [DbxArraySerializer serialize:valueObj.permissions withBlock:^id(id obj) { return [DbxSharingMemberPermissionSerializer serialize:obj]; }];
    }
    if (valueObj.initials != nil) {
        jsonDict[@"initials"] = [DbxStringSerializer serialize:valueObj.initials];
    }
    jsonDict[@"is_inherited"] = [DbxBoolSerializer serialize:valueObj.isInherited];

    return jsonDict;
}

+ (DbxSharingMembershipInfo *)deserialize:(NSDictionary *)valueDict {
    DbxSharingAccessLevel *accessType = [DbxSharingAccessLevelSerializer deserialize:valueDict];
    NSArray<DbxSharingMemberPermission *> *permissions = valueDict != nil ? [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxSharingMemberPermissionSerializer deserialize:obj]; }] : nil;
    NSString *initials = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;
    NSNumber *isInherited = [DbxBoolSerializer deserialize:valueDict];

    return [[DbxSharingMembershipInfo alloc] initWithAccessType:accessType permissions:permissions initials:initials isInherited:isInherited];
}

@end
