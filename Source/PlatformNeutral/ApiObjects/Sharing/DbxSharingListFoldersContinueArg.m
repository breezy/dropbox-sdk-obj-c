///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFoldersContinueArg.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFoldersContinueArg 

- (instancetype)initWithCursor:(NSString *)cursor {

    self = [super init];
    if (self != nil) {
        _cursor = cursor;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFoldersContinueArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFoldersContinueArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFoldersContinueArgSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFoldersContinueArgSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFoldersContinueArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];

    return jsonDict;
}

+ (DbxSharingListFoldersContinueArg *)deserialize:(NSDictionary *)valueDict {
    NSString *cursor = [DbxStringSerializer deserialize:valueDict];

    return [[DbxSharingListFoldersContinueArg alloc] initWithCursor:cursor];
}

@end
