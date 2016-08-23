///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAclUpdatePolicy.h"
#import "DbxSharingFolderPolicy.h"
#import "DbxSharingMemberPolicy.h"
#import "DbxSharingSharedLinkPolicy.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingFolderPolicy 

- (instancetype)initWithAclUpdatePolicy:(DbxSharingAclUpdatePolicy *)aclUpdatePolicy sharedLinkPolicy:(DbxSharingSharedLinkPolicy *)sharedLinkPolicy memberPolicy:(DbxSharingMemberPolicy *)memberPolicy resolvedMemberPolicy:(DbxSharingMemberPolicy *)resolvedMemberPolicy {

    self = [super init];
    if (self != nil) {
        _memberPolicy = memberPolicy;
        _resolvedMemberPolicy = resolvedMemberPolicy;
        _aclUpdatePolicy = aclUpdatePolicy;
        _sharedLinkPolicy = sharedLinkPolicy;
    }
    return self;
}

- (instancetype)initWithAclUpdatePolicy:(DbxSharingAclUpdatePolicy *)aclUpdatePolicy sharedLinkPolicy:(DbxSharingSharedLinkPolicy *)sharedLinkPolicy {
    return [self initWithAclUpdatePolicy:aclUpdatePolicy sharedLinkPolicy:sharedLinkPolicy memberPolicy:nil resolvedMemberPolicy:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingFolderPolicySerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingFolderPolicySerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingFolderPolicySerializer serialize:self] description];
}

@end


@implementation DbxSharingFolderPolicySerializer 

+ (NSDictionary *)serialize:(DbxSharingFolderPolicy *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"acl_update_policy"] = [DbxSharingAclUpdatePolicySerializer serialize:valueObj.aclUpdatePolicy];
    jsonDict[@"shared_link_policy"] = [DbxSharingSharedLinkPolicySerializer serialize:valueObj.sharedLinkPolicy];
    if (valueObj.memberPolicy != nil) {
        jsonDict[@"member_policy"] = [DbxSharingMemberPolicySerializer serialize:valueObj.memberPolicy];
    }
    if (valueObj.resolvedMemberPolicy != nil) {
        jsonDict[@"resolved_member_policy"] = [DbxSharingMemberPolicySerializer serialize:valueObj.resolvedMemberPolicy];
    }

    return jsonDict;
}

+ (DbxSharingFolderPolicy *)deserialize:(NSDictionary *)valueDict {
    DbxSharingAclUpdatePolicy *aclUpdatePolicy = [DbxSharingAclUpdatePolicySerializer deserialize:valueDict];
    DbxSharingSharedLinkPolicy *sharedLinkPolicy = [DbxSharingSharedLinkPolicySerializer deserialize:valueDict];
    DbxSharingMemberPolicy *memberPolicy = valueDict != nil ? [DbxSharingMemberPolicySerializer deserialize:valueDict] : nil;
    DbxSharingMemberPolicy *resolvedMemberPolicy = valueDict != nil ? [DbxSharingMemberPolicySerializer deserialize:valueDict] : nil;

    return [[DbxSharingFolderPolicy alloc] initWithAclUpdatePolicy:aclUpdatePolicy sharedLinkPolicy:sharedLinkPolicy memberPolicy:memberPolicy resolvedMemberPolicy:resolvedMemberPolicy];
}

@end
