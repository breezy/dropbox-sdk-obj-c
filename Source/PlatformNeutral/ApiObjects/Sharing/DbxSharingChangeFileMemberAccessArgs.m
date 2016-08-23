///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAccessLevel.h"
#import "DbxSharingChangeFileMemberAccessArgs.h"
#import "DbxSharingMemberSelector.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingChangeFileMemberAccessArgs 

- (instancetype)initWithFile:(NSString *)file member:(DbxSharingMemberSelector *)member accessLevel:(DbxSharingAccessLevel *)accessLevel {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);

    self = [super init];
    if (self != nil) {
        _file = file;
        _member = member;
        _accessLevel = accessLevel;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingChangeFileMemberAccessArgsSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingChangeFileMemberAccessArgsSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingChangeFileMemberAccessArgsSerializer serialize:self] description];
}

@end


@implementation DbxSharingChangeFileMemberAccessArgsSerializer 

+ (NSDictionary *)serialize:(DbxSharingChangeFileMemberAccessArgs *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"file"] = [DbxStringSerializer serialize:valueObj.file];
    jsonDict[@"member"] = [DbxSharingMemberSelectorSerializer serialize:valueObj.member];
    jsonDict[@"access_level"] = [DbxSharingAccessLevelSerializer serialize:valueObj.accessLevel];

    return jsonDict;
}

+ (DbxSharingChangeFileMemberAccessArgs *)deserialize:(NSDictionary *)valueDict {
    NSString *file = [DbxStringSerializer deserialize:valueDict];
    DbxSharingMemberSelector *member = [DbxSharingMemberSelectorSerializer deserialize:valueDict];
    DbxSharingAccessLevel *accessLevel = [DbxSharingAccessLevelSerializer deserialize:valueDict];

    return [[DbxSharingChangeFileMemberAccessArgs alloc] initWithFile:file member:member accessLevel:accessLevel];
}

@end
