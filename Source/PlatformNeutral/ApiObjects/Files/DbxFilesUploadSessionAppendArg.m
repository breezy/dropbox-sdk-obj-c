///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesUploadSessionAppendArg.h"
#import "DbxFilesUploadSessionCursor.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesUploadSessionAppendArg 

- (instancetype)initWithCursor:(DbxFilesUploadSessionCursor *)cursor close:(NSNumber *)close {

    self = [super init];
    if (self != nil) {
        _cursor = cursor;
        _close = close ?: @NO;
    }
    return self;
}

- (instancetype)initWithCursor:(DbxFilesUploadSessionCursor *)cursor {
    return [self initWithCursor:cursor close:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesUploadSessionAppendArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesUploadSessionAppendArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesUploadSessionAppendArgSerializer serialize:self] description];
}

@end


@implementation DbxFilesUploadSessionAppendArgSerializer 

+ (NSDictionary *)serialize:(DbxFilesUploadSessionAppendArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"cursor"] = [DbxFilesUploadSessionCursorSerializer serialize:valueObj.cursor];
    jsonDict[@"close"] = [DbxBoolSerializer serialize:valueObj.close];

    return jsonDict;
}

+ (DbxFilesUploadSessionAppendArg *)deserialize:(NSDictionary *)valueDict {
    DbxFilesUploadSessionCursor *cursor = [DbxFilesUploadSessionCursorSerializer deserialize:valueDict];
    NSNumber *close = [DbxBoolSerializer deserialize:valueDict];

    return [[DbxFilesUploadSessionAppendArg alloc] initWithCursor:cursor close:close];
}

@end
