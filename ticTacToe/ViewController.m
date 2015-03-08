//
//  ViewController.m
//  ticTacToe
//
//  Created by Nalin Natrajan on 7/3/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UILabel *labelFive;
@property (weak, nonatomic) IBOutlet UILabel *labelSix;
@property (weak, nonatomic) IBOutlet UILabel *labelSeven;
@property (weak, nonatomic) IBOutlet UILabel *labelEight;
@property (weak, nonatomic) IBOutlet UILabel *labelNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property int turn;
@property CGPoint userTap;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.whichPlayerLabel.text = @"Player 1 - X";
    self.labelOne.text = @" ";
    self.labelTwo.text = @" ";
    self.labelThree.text = @" ";
    self.labelFour.text = @" ";
    self.labelFive.text = @" ";
    self.labelSix.text = @" ";
    self.labelSeven.text = @" ";
    self.labelEight.text = @" ";
    self.labelNine.text = @" ";
    self.turn = 0;
}

-(UILabel*)findLabelUsingPoint:(CGPoint)point{
    if (CGRectContainsPoint(self.labelOne.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelOne.text isEqualToString:@" "]){
            self.labelOne.text = @"X";
            self.labelOne.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelOne;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelOne.text isEqualToString:@" "]){
            self.labelOne.text = @"O";
            self.labelOne.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelOne;
        }
    }
    if (CGRectContainsPoint(self.labelTwo.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelTwo.text isEqualToString:@" "]){
            self.labelTwo.text = @"X";
            self.labelTwo.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelTwo;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelTwo.text isEqualToString:@" "]){
            self.labelTwo.text = @"O";
            self.labelTwo.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelTwo;
        }
    }
    if (CGRectContainsPoint(self.labelThree.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelThree.text isEqualToString:@" "]){
            self.labelThree.text = @"X";
            self.labelThree.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelThree;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelThree.text isEqualToString:@" "]){
            self.labelThree.text = @"O";
            self.labelThree.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelThree;
        }
    }
    if (CGRectContainsPoint(self.labelFour.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelFour.text isEqualToString:@" "]){
            self.labelFour.text = @"X";
            self.labelFour.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelFour;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelFour.text isEqualToString:@" "]){
            self.labelFour.text = @"O";
            self.labelFour.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelFour;
        }
    }
    if (CGRectContainsPoint(self.labelFive.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelFive.text isEqualToString:@" "]){
            self.labelFive.text = @"X";
            self.labelFive.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelFive;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelFive.text isEqualToString:@" "]){
            self.labelFive.text = @"O";
            self.labelFive.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelFive;
        }
    }
    if (CGRectContainsPoint(self.labelSix.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelSix.text isEqualToString:@" "]){
            self.labelSix.text = @"X";
            self.labelSix.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelSix;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelSix.text isEqualToString:@" "]){
            self.labelSix.text = @"O";
            self.labelSix.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelSix;
        }
    }
    if (CGRectContainsPoint(self.labelSeven.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelSeven.text isEqualToString:@" "]){
            self.labelSeven.text = @"X";
            self.labelSeven.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelSeven;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelSeven.text isEqualToString:@" "]){
            self.labelSeven.text = @"O";
            self.labelSeven.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelSeven;
        }
    }
    if (CGRectContainsPoint(self.labelEight.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelEight.text isEqualToString:@" "]){
            self.labelEight.text = @"X";
            self.labelEight.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelEight;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelEight.text isEqualToString:@" "]){
            self.labelEight.text = @"O";
            self.labelEight.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelEight;
        }
    }
    if (CGRectContainsPoint(self.labelNine.frame, self.userTap)){
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"] && [self.labelNine.text isEqualToString:@" "]){
            self.labelNine.text = @"X";
            self.labelNine.textColor = [UIColor blueColor];
            self.whichPlayerLabel.text = @"Player 2 - O";
            return self.labelNine;
        }
        if ([self.whichPlayerLabel.text isEqualToString:@"Player 2 - O"] && [self.labelNine.text isEqualToString:@" "]){
            self.labelNine.text = @"O";
            self.labelNine.textColor = [UIColor redColor];
            self.whichPlayerLabel.text = @"Player 1 - X";
            return self.labelNine;
        }
    }
    return nil;
}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    self.userTap = [sender locationInView:self.view];
    if (sender.state == UIGestureRecognizerStateEnded) {
        self.turn++;
        NSString *winningPlayer = [self winningArray];
        [self findLabelUsingPoint: self.userTap];
        winningPlayer = [self winningArray];
        if ([winningPlayer  isEqual: @"Player 1"]) {
            self.whichPlayerLabel.text = @"Player 1 Wins!";
        } else {
            self.whichPlayerLabel.text = @"Player 2 Wins!";
        }
    }
}

-(NSString *) winningArray {
    NSArray *winningCombo = @[self.labelOne.text, self.labelTwo.text, self.labelThree.text, self.labelFour.text, self.labelFive.text, self.labelSix.text, self.labelSeven.text, self.labelEight.text, self.labelNine.text];
    NSString *returnString = [self checkWinnerArray:winningCombo];
    return returnString;
}

-(NSString *) checkWinnerArray:(NSArray *)arrayToWin {
    char label1 = arrayToWin[0];
    char label2 = arrayToWin[1];
    char label3 = arrayToWin[2];
    char label4 = arrayToWin[3];
    char label5 = arrayToWin[4];
    char label6 = arrayToWin[5];
    char label7 = arrayToWin[6];
    char label8 = arrayToWin[7];
    char label9 = arrayToWin[8];
    if (label1 == label2 == label3 && label1 != @" ") {
        <#statements#>
    }
    return nil;
}

//- (NSString*) whoOne {
//    NSString *winningPlayer;
//    winningPlayer = [self checkWinningComboFirst:self.labelOne.text second:self.labelTwo.text third:self.labelThree.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelFour.text second:self.labelFive.text third:self.labelSix.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelSeven.text second:self.labelEight.text third:self.labelNine.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelOne.text second:self.labelFour.text third:self.labelSeven.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelTwo.text second:self.labelFive.text third:self.labelEight.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelThree.text second:self.labelSix.text third:self.labelNine.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelOne.text second:self.labelFive.text third:self.labelNine.text];
//    winningPlayer = [self checkWinningComboFirst:self.labelThree.text second:self.labelFive.text third:self.labelSeven.text];
//    return winningPlayer;
//}
//
//-(NSString*)checkWinningComboFirst:(NSString*) labelValue1 second:(NSString*) labelValue2 third:(NSString*) labelValue3 {
//    NSString *winner;
//    if ([labelValue1 isEqualToString:labelValue2] && [labelValue2 isEqualToString:labelValue3] && (![labelValue1 isEqualToString: @" "] && ![labelValue2 isEqualToString:@" "] && ![labelValue3 isEqualToString:@" "]))
//    {
//        if ([self.whichPlayerLabel.text isEqualToString:@"Player 1 - X"]) {
//            winner = @"Player 2";
//        }
//        else{
//            winner = @"Player 1";
//        }
//    }
//    return winner;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

