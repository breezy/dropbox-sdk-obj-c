///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesGetCopyReferenceArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesGetCopyReferenceArg 

- (instancetype)initWithPath:(NSString *)path {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesGetCopyReferenceArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesGetCopyReferenceArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesGetCopyReferenceArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesGetCopyReferenceArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesGetCopyReferenceArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];

    return jsonDict;
}

+ (DbxFilesGetCopyReferenceArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict];

    return [[DbxFilesGetCopyReferenceArg alloc] initWithPath:path];
}

@end
