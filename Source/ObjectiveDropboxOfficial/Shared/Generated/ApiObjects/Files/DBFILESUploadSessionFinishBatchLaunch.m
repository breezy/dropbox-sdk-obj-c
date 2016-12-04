///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCLaunchResultBase.h"
#import "DBFILESUploadSessionFinishBatchLaunch.h"
#import "DBFILESUploadSessionFinishBatchResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESUploadSessionFinishBatchLaunch

@synthesize asyncJobId = _asyncJobId;
@synthesize complete = _complete;

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadSessionFinishBatchLaunchAsyncJobId;
    _asyncJobId = asyncJobId;
  }
  return self;
}

- (instancetype)initWithComplete:(DBFILESUploadSessionFinishBatchResult *)complete {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadSessionFinishBatchLaunchComplete;
    _complete = complete;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESUploadSessionFinishBatchLaunchOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)asyncJobId {
  if (![self isAsyncJobId]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBFILESUploadSessionFinishBatchLaunchAsyncJobId, but was %@.", [self tagName]];
  }
  return _asyncJobId;
}

- (DBFILESUploadSessionFinishBatchResult *)complete {
  if (![self isComplete]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBFILESUploadSessionFinishBatchLaunchComplete, but was %@.", [self tagName]];
  }
  return _complete;
}

#pragma mark - Tag state methods

- (BOOL)isAsyncJobId {
  return _tag == DBFILESUploadSessionFinishBatchLaunchAsyncJobId;
}

- (BOOL)isComplete {
  return _tag == DBFILESUploadSessionFinishBatchLaunchComplete;
}

- (BOOL)isOther {
  return _tag == DBFILESUploadSessionFinishBatchLaunchOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESUploadSessionFinishBatchLaunchAsyncJobId:
    return @"DBFILESUploadSessionFinishBatchLaunchAsyncJobId";
  case DBFILESUploadSessionFinishBatchLaunchComplete:
    return @"DBFILESUploadSessionFinishBatchLaunchComplete";
  case DBFILESUploadSessionFinishBatchLaunchOther:
    return @"DBFILESUploadSessionFinishBatchLaunchOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESUploadSessionFinishBatchLaunchSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESUploadSessionFinishBatchLaunchSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESUploadSessionFinishBatchLaunchSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESUploadSessionFinishBatchLaunchSerializer

+ (NSDictionary *)serialize:(DBFILESUploadSessionFinishBatchLaunch *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAsyncJobId]) {
    jsonDict[@"async_job_id"] = valueObj.asyncJobId;
    jsonDict[@".tag"] = @"async_job_id";
  } else if ([valueObj isComplete]) {
    jsonDict[@"complete"] = [[DBFILESUploadSessionFinishBatchResultSerializer serialize:valueObj.complete] mutableCopy];
    jsonDict[@".tag"] = @"complete";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESUploadSessionFinishBatchLaunch *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"async_job_id"]) {
    NSString *asyncJobId = valueDict[@"async_job_id"];
    return [[DBFILESUploadSessionFinishBatchLaunch alloc] initWithAsyncJobId:asyncJobId];
  } else if ([tag isEqualToString:@"complete"]) {
    DBFILESUploadSessionFinishBatchResult *complete =
        [DBFILESUploadSessionFinishBatchResultSerializer deserialize:valueDict];
    return [[DBFILESUploadSessionFinishBatchLaunch alloc] initWithComplete:complete];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESUploadSessionFinishBatchLaunch alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end