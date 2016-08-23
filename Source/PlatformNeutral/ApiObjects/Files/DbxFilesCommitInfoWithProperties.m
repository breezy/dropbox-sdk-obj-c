///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesCommitInfo.h"
#import "DbxFilesCommitInfoWithProperties.h"
#import "DbxFilesWriteMode.h"
#import "DbxPropertiesPropertyGroup.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesCommitInfoWithProperties 

- (instancetype)initWithPath:(NSString *)path mode:(DbxFilesWriteMode *)mode autorename:(NSNumber *)autorename clientModified:(NSDate *)clientModified mute:(NSNumber *)mute propertyGroups:(NSArray<DbxPropertiesPropertyGroup *> *)propertyGroups {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](path);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](propertyGroups);

    self = [super initWithPath:path mode:mode autorename:autorename clientModified:clientModified mute:mute];
    if (self != nil) {
        _propertyGroups = propertyGroups;
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path mode:nil autorename:nil clientModified:nil mute:nil propertyGroups:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesCommitInfoWithPropertiesSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesCommitInfoWithPropertiesSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesCommitInfoWithPropertiesSerializer serialize:self] description];
}

@end


@implementation DbxFilesCommitInfoWithPropertiesSerializer 

+ (NSDictionary *)serialize:(DbxFilesCommitInfoWithProperties *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = [DbxStringSerializer serialize:valueObj.path];
    jsonDict[@"mode"] = [DbxFilesWriteModeSerializer serialize:valueObj.mode];
    jsonDict[@"autorename"] = [DbxBoolSerializer serialize:valueObj.autorename];
    if (valueObj.clientModified != nil) {
        jsonDict[@"client_modified"] = [DbxNSDateSerializer serialize:valueObj.clientModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    jsonDict[@"mute"] = [DbxBoolSerializer serialize:valueObj.mute];
    if (valueObj.propertyGroups != nil) {
        jsonDict[@"property_groups"] = [DbxArraySerializer serialize:valueObj.propertyGroups withBlock:^id(id obj) { return [DbxPropertiesPropertyGroupSerializer serialize:obj]; }];
    }

    return jsonDict;
}

+ (DbxFilesCommitInfoWithProperties *)deserialize:(NSDictionary *)valueDict {
    NSString *path = [DbxStringSerializer deserialize:valueDict];
    DbxFilesWriteMode *mode = [DbxFilesWriteModeSerializer deserialize:valueDict];
    NSNumber *autorename = [DbxBoolSerializer deserialize:valueDict];
    NSDate *clientModified = valueDict != nil ? [DbxNSDateSerializer deserialize:valueDict dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSNumber *mute = [DbxBoolSerializer deserialize:valueDict];
    NSArray<DbxPropertiesPropertyGroup *> *propertyGroups = valueDict != nil ? [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxPropertiesPropertyGroupSerializer deserialize:obj]; }] : nil;

    return [[DbxFilesCommitInfoWithProperties alloc] initWithPath:path mode:mode autorename:autorename clientModified:clientModified mute:mute propertyGroups:propertyGroups];
}

@end
