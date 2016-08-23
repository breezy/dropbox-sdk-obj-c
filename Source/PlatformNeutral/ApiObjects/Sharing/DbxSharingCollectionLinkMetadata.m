///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingCollectionLinkMetadata.h"
#import "DbxSharingLinkMetadata.h"
#import "DbxSharingVisibility.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingCollectionLinkMetadata 

- (instancetype)initWithUrl:(NSString *)url visibility:(DbxSharingVisibility *)visibility expires:(NSDate *)expires {

    self = [super initWithUrl:url visibility:visibility expires:expires];
    if (self != nil) {
    }
    return self;
}

- (instancetype)initWithUrl:(NSString *)url visibility:(DbxSharingVisibility *)visibility {
    return [self initWithUrl:url visibility:visibility expires:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingCollectionLinkMetadataSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingCollectionLinkMetadataSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingCollectionLinkMetadataSerializer serialize:self] description];
}

@end


@implementation DbxSharingCollectionLinkMetadataSerializer 

+ (NSDictionary *)serialize:(DbxSharingCollectionLinkMetadata *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"url"] = [DbxStringSerializer serialize:valueObj.url];
    jsonDict[@"visibility"] = [DbxSharingVisibilitySerializer serialize:valueObj.visibility];
    if (valueObj.expires != nil) {
        jsonDict[@"expires"] = [DbxNSDateSerializer serialize:valueObj.expires dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }

    return jsonDict;
}

+ (DbxSharingCollectionLinkMetadata *)deserialize:(NSDictionary *)valueDict {
    NSString *url = [DbxStringSerializer deserialize:valueDict];
    DbxSharingVisibility *visibility = [DbxSharingVisibilitySerializer deserialize:valueDict];
    NSDate *expires = valueDict != nil ? [DbxNSDateSerializer deserialize:valueDict dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;

    return [[DbxSharingCollectionLinkMetadata alloc] initWithUrl:url visibility:visibility expires:expires];
}

@end
