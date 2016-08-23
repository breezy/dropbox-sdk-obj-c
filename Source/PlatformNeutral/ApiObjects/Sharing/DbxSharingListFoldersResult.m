///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFoldersResult.h"
#import "DbxSharingSharedFolderMetadata.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFoldersResult 

- (instancetype)initWithEntries:(NSArray<DbxSharingSharedFolderMetadata *> *)entries cursor:(NSString *)cursor {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](entries);

    self = [super init];
    if (self != nil) {
        _entries = entries;
        _cursor = cursor;
    }
    return self;
}

- (instancetype)initWithEntries:(NSArray<DbxSharingSharedFolderMetadata *> *)entries {
    return [self initWithEntries:entries cursor:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFoldersResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFoldersResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFoldersResultSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFoldersResultSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFoldersResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"entries"] = [DbxArraySerializer serialize:valueObj.entries withBlock:^id(id obj) { return [DbxSharingSharedFolderMetadataSerializer serialize:obj]; }];
    if (valueObj.cursor != nil) {
        jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    }

    return jsonDict;
}

+ (DbxSharingListFoldersResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxSharingSharedFolderMetadata *> *entries = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxSharingSharedFolderMetadataSerializer deserialize:obj]; }];
    NSString *cursor = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;

    return [[DbxSharingListFoldersResult alloc] initWithEntries:entries cursor:cursor];
}

@end
