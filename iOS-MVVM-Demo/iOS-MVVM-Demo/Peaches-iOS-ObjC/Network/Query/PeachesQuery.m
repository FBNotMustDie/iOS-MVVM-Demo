//
//  PeachesQuery.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "PeachesQuery.h"

@implementation PeachesQuery

+(void)postDataToURL:(NSString *)url param:(NSDictionary *)param returned:(void (^)(id responseObject, NSError *error))callback {
    [SimpleNetworking postJsonToURL:url param:param returned:^(id responseObject, NSError *error) {
        if (error) {
            callback(nil,error);
        }
        else {
            NSError *error = nil;
            callback(responseObject,error);
        }
    }];
}
+(void)cachelessGetFromURL:(NSString *)url param:(NSDictionary *)param isImage:(BOOL)isImage returned:(void (^)(id responseObject, NSError *error))callback {
    if (isImage) {
        [SimpleNetworking getImageCachelessFromURL:url param:param returned:^(UIImage *responseImage, NSError *error) {
            if (error) {
                callback(nil,error);
            }
            else {
                NSError *error = nil;
                callback(responseImage,error);
            }
        }];
    }
    else {
        [SimpleNetworking getJsonCachelessFromURL:url param:param returned:^(id responseObject, NSError *error) {
            if (error) {
                callback(nil,error);
            }
            else {
                NSError *error = nil;
                callback(responseObject,error);
            }
        }];
    }
}

+(void)getFromURL:(NSString *)url param:(NSDictionary *)param cachePolicy:(NSURLRequestCachePolicy)cachePolicy cacheTimeout:(NSTimeInterval)interval isImage:(BOOL)isImage returned:(void (^)(id responseObject, NSError *error))callback {
    if (isImage) {
        [SimpleNetworking getImageFromURL:url param:param cachePolicy:cachePolicy cacheTimeout:interval returned:^(UIImage *responseImage, NSError *error) {
            if (error) {
                callback(nil,error);
            }
            else {
                NSError *error = nil;
                callback(responseImage,error);
            }
        }];
    }
    else {
        [SimpleNetworking getJsonFromURL:url param:param cachePolicy:cachePolicy cacheTimeout:interval returned:^(id responseObject, NSError *error) {
            if (error) {
                callback(nil,error);
            }
            else {
                NSError *error = nil;
                callback(responseObject,error);
            }
        }];
    }
}

@end
