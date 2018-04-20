//
//  Box.h
//  Assignment2
//
//  Created by 谷井朝美 on 2018-04-18.
//  Copyright © 2018 Asami Tanii. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;


- (instancetype) initWithHeight:(float)height andWidth:(float)width andLength:(float)length;
- (float) calculateVolume;
- (float) calculateHowManyTimesBoxFitsAnother:(Box *)one;

@end
