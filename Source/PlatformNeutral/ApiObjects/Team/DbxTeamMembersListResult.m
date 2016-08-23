///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamMembersListResult.h"
#import "DbxTeamTeamMemberInfo.h"

@implementation DbxTeamMembersListResult 

- (instancetype)initWithMembers:(NSArray<DbxTeamTeamMemberInfo *> *)members cursor:(NSString *)cursor hasMore:(NSNumber *)hasMore {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](members);

    self = [super init];
    if (self != nil) {
        _members = members;
        _cursor = cursor;
        _hasMore = hasMore;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMembersListResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMembersListResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMembersListResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamMembersListResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamMembersListResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"members"] = [DbxArraySerializer serialize:valueObj.members withBlock:^id(id obj) { return [DbxTeamTeamMemberInfoSerializer serialize:obj]; }];
    jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    jsonDict[@"has_more"] = [DbxBoolSerializer serialize:valueObj.hasMore];

    return jsonDict;
}

+ (DbxTeamMembersListResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxTeamTeamMemberInfo *> *members = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxTeamTeamMemberInfoSerializer deserialize:obj]; }];
    NSString *cursor = [DbxStringSerializer deserialize:valueDict];
    NSNumber *hasMore = [DbxBoolSerializer deserialize:valueDict];

    return [[DbxTeamMembersListResult alloc] initWithMembers:members cursor:cursor hasMore:hasMore];
}

@end
