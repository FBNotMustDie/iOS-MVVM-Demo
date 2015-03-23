//
//  PeachesQuery.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "PeachesQuery.h"

@implementation PeachesQuery

+(void)postDataToURL:(NSString *)url param:(NSDictionary *)param returned:(void (^)(id responseObject))callback {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        callback(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        callback(@{@"error":error});
    }];
}

+(void)cachelessGetFromURL:(NSString *)url param:(NSDictionary *)param isImage:(BOOL)isImage returned:(void (^)(id responseObject))callback {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setCachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData];
    if (isImage) {
        manager.responseSerializer = [AFImageResponseSerializer serializer];
    }
    else {
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    [manager GET:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        callback(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        callback(@{@"error":error});
    }];
}

+(void)getFromURL:(NSString *)url param:(NSDictionary *)param cachePolicy:(NSURLRequestCachePolicy)cachePolicy cacheTimeout:(NSTimeInterval)interval isImage:(BOOL)isImage returned:(void (^)(id responseObject))callback {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setCachePolicy:cachePolicy];
    [manager.requestSerializer setTimeoutInterval:interval];
    if (isImage) {
        manager.responseSerializer = [AFImageResponseSerializer serializer];
    }
    else {
        manager.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    [manager GET:url parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        callback(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        callback(@{@"error":error});
    }];
}

@end
