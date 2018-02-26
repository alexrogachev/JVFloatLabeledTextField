//
//  JVFloatLabeledTextViewCell.m
//  JVFloatLabeledTextField
//
//  Created by Alexander Rogachev on 2/26/18.
//  Copyright © 2018 Jared Verdi. All rights reserved.
//

#import "JVFloatLabeledTextViewCell.h"

@implementation JVFloatLabeledTextViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.backgroundView = [[UIView alloc] initWithFrame:self.frame];
    self.backgroundView.backgroundColor = [UIColor greenColor];
    
    UIEdgeInsets insets = self.textView.textContainerInset;
    insets.bottom = 0;
    self.textView.textContainerInset = insets;
}

@end
