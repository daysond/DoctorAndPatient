//
//  Patient.h
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject
@property NSString* name;
@property NSInteger age;
@property (nonatomic) BOOL hasValidHealthCard;

- (instancetype)initWithName:(NSString*) name andAge: (int) age;
@end

NS_ASSUME_NONNULL_END
