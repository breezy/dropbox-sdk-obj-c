///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesListFolderLongpollResult.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesListFolderLongpollResult 

- (instancetype)initWithChanges:(NSNumber *)changes backoff:(NSNumber *)backoff {

    self = [super init];
    if (self != nil) {
        _changes = changes;
        _backoff = backoff;
    }
    return self;
}

- (instancetype)initWithChanges:(NSNumber *)changes {
    return [self initWithChanges:changes backoff:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesListFolderLongpollResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesListFolderLongpollResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesListFolderLongpollResultSerializer serialize:self] description];
}

@end


@implementation DbxFilesListFolderLongpollResultSerializer 

+ (NSDictionary *)serialize:(DbxFilesListFolderLongpollResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"changes"] = [DbxBoolSerializer serialize:valueObj.changes];
    if (valueObj.backoff != nil) {
        jsonDict[@"backoff"] = [DbxNSNumberSerializer serialize:valueObj.backoff];
    }

    return jsonDict;
}

+ (DbxFilesListFolderLongpollResult *)deserialize:(NSDictionary *)valueDict {
    NSNumber *changes = [DbxBoolSerializer deserialize:valueDict];
    NSNumber *backoff = valueDict != nil ? [DbxNSNumberSerializer deserialize:valueDict] : nil;

    return [[DbxFilesListFolderLongpollResult alloc] initWithChanges:changes backoff:backoff];
}

@end
