///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersAccount.h"
#import "DbxUsersAccountType.h"
#import "DbxUsersFullAccount.h"
#import "DbxUsersFullTeam.h"
#import "DbxUsersName.h"

@implementation DbxUsersFullAccount 

- (instancetype)initWithAccountId:(NSString *)accountId name:(DbxUsersName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled locale:(NSString *)locale referralLink:(NSString *)referralLink isPaired:(NSNumber *)isPaired accountType:(DbxUsersAccountType *)accountType profilePhotoUrl:(NSString *)profilePhotoUrl country:(NSString *)country team:(DbxUsersFullTeam *)team teamMemberId:(NSString *)teamMemberId {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:40] maxLength:[NSNumber numberWithInt:40] pattern:nil](accountId);
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:2] maxLength:nil pattern:nil](locale);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators stringValidator:[NSNumber numberWithInt:2] maxLength:[NSNumber numberWithInt:2] pattern:nil]](country);

    self = [super initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled profilePhotoUrl:profilePhotoUrl];
    if (self != nil) {
        _country = country;
        _locale = locale;
        _referralLink = referralLink;
        _team = team;
        _teamMemberId = teamMemberId;
        _isPaired = isPaired;
        _accountType = accountType;
    }
    return self;
}

- (instancetype)initWithAccountId:(NSString *)accountId name:(DbxUsersName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled locale:(NSString *)locale referralLink:(NSString *)referralLink isPaired:(NSNumber *)isPaired accountType:(DbxUsersAccountType *)accountType {
    return [self initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled locale:locale referralLink:referralLink isPaired:isPaired accountType:accountType profilePhotoUrl:nil country:nil team:nil teamMemberId:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxUsersFullAccountSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxUsersFullAccountSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxUsersFullAccountSerializer serialize:self] description];
}

@end


@implementation DbxUsersFullAccountSerializer 

+ (NSDictionary *)serialize:(DbxUsersFullAccount *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"account_id"] = [DbxStringSerializer serialize:valueObj.accountId];
    jsonDict[@"name"] = [DbxUsersNameSerializer serialize:valueObj.name];
    jsonDict[@"email"] = [DbxStringSerializer serialize:valueObj.email];
    jsonDict[@"email_verified"] = [DbxBoolSerializer serialize:valueObj.emailVerified];
    jsonDict[@"disabled"] = [DbxBoolSerializer serialize:valueObj.disabled];
    jsonDict[@"locale"] = [DbxStringSerializer serialize:valueObj.locale];
    jsonDict[@"referral_link"] = [DbxStringSerializer serialize:valueObj.referralLink];
    jsonDict[@"is_paired"] = [DbxBoolSerializer serialize:valueObj.isPaired];
    jsonDict[@"account_type"] = [DbxUsersAccountTypeSerializer serialize:valueObj.accountType];
    if (valueObj.profilePhotoUrl != nil) {
        jsonDict[@"profile_photo_url"] = [DbxStringSerializer serialize:valueObj.profilePhotoUrl];
    }
    if (valueObj.country != nil) {
        jsonDict[@"country"] = [DbxStringSerializer serialize:valueObj.country];
    }
    if (valueObj.team != nil) {
        jsonDict[@"team"] = [DbxUsersFullTeamSerializer serialize:valueObj.team];
    }
    if (valueObj.teamMemberId != nil) {
        jsonDict[@"team_member_id"] = [DbxStringSerializer serialize:valueObj.teamMemberId];
    }

    return jsonDict;
}

+ (DbxUsersFullAccount *)deserialize:(NSDictionary *)valueDict {
    NSString *accountId = [DbxStringSerializer deserialize:valueDict];
    DbxUsersName *name = [DbxUsersNameSerializer deserialize:valueDict];
    NSString *email = [DbxStringSerializer deserialize:valueDict];
    NSNumber *emailVerified = [DbxBoolSerializer deserialize:valueDict];
    NSNumber *disabled = [DbxBoolSerializer deserialize:valueDict];
    NSString *locale = [DbxStringSerializer deserialize:valueDict];
    NSString *referralLink = [DbxStringSerializer deserialize:valueDict];
    NSNumber *isPaired = [DbxBoolSerializer deserialize:valueDict];
    DbxUsersAccountType *accountType = [DbxUsersAccountTypeSerializer deserialize:valueDict];
    NSString *profilePhotoUrl = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;
    NSString *country = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;
    DbxUsersFullTeam *team = valueDict != nil ? [DbxUsersFullTeamSerializer deserialize:valueDict] : nil;
    NSString *teamMemberId = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;

    return [[DbxUsersFullAccount alloc] initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled locale:locale referralLink:referralLink isPaired:isPaired accountType:accountType profilePhotoUrl:profilePhotoUrl country:country team:team teamMemberId:teamMemberId];
}

@end
