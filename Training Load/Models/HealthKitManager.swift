//
//  HealthStore.swift
//  Training Load
//
//  Created by Stephen Thomas on 6/22/19.
//  Copyright © 2019 Stephen Thomas. All rights reserved.
//

import HealthKit

class HealthKitManager {
    
    // Only need one instance to manage HealtKit access
    class var sharedInstance: HealthKitManager {
        struct Singleton {
            static let instance = HealthKitManager()
        }
        return Singleton.instance
    }
    
    // IIFE to return HealthKit Store if available
    let healthStore: HKHealthStore? = {
        if HKHealthStore.isHealthDataAvailable() {
            return HKHealthStore()
        }
        else {
            return nil
        }
    }()
    
}
