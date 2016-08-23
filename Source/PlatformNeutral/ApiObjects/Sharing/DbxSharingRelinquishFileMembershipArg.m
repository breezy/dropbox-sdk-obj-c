///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingRelinquishFileMembershipArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingRelinquishFileMembershipArg 

- (instancetype)initWithFile:(NSString *)file {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);

    self = [super init];
    if (self != nil) {
        _file = file;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingRelinquishFileMembershipArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingRelinquishFileMembershipArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingRelinquishFileMembershipArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingRelinquishFileMembershipArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingRelinquishFileMembershipArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"file"] = [DbxStringSerializer serialize:valueObj.file];

    return jsonDict;
}

+ (DbxSharingRelinquishFileMembershipArg *)deserialize:(NSDictionary *)valueDict {
    NSString *file = [DbxStringSerializer deserialize:valueDict];

    return [[DbxSharingRelinquishFileMembershipArg alloc] initWithFile:file];
}

@end
