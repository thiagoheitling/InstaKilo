//
//  CollectionViewController.m
//  InstaKilo
//
//  Created by Thiago Heitling on 2016-01-27.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "CollectionViewController.h"
#import "CustomCollectionViewCell.h"
#import "Photo.h"

@interface CollectionViewController ()

@property (nonatomic)UICollectionViewFlowLayout *flowLayout;
@property (nonatomic)NSArray *photosCollectionArray;

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Photo *photo1 = [[Photo alloc] initWithTitle:@"Thiago profile img" location:@"Vancouver" andImage:[UIImage imageNamed:@"32511_124578274229191_1646015_n.jpg"]];
    Photo *photo2 = [[Photo alloc] initWithTitle:@"Bus blak&white" location:@"Montreal" andImage:[UIImage imageNamed:@"IMG_0615.jpg"]];
    Photo *photo3 = [[Photo alloc] initWithTitle:@"Intership in Canada" location:@"Vancouver" andImage:[UIImage imageNamed:@"IMG_0619.jpg"]];
    Photo *photo4 = [[Photo alloc] initWithTitle:@"Sending letter to Santa" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0620.jpg"]];
    Photo *photo5 = [[Photo alloc] initWithTitle:@"Tantalus Provincial Park" location:@"Squamish" andImage:[UIImage imageNamed:@"IMG_0623.jpg"]];
    Photo *photo6 = [[Photo alloc] initWithTitle:@"Santa and reindeers" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0629.jpg"]];
    Photo *photo7 = [[Photo alloc] initWithTitle:@"My kids with nice masks" location:@"Richmond" andImage:[UIImage imageNamed:@"IMG_0631.jpg"]];
    Photo *photo8 = [[Photo alloc] initWithTitle:@"Kid playing with my camera" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0652.jpg"]];
    Photo *photo9 = [[Photo alloc] initWithTitle:@"My office" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0676.jpg"]];
    Photo *photo10 = [[Photo alloc] initWithTitle:@"First X in Vancouver" location:@"Burnaby" andImage:[UIImage imageNamed:@"IMG_0683.jpg"]];
    
    self.photosCollectionArray = [NSArray arrayWithObjects:photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9, photo10, nil];

    
    self.flowLayout = [[UICollectionViewFlowLayout alloc] init];
    self.flowLayout.itemSize = CGSizeMake(300, 300);
    self.flowLayout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    self.flowLayout.minimumInteritemSpacing = 5;
    self.flowLayout.minimumLineSpacing = 10;
//    self.flowLayout.headerReferenceSize = CGSizeMake(self.collectionView.frame.size.width, 30);
    
    self.collectionView.collectionViewLayout = self.flowLayout;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photosCollectionArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    //cell.backgroundColor = [UIColor blueColor];
    
//    Photo *photo = self.photosCollectionArray[indexPath.row];
    
    cell.photo = self.photosCollectionArray[indexPath.row];
    [cell setObject:cell.photo];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
