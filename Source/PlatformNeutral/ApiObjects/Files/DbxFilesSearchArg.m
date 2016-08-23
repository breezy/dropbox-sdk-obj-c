///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesSearchArg.h"
#import "DbxFilesSearchMode.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesSearchArg 

- (instancetype)initWithPath:(NSString *)path query:(NSString *)query start:(NSNumber *)start maxResults:(NSNumber *)maxResults mode:(DbxFilesSearchMode *)mode {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)?|(ns:[0-9]+(/.*)?)"](path);
    [DbxStoneValidators numericValidator:[NSNumber numberWithInt:1] maxValue:[NSNumber numberWithInt:1000]](maxResults ?: [NSNumber numberWithInt:100]);

    self = [super init];
    if (self != nil) {
        _path = path;
        _query = query;
        _start = start ?: [NSNumber numberWithInt:0];
        _maxResults = maxResults ?: [NSNumber numberWithInt:100];
        _mode = mode ?: [[DbxFilesSearchMode alloc] initWithFilename];
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path query:(NSString *)query {
    return [self initWithPath:path query:query start:nil maxResults:nil mode:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesSearchArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesSearchArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesSearchArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesSearchArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesSearchArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"query"] = [DbxStringSerializer serialize:valueObj.query];
    jsonDict[@"start"] = [DbxNSNumberSerializer serialize:valueObj.start];
    jsonDict[@"max_results"] = [DbxNSNumberSerializer serialize:valueObj.maxResults];
    jsonDict[@"mode"] = [DbxFilesSearchModeSerializer serialize:valueObj.mode];

    return jsonDict;
}

+ (DbxFilesSearchArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict];
    NSString *query = [DbxStringSerializer deserialize:valueDict];
    NSNumber *start = [DbxNSNumberSerializer deserialize:valueDict];
    NSNumber *maxResults = [DbxNSNumberSerializer deserialize:valueDict];
    DbxFilesSearchMode *mode = [DbxFilesSearchModeSerializer deserialize:valueDict];

    return [[DbxFilesSearchArg alloc] initWithPath:path query:query start:start maxResults:maxResults mode:mode];
}

@end
