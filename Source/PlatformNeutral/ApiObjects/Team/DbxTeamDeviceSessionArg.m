///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDeviceSessionArg.h"

@implementation DbxTeamDeviceSessionArg 

- (instancetype)initWithSessionId:(NSString *)sessionId teamMemberId:(NSString *)teamMemberId {

    self = [super init];
    if (self != nil) {
        _sessionId = sessionId;
        _teamMemberId = teamMemberId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamDeviceSessionArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamDeviceSessionArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamDeviceSessionArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamDeviceSessionArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamDeviceSessionArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"session_id"] = [DbxStringSerializer serialize:valueObj.sessionId];
    jsonDict[@"team_member_id"] = [DbxStringSerializer serialize:valueObj.teamMemberId];

    return jsonDict;
}

+ (DbxTeamDeviceSessionArg *)deserialize:(NSDictionary *)valueDict {
    NSString *sessionId = [DbxStringSerializer deserialize:valueDict];
    NSString *teamMemberId = [DbxStringSerializer deserialize:valueDict];

    return [[DbxTeamDeviceSessionArg alloc] initWithSessionId:sessionId teamMemberId:teamMemberId];
}

@end
