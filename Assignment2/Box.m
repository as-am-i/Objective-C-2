//
//  Box.m
//  Assignment2
//
//  Created by 谷井朝美 on 2018-04-18.
//  Copyright © 2018 Asami Tanii. All rights reserved.
//

#import "Box.h"


@implementation Box

- (instancetype) initWithHeight:(float)height andWidth:(float)width andLength:(float)length{
    self = [super init];
    if (self) {
        self.height = height;
        self.width = width;
        self.length = length;
    }
    return self;
}

- (float) calculateVolume{
    // Volume = Length x Width x Height
    float volume = [self height] * [self width] * [self length];
    return volume;
}

- (float) calculateHowManyTimesBoxFitsAnother:(Box *)one{
    // which box has a greater volume
    float num = 0;
    float oneVolume = [self calculateVolume];
    float anotherVolume = [one calculateVolume];
    
    if (oneVolume == anotherVolume) {
        num = 1;
    } else if (oneVolume > anotherVolume) {
        num = oneVolume / anotherVolume;
    } else {
        num = anotherVolume / oneVolume;
    }
    return num;
}
@end
