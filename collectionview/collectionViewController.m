//
//  collectionViewController.m
//  collectionview
//
//  Created by BSA Univ3 on 29/05/14.
//  Copyright (c) 2014 BSA Univ3. All rights reserved.
//

#import "collectionViewController.h"
#import "collectionviewcell.h"

@interface collectionViewController ()
{
    NSArray *arraycollectionimages;
}

@end

@implementation collectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    arraycollectionimages=[[NSArray alloc]initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg", nil];
    [super viewDidLoad];
    // Do any additional sup after loading the view.
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    collectionviewcell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ReuseID" forIndexPath:indexPath];
    [[cell collectimageview] setImage:[UIImage imageNamed :[arraycollectionimages objectAtIndex:indexPath.item]]];
    return cell;
}
                              
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [arraycollectionimages count];
                                  
                              }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
