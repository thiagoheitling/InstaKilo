//
//  Photo.m
//  InstaKilo
//
//  Created by Thiago Heitling on 2016-01-27.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (instancetype)initWithTitle:(NSString *)title location:(NSString *)location andImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        _title = title;
        _location = location;
        _image = image;
    }
    return self;
}

@end
