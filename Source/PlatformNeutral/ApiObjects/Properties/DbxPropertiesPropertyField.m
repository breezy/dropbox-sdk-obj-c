///
/// Auto-generated by Stone, do not modify.
///

#import "DbxPropertiesPropertyField.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxPropertiesPropertyField 

- (instancetype)initWithName:(NSString *)name value:(NSString *)value {

    self = [super init];
    if (self != nil) {
        _name = name;
        _value = value;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxPropertiesPropertyFieldSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxPropertiesPropertyFieldSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxPropertiesPropertyFieldSerializer serialize:self] description];
}

@end


@implementation DbxPropertiesPropertyFieldSerializer 

+ (NSDictionary *)serialize:(DbxPropertiesPropertyField *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = [DbxStringSerializer serialize:valueObj.name];
    jsonDict[@"value"] = [DbxStringSerializer serialize:valueObj.value];

    return jsonDict;
}

+ (DbxPropertiesPropertyField *)deserialize:(NSDictionary *)valueDict {
    NSString *name = [DbxStringSerializer deserialize:valueDict];
    NSString *value = [DbxStringSerializer deserialize:valueDict];

    return [[DbxPropertiesPropertyField alloc] initWithName:name value:value];
}

@end
