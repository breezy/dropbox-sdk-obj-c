///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamCommonGroupSummary.h"
#import "DbxTeamGroupsListResult.h"

@implementation DbxTeamGroupsListResult 

- (instancetype)initWithGroups:(NSArray<DbxTeamCommonGroupSummary *> *)groups cursor:(NSString *)cursor hasMore:(NSNumber *)hasMore {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](groups);

    self = [super init];
    if (self != nil) {
        _groups = groups;
        _cursor = cursor;
        _hasMore = hasMore;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupsListResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupsListResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupsListResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupsListResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupsListResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"groups"] = [DbxArraySerializer serialize:valueObj.groups withBlock:^id(id obj) { return [DbxTeamCommonGroupSummarySerializer serialize:obj]; }];
    jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    jsonDict[@"has_more"] = [DbxBoolSerializer serialize:valueObj.hasMore];

    return jsonDict;
}

+ (DbxTeamGroupsListResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxTeamCommonGroupSummary *> *groups = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxTeamCommonGroupSummarySerializer deserialize:obj]; }];
    NSString *cursor = [DbxStringSerializer deserialize:valueDict];
    NSNumber *hasMore = [DbxBoolSerializer deserialize:valueDict];

    return [[DbxTeamGroupsListResult alloc] initWithGroups:groups cursor:cursor hasMore:hasMore];
}

@end
