///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupsMembersListContinueArg.h"

@implementation DbxTeamGroupsMembersListContinueArg 

- (instancetype)initWithCursor:(NSString *)cursor {

    self = [super init];
    if (self != nil) {
        _cursor = cursor;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupsMembersListContinueArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupsMembersListContinueArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupsMembersListContinueArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupsMembersListContinueArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupsMembersListContinueArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];

    return jsonDict;
}

+ (DbxTeamGroupsMembersListContinueArg *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = [DbxStringSerializer deserialize:valueDict];

    return [[DbxTeamGroupsMembersListContinueArg alloc] initWithCursor:cursor];
}

@end
