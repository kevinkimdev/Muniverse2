//
//  NextBusClient.h
//  muniverse2
//
//  Created by Nick O'Neill on 8/11/12.
//  Copyright (c) 2012 Nick O'Neill. All rights reserved.
//

#import "AFHTTPClient.h"

@interface NextBusClient : AFHTTPClient

typedef enum {
    kDirectionInbound,
    kDirectionOutbound
} DirectionTypes;

- (void)predictionForLineTag:(NSString *)lineTag atStopId:(int)stopId withSuccess:(void(^)(NSArray *els))success andFailure:(void(^)(NSError *err))failure;

+ (NSString *)truncatedDescription:(NSString *)desc;
+ (NSString *)nameStripShort:(NSString *)name;
+ (NSString *)formattedTimeFromNumer:(NSNumber *)number;
+ (NSString *)formattedSubtitleFromNumer:(NSString *)number;

@end
