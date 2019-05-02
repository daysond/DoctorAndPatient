//
//  Doctor.h
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN
//@class Patient;
@interface Doctor : NSObject
@property (nonatomic)NSString* name;
@property (nonatomic)NSString* specialization;
@property (nonatomic)NSMutableSet* patients;
@property (nonatomic)NSDictionary* prescriptions;
@property (nonatomic)NSMutableDictionary* healthCardInfo;
- (instancetype)initWithName: (NSString*) name andSpecialization: (NSString*) specialization;
- (void)requestMedicationForPatient: (Patient*) patient;
- (void)patientVisit: (Patient*) patient;

@end

NS_ASSUME_NONNULL_END
