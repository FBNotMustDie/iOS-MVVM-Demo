//
//  UserModel.m
//
//  Created by Geman Wu on 4/3/15
//  Copyright (c) 2015 USC. All rights reserved.
//

#import "UserModel.h"


NSString *const kUserModelLocation = @"location";
NSString *const kUserModelPublicGists = @"public_gists";
NSString *const kUserModelHireable = @"hireable";
NSString *const kUserModelFollowingUrl = @"following_url";
NSString *const kUserModelUrl = @"url";
NSString *const kUserModelCompany = @"company";
NSString *const kUserModelReceivedEventsUrl = @"received_events_url";
NSString *const kUserModelEventsUrl = @"events_url";
NSString *const kUserModelUpdatedAt = @"updated_at";
NSString *const kUserModelBio = @"bio";
NSString *const kUserModelAvatarUrl = @"avatar_url";
NSString *const kUserModelName = @"name";
NSString *const kUserModelType = @"type";
NSString *const kUserModelOrganizationsUrl = @"organizations_url";
NSString *const kUserModelSubscriptionsUrl = @"subscriptions_url";
NSString *const kUserModelId = @"id";
NSString *const kUserModelReposUrl = @"repos_url";
NSString *const kUserModelStarredUrl = @"starred_url";
NSString *const kUserModelGistsUrl = @"gists_url";
NSString *const kUserModelSiteAdmin = @"site_admin";
NSString *const kUserModelEmail = @"email";
NSString *const kUserModelLogin = @"login";
NSString *const kUserModelBlog = @"blog";
NSString *const kUserModelPublicRepos = @"public_repos";
NSString *const kUserModelFollowers = @"followers";
NSString *const kUserModelFollowing = @"following";
NSString *const kUserModelCreatedAt = @"created_at";
NSString *const kUserModelGravatarId = @"gravatar_id";
NSString *const kUserModelFollowersUrl = @"followers_url";
NSString *const kUserModelHtmlUrl = @"html_url";


@interface UserModel ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation UserModel

@synthesize location = _location;
@synthesize publicGists = _publicGists;
@synthesize hireable = _hireable;
@synthesize followingUrl = _followingUrl;
@synthesize url = _url;
@synthesize company = _company;
@synthesize receivedEventsUrl = _receivedEventsUrl;
@synthesize eventsUrl = _eventsUrl;
@synthesize updatedAt = _updatedAt;
@synthesize bio = _bio;
@synthesize avatarUrl = _avatarUrl;
@synthesize name = _name;
@synthesize type = _type;
@synthesize organizationsUrl = _organizationsUrl;
@synthesize subscriptionsUrl = _subscriptionsUrl;
@synthesize internalBaseClassIdentifier = _internalBaseClassIdentifier;
@synthesize reposUrl = _reposUrl;
@synthesize starredUrl = _starredUrl;
@synthesize gistsUrl = _gistsUrl;
@synthesize siteAdmin = _siteAdmin;
@synthesize email = _email;
@synthesize login = _login;
@synthesize blog = _blog;
@synthesize publicRepos = _publicRepos;
@synthesize followers = _followers;
@synthesize following = _following;
@synthesize createdAt = _createdAt;
@synthesize gravatarId = _gravatarId;
@synthesize followersUrl = _followersUrl;
@synthesize htmlUrl = _htmlUrl;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.location = [self objectOrNilForKey:kUserModelLocation fromDictionary:dict];
            self.publicGists = [[self objectOrNilForKey:kUserModelPublicGists fromDictionary:dict] doubleValue];
            self.hireable = [[self objectOrNilForKey:kUserModelHireable fromDictionary:dict] boolValue];
            self.followingUrl = [self objectOrNilForKey:kUserModelFollowingUrl fromDictionary:dict];
            self.url = [self objectOrNilForKey:kUserModelUrl fromDictionary:dict];
            self.company = [self objectOrNilForKey:kUserModelCompany fromDictionary:dict];
            self.receivedEventsUrl = [self objectOrNilForKey:kUserModelReceivedEventsUrl fromDictionary:dict];
            self.eventsUrl = [self objectOrNilForKey:kUserModelEventsUrl fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kUserModelUpdatedAt fromDictionary:dict];
            self.bio = [self objectOrNilForKey:kUserModelBio fromDictionary:dict];
            self.avatarUrl = [self objectOrNilForKey:kUserModelAvatarUrl fromDictionary:dict];
            self.name = [self objectOrNilForKey:kUserModelName fromDictionary:dict];
            self.type = [self objectOrNilForKey:kUserModelType fromDictionary:dict];
            self.organizationsUrl = [self objectOrNilForKey:kUserModelOrganizationsUrl fromDictionary:dict];
            self.subscriptionsUrl = [self objectOrNilForKey:kUserModelSubscriptionsUrl fromDictionary:dict];
            self.internalBaseClassIdentifier = [[self objectOrNilForKey:kUserModelId fromDictionary:dict] doubleValue];
            self.reposUrl = [self objectOrNilForKey:kUserModelReposUrl fromDictionary:dict];
            self.starredUrl = [self objectOrNilForKey:kUserModelStarredUrl fromDictionary:dict];
            self.gistsUrl = [self objectOrNilForKey:kUserModelGistsUrl fromDictionary:dict];
            self.siteAdmin = [[self objectOrNilForKey:kUserModelSiteAdmin fromDictionary:dict] boolValue];
            self.email = [self objectOrNilForKey:kUserModelEmail fromDictionary:dict];
            self.login = [self objectOrNilForKey:kUserModelLogin fromDictionary:dict];
            self.blog = [self objectOrNilForKey:kUserModelBlog fromDictionary:dict];
            self.publicRepos = [[self objectOrNilForKey:kUserModelPublicRepos fromDictionary:dict] doubleValue];
            self.followers = [[self objectOrNilForKey:kUserModelFollowers fromDictionary:dict] doubleValue];
            self.following = [[self objectOrNilForKey:kUserModelFollowing fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kUserModelCreatedAt fromDictionary:dict];
            self.gravatarId = [self objectOrNilForKey:kUserModelGravatarId fromDictionary:dict];
            self.followersUrl = [self objectOrNilForKey:kUserModelFollowersUrl fromDictionary:dict];
            self.htmlUrl = [self objectOrNilForKey:kUserModelHtmlUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.location forKey:kUserModelLocation];
    [mutableDict setValue:[NSNumber numberWithDouble:self.publicGists] forKey:kUserModelPublicGists];
    [mutableDict setValue:[NSNumber numberWithBool:self.hireable] forKey:kUserModelHireable];
    [mutableDict setValue:self.followingUrl forKey:kUserModelFollowingUrl];
    [mutableDict setValue:self.url forKey:kUserModelUrl];
    [mutableDict setValue:self.company forKey:kUserModelCompany];
    [mutableDict setValue:self.receivedEventsUrl forKey:kUserModelReceivedEventsUrl];
    [mutableDict setValue:self.eventsUrl forKey:kUserModelEventsUrl];
    [mutableDict setValue:self.updatedAt forKey:kUserModelUpdatedAt];
    [mutableDict setValue:self.bio forKey:kUserModelBio];
    [mutableDict setValue:self.avatarUrl forKey:kUserModelAvatarUrl];
    [mutableDict setValue:self.name forKey:kUserModelName];
    [mutableDict setValue:self.type forKey:kUserModelType];
    [mutableDict setValue:self.organizationsUrl forKey:kUserModelOrganizationsUrl];
    [mutableDict setValue:self.subscriptionsUrl forKey:kUserModelSubscriptionsUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.internalBaseClassIdentifier] forKey:kUserModelId];
    [mutableDict setValue:self.reposUrl forKey:kUserModelReposUrl];
    [mutableDict setValue:self.starredUrl forKey:kUserModelStarredUrl];
    [mutableDict setValue:self.gistsUrl forKey:kUserModelGistsUrl];
    [mutableDict setValue:[NSNumber numberWithBool:self.siteAdmin] forKey:kUserModelSiteAdmin];
    [mutableDict setValue:self.email forKey:kUserModelEmail];
    [mutableDict setValue:self.login forKey:kUserModelLogin];
    [mutableDict setValue:self.blog forKey:kUserModelBlog];
    [mutableDict setValue:[NSNumber numberWithDouble:self.publicRepos] forKey:kUserModelPublicRepos];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followers] forKey:kUserModelFollowers];
    [mutableDict setValue:[NSNumber numberWithDouble:self.following] forKey:kUserModelFollowing];
    [mutableDict setValue:self.createdAt forKey:kUserModelCreatedAt];
    [mutableDict setValue:self.gravatarId forKey:kUserModelGravatarId];
    [mutableDict setValue:self.followersUrl forKey:kUserModelFollowersUrl];
    [mutableDict setValue:self.htmlUrl forKey:kUserModelHtmlUrl];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.location = [aDecoder decodeObjectForKey:kUserModelLocation];
    self.publicGists = [aDecoder decodeDoubleForKey:kUserModelPublicGists];
    self.hireable = [aDecoder decodeBoolForKey:kUserModelHireable];
    self.followingUrl = [aDecoder decodeObjectForKey:kUserModelFollowingUrl];
    self.url = [aDecoder decodeObjectForKey:kUserModelUrl];
    self.company = [aDecoder decodeObjectForKey:kUserModelCompany];
    self.receivedEventsUrl = [aDecoder decodeObjectForKey:kUserModelReceivedEventsUrl];
    self.eventsUrl = [aDecoder decodeObjectForKey:kUserModelEventsUrl];
    self.updatedAt = [aDecoder decodeObjectForKey:kUserModelUpdatedAt];
    self.bio = [aDecoder decodeObjectForKey:kUserModelBio];
    self.avatarUrl = [aDecoder decodeObjectForKey:kUserModelAvatarUrl];
    self.name = [aDecoder decodeObjectForKey:kUserModelName];
    self.type = [aDecoder decodeObjectForKey:kUserModelType];
    self.organizationsUrl = [aDecoder decodeObjectForKey:kUserModelOrganizationsUrl];
    self.subscriptionsUrl = [aDecoder decodeObjectForKey:kUserModelSubscriptionsUrl];
    self.internalBaseClassIdentifier = [aDecoder decodeDoubleForKey:kUserModelId];
    self.reposUrl = [aDecoder decodeObjectForKey:kUserModelReposUrl];
    self.starredUrl = [aDecoder decodeObjectForKey:kUserModelStarredUrl];
    self.gistsUrl = [aDecoder decodeObjectForKey:kUserModelGistsUrl];
    self.siteAdmin = [aDecoder decodeBoolForKey:kUserModelSiteAdmin];
    self.email = [aDecoder decodeObjectForKey:kUserModelEmail];
    self.login = [aDecoder decodeObjectForKey:kUserModelLogin];
    self.blog = [aDecoder decodeObjectForKey:kUserModelBlog];
    self.publicRepos = [aDecoder decodeDoubleForKey:kUserModelPublicRepos];
    self.followers = [aDecoder decodeDoubleForKey:kUserModelFollowers];
    self.following = [aDecoder decodeDoubleForKey:kUserModelFollowing];
    self.createdAt = [aDecoder decodeObjectForKey:kUserModelCreatedAt];
    self.gravatarId = [aDecoder decodeObjectForKey:kUserModelGravatarId];
    self.followersUrl = [aDecoder decodeObjectForKey:kUserModelFollowersUrl];
    self.htmlUrl = [aDecoder decodeObjectForKey:kUserModelHtmlUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_location forKey:kUserModelLocation];
    [aCoder encodeDouble:_publicGists forKey:kUserModelPublicGists];
    [aCoder encodeBool:_hireable forKey:kUserModelHireable];
    [aCoder encodeObject:_followingUrl forKey:kUserModelFollowingUrl];
    [aCoder encodeObject:_url forKey:kUserModelUrl];
    [aCoder encodeObject:_company forKey:kUserModelCompany];
    [aCoder encodeObject:_receivedEventsUrl forKey:kUserModelReceivedEventsUrl];
    [aCoder encodeObject:_eventsUrl forKey:kUserModelEventsUrl];
    [aCoder encodeObject:_updatedAt forKey:kUserModelUpdatedAt];
    [aCoder encodeObject:_bio forKey:kUserModelBio];
    [aCoder encodeObject:_avatarUrl forKey:kUserModelAvatarUrl];
    [aCoder encodeObject:_name forKey:kUserModelName];
    [aCoder encodeObject:_type forKey:kUserModelType];
    [aCoder encodeObject:_organizationsUrl forKey:kUserModelOrganizationsUrl];
    [aCoder encodeObject:_subscriptionsUrl forKey:kUserModelSubscriptionsUrl];
    [aCoder encodeDouble:_internalBaseClassIdentifier forKey:kUserModelId];
    [aCoder encodeObject:_reposUrl forKey:kUserModelReposUrl];
    [aCoder encodeObject:_starredUrl forKey:kUserModelStarredUrl];
    [aCoder encodeObject:_gistsUrl forKey:kUserModelGistsUrl];
    [aCoder encodeBool:_siteAdmin forKey:kUserModelSiteAdmin];
    [aCoder encodeObject:_email forKey:kUserModelEmail];
    [aCoder encodeObject:_login forKey:kUserModelLogin];
    [aCoder encodeObject:_blog forKey:kUserModelBlog];
    [aCoder encodeDouble:_publicRepos forKey:kUserModelPublicRepos];
    [aCoder encodeDouble:_followers forKey:kUserModelFollowers];
    [aCoder encodeDouble:_following forKey:kUserModelFollowing];
    [aCoder encodeObject:_createdAt forKey:kUserModelCreatedAt];
    [aCoder encodeObject:_gravatarId forKey:kUserModelGravatarId];
    [aCoder encodeObject:_followersUrl forKey:kUserModelFollowersUrl];
    [aCoder encodeObject:_htmlUrl forKey:kUserModelHtmlUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    UserModel *copy = [[UserModel alloc] init];
    
    if (copy) {

        copy.location = [self.location copyWithZone:zone];
        copy.publicGists = self.publicGists;
        copy.hireable = self.hireable;
        copy.followingUrl = [self.followingUrl copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.company = [self.company copyWithZone:zone];
        copy.receivedEventsUrl = [self.receivedEventsUrl copyWithZone:zone];
        copy.eventsUrl = [self.eventsUrl copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.bio = [self.bio copyWithZone:zone];
        copy.avatarUrl = [self.avatarUrl copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.organizationsUrl = [self.organizationsUrl copyWithZone:zone];
        copy.subscriptionsUrl = [self.subscriptionsUrl copyWithZone:zone];
        copy.internalBaseClassIdentifier = self.internalBaseClassIdentifier;
        copy.reposUrl = [self.reposUrl copyWithZone:zone];
        copy.starredUrl = [self.starredUrl copyWithZone:zone];
        copy.gistsUrl = [self.gistsUrl copyWithZone:zone];
        copy.siteAdmin = self.siteAdmin;
        copy.email = [self.email copyWithZone:zone];
        copy.login = [self.login copyWithZone:zone];
        copy.blog = [self.blog copyWithZone:zone];
        copy.publicRepos = self.publicRepos;
        copy.followers = self.followers;
        copy.following = self.following;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.gravatarId = [self.gravatarId copyWithZone:zone];
        copy.followersUrl = [self.followersUrl copyWithZone:zone];
        copy.htmlUrl = [self.htmlUrl copyWithZone:zone];
    }
    
    return copy;
}


@end
