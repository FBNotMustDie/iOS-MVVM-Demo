//
//  UserModel.h
//
//  Created by Geman Wu on 4/3/15
//  Copyright (c) 2015 USC. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface UserModel : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *location;
@property (nonatomic, assign) double publicGists;
@property (nonatomic, assign) BOOL hireable;
@property (nonatomic, strong) NSString *followingUrl;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *company;
@property (nonatomic, strong) NSString *receivedEventsUrl;
@property (nonatomic, strong) NSString *eventsUrl;
@property (nonatomic, strong) NSString *updatedAt;
@property (nonatomic, strong) NSString *bio;
@property (nonatomic, strong) NSString *avatarUrl;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *organizationsUrl;
@property (nonatomic, strong) NSString *subscriptionsUrl;
@property (nonatomic, assign) double internalBaseClassIdentifier;
@property (nonatomic, strong) NSString *reposUrl;
@property (nonatomic, strong) NSString *starredUrl;
@property (nonatomic, strong) NSString *gistsUrl;
@property (nonatomic, assign) BOOL siteAdmin;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *login;
@property (nonatomic, strong) NSString *blog;
@property (nonatomic, assign) double publicRepos;
@property (nonatomic, assign) double followers;
@property (nonatomic, assign) double following;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *gravatarId;
@property (nonatomic, strong) NSString *followersUrl;
@property (nonatomic, strong) NSString *htmlUrl;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
