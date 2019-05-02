//
//  Doctor.m
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName: (NSString*) name andSpecialization: (NSString*) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patients = [[NSMutableSet alloc]init];
        _healthCardInfo = [[NSMutableDictionary alloc]init];
        _prescriptions = [[NSDictionary alloc]initWithObjectsAndKeys:
                          @"Med1",@"Sym1",
                          @"Med2",@"Sym2",
                          @"Med3",@"Sym3",
                          nil];
    }
    return self;
}

-(void)requestMedicationForPatient: (Patient*) patient{
    if ([_patients containsObject:patient]){
        NSString* medication = @"Prescription: ";
        for (NSString* symptom in patient.symptoms) {
            NSLog(@"sym:%@",symptom);
            if ([_prescriptions objectForKey:symptom] != nil) {
                medication = [medication stringByAppendingString: [NSString stringWithFormat:@"%@ ",[_prescriptions objectForKey:symptom]] ];
            }
            [patient.symptoms removeObject:symptom];
        }
        [[patient medHistory] addObject:medication];
        NSLog(@"%@",medication);
    } else {
        NSLog(@"please visit first");
    }
   
}

-(void)patientVisit: (Patient*) patient {
    if (patient.hasValidHealthCard) {
        [_patients addObject:patient];
        [_healthCardInfo setValue:patient.healthCardNumber forKey:patient.name];
    } else {
        NSLog(@"This patient does not have a valid health card.");
    }

    
}


@end
