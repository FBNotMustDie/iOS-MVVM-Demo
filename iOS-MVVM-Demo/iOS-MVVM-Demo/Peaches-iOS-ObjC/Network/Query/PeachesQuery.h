//
//  PeachesQuery.h
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@interface PeachesQuery : NSObject

+ (void)postDataToURL:(NSString *)url param:(NSDictionary *)param returned:(void (^)(id responseObject, NSError *error))callback;

+ (void)cachelessGetFromURL:(NSString *)url
                      param:(NSDictionary *)param
                    isImage:(BOOL)isImage
                   returned:(void (^)(id responseObject, NSError *error))callback;
+ (void)getFromURL:(NSString *)url
             param:(NSDictionary *)param
       cachePolicy:(NSURLRequestCachePolicy)cachePolicy
      cacheTimeout:(NSTimeInterval)interval
           isImage:(BOOL)isImage
          returned:(void (^)(id responseObject, NSError *error))callback;

@end
