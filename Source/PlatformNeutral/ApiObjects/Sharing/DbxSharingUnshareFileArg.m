///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingUnshareFileArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingUnshareFileArg 

- (instancetype)initWithFile:(NSString *)file {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"((/|id:).*|nspath:[^:]*:[^:]*)"](file);

    self = [super init];
    if (self != nil) {
        _file = file;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingUnshareFileArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingUnshareFileArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingUnshareFileArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingUnshareFileArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingUnshareFileArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"file"] = [DbxStringSerializer serialize:valueObj.file];

    return jsonDict;
}

+ (DbxSharingUnshareFileArg *)deserialize:(NSDictionary *)valueDict {
    NSString *file = [DbxStringSerializer deserialize:valueDict];

    return [[DbxSharingUnshareFileArg alloc] initWithFile:file];
}

@end
