///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesListRevisionsArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesListRevisionsArg 

- (instancetype)initWithPath:(NSString *)path limit:(NSNumber *)limit {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*|id:.*|(ns:[0-9]+(/.*)?)"](path);
    [DbxStoneValidators numericValidator:[NSNumber numberWithInt:1] maxValue:[NSNumber numberWithInt:100]](limit ?: [NSNumber numberWithInt:10]);

    self = [super init];
    if (self != nil) {
        _path = path;
        _limit = limit ?: [NSNumber numberWithInt:10];
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path limit:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesListRevisionsArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesListRevisionsArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesListRevisionsArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesListRevisionsArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesListRevisionsArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"limit"] = [DbxNSNumberSerializer serialize:valueObj.limit];

    return jsonDict;
}

+ (DbxFilesListRevisionsArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict];
    NSNumber *limit = [DbxNSNumberSerializer deserialize:valueDict];

    return [[DbxFilesListRevisionsArg alloc] initWithPath:path limit:limit];
}

@end
