//
//  CustomCollectionViewCell.m
//  InstaKilo
//
//  Created by Thiago Heitling on 2016-01-27.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "CustomCollectionViewCell.h"
#import "Photo.h"

@interface CustomCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;

@end

@implementation CustomCollectionViewCell


//-(void)configureWithObject:(Photo *)photo {
//    self.cellImageView.image = photo.image;
//    
//}
//

-(void)setObject:(Photo *)photo {
    
    _photo = photo;
    [self setUp];
}

-(void)setUp {
    
    self.cellImageView.image = self.photo.image;
}

@end
