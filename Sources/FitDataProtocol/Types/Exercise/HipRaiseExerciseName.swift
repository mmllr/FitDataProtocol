//
//  HipRaiseExerciseName.swift
//  FitDataProtocol
//
//  Created by Kevin Hoogheem on 2/17/18.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

/// Hip Raise Exercise Name
public struct HipRaiseExerciseName: ExerciseName {
    /// Exercise Name Type
    public typealias ExerciseNameType = HipRaiseExerciseName

    /// Exercise Name
    private(set) public var name: String

    /// Exercise Name Number
    private(set) public var number: UInt16

    private init (name: String, number: UInt16) {
        self.name = name
        self.number = number
    }
}

extension HipRaiseExerciseName: Hashable {

    /// The hash value.
    ///
    /// Hash values are not guaranteed to be equal across different executions of
    /// your program. Do not save hash values to use during a future execution.
    public var hashValue: Int {
        return name.hashValue ^ number.hashValue
    }

    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (lhs: HipRaiseExerciseName, rhs: HipRaiseExerciseName) -> Bool {
        return lhs.name == rhs.name &&
            lhs.number == rhs.number
    }
}

public extension HipRaiseExerciseName {

    /// List of Supported ExerciseNames
    public static var supportedExerciseNames: [HipRaiseExerciseName] {

        return [.barbellHipThrustOnFloor,
                .barbellHipThrustBench,
                .bentKneeSwissBallReverseHipRaise,
                .weightedBentKneeSwissBallReverseHipRaise,
                .bridgeLegExtension,
                .weightedBridgeLegExtension,
                .clamBridge,
                .frontKickTabletop,
                .weightedFrontKickTabletop,
                .hipExtensionCross,
                .weightedHipExtensionCross,
                .hipRaise,
                .weightedHipRaise,
                .hipRaiseFeetOnSwissBall,
                .weightedHipRaiseFeetOnSwissBall,
                .hipRaiseHeadOnBosuBall,
                .weightedHipRaiseHeadOnBosuBall,
                .hipRaiseHeadOnSwissBall,
                .weightedHipRaiseHeadOnSwissBall,
                .hipRaiseKneeSqueeze,
                .weightedHipRaiseKneeSqueeze,
                .inclineRearLegExtension,
                .weightedInclineRearLegExtension,
                .kettlebellSwing,
                .marchingHipRaise,
                .weightedMarchingHipRaise,
                .marchingHipRaiseFeeOnSwissBall,
                .weightedMarchingHipRaiseFeeOnSwissBall,
                .reverseHipRaise,
                .weightedReverseHipRaise,
                .singleLegHipRaise,
                .weightedSingleLegHipRaise,
                .singleLegHipRaiseFootOnBench,
                .weightedSingleLegHipRaiseFootOnBench,
                .singleLegHipRaiseFootOnBosuBall,
                .weightedSingleLegHipRaiseFootOnBosuBall,
                .singleLegHipRaiseFootOnFoamRoller,
                .weightedSingleLegHipRaiseFootOnFoamRoller,
                .singleLegHipRaiseFootOnMedicineBall,
                .weightedSingleLegHipRaiseFootOnMedicineBall,
                .singleLegHipRaiseHeaddOnBosuBall,
                .weightedSingleLegHipRaiseHeaddOnBosuBall,
                .weightedClamBridge
        ]
    }
}

public extension HipRaiseExerciseName {

    /// Creates a ExerciseName Object
    ///
    /// - Parameter rawValue: exerciseNumber
    /// - Returns: ExerciseName Object
    public static func create(rawValue: UInt16) -> HipRaiseExerciseName? {

        for name in HipRaiseExerciseName.supportedExerciseNames {
            if name.number == rawValue {
                return name
            }
        }

        return nil
    }
}

// MARK: - Exercise Types
public extension HipRaiseExerciseName {

    /// Barbell Hip Thrust on Floor
    public static var barbellHipThrustOnFloor: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Barbell Hip Thrust on Floor", number: 0)
    }

    /// Barbell Hip Thrust with Bench
    public static var barbellHipThrustBench: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Barbell Hip Thrust with Bench", number: 1)
    }

    /// Bent Knee Swiss Ball Reverse Hip Raise
    public static var bentKneeSwissBallReverseHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Bent Knee Swiss Ball Reverse Hip Raise", number: 2)
    }

    /// Weighted Bent Knee Swiss Ball Reverse Hip Raise
    public static var weightedBentKneeSwissBallReverseHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Bent Knee Swiss Ball Reverse Hip Raise", number: 3)
    }

    /// Bridge with Leg Extension
    public static var bridgeLegExtension: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Bridge with Leg Extension", number: 4)
    }

    /// Weighted Bridge with Leg Extension
    public static var weightedBridgeLegExtension: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Bridge with Leg Extension", number: 5)
    }

    /// Clam Bridge
    public static var clamBridge: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Clam Bridge", number: 6)
    }

    /// Front Kick Tabletop
    public static var frontKickTabletop: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Front Kick Tabletop", number: 7)
    }

    /// Weighted Front Kick Tabletop
    public static var weightedFrontKickTabletop: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Front Kick Tabletop", number: 8)
    }

    /// Hip Extension and Cross
    public static var hipExtensionCross: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Hip Extension and Cross", number: 9)
    }

    /// Weighted Hip Extension and Cross
    public static var weightedHipExtensionCross: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Hip Extension and Cross", number: 10)
    }

    /// Hip Raise
    public static var hipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Hip Raise", number: 11)
    }

    /// Weighted Hip Raise
    public static var weightedHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Hip Raise", number: 12)
    }

    /// Hip Raise with Feet on Swiss Ball
    public static var hipRaiseFeetOnSwissBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Hip Raise with Feet on Swiss Ball", number: 13)
    }

    /// Weighted Hip Raise with Feet on Swiss Ball
    public static var weightedHipRaiseFeetOnSwissBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Hip Raise with Feet on Swiss Ball", number: 14)
    }

    /// Hip Raise with Head on Bosu Ball
    public static var hipRaiseHeadOnBosuBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Hip Raise with Head on Bosu Ball", number: 15)
    }

    /// Weighted Hip Raise with Head on Bosu Ball
    public static var weightedHipRaiseHeadOnBosuBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Hip Raise with Head on Bosu Ball", number: 16)
    }

    /// Hip Raise with Head on Swiss Ball
    public static var hipRaiseHeadOnSwissBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Hip Raise with Head on Swiss Ball", number: 17)
    }

    /// Weighted Hip Raise with Head on Swiss Ball
    public static var weightedHipRaiseHeadOnSwissBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Hip Raise with Head on Swiss Ball", number: 18)
    }

    /// Hip Raise with Knee Squeeze
    public static var hipRaiseKneeSqueeze: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Hip Raise with Knee Squeeze", number: 19)
    }

    /// Weighted Hip Raise with Knee Squeeze
    public static var weightedHipRaiseKneeSqueeze: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Hip Raise with Knee Squeeze", number: 20)
    }

    /// Incline Rear Leg Extension
    public static var inclineRearLegExtension: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Incline Rear Leg Extension", number: 21)
    }

    /// Weighted Incline Rear Leg Extension
    public static var weightedInclineRearLegExtension: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Incline Rear Leg Extension", number: 22)
    }

    /// Kettlebell Swing
    public static var kettlebellSwing: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Kettlebell Swing", number: 23)
    }

    /// Marching Hip Raise
    public static var marchingHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Marching Hip Raise", number: 24)
    }

    /// Weighted Marching Hip Raise
    public static var weightedMarchingHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Marching Hip Raise", number: 25)
    }

    /// Marching Hip Raise with Feet on a Swiss Ball
    public static var marchingHipRaiseFeeOnSwissBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Marching Hip Raise with Feet on a Swiss Ball", number: 26)
    }

    /// Weighted Marching Hip Raise with Feet on a Swiss Ball
    public static var weightedMarchingHipRaiseFeeOnSwissBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Marching Hip Raise with Feet on a Swiss Ball", number: 27)
    }

    /// Reverse Hip Raise
    public static var reverseHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Reverse Hip Raise", number: 28)
    }

    /// Weighted Reverse Hip Raise
    public static var weightedReverseHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Reverse Hip Raise", number: 29)
    }

    /// Single Leg Hip Raise
    public static var singleLegHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Single Leg Hip Raise", number: 30)
    }

    /// Weighted Single Leg Hip Raise
    public static var weightedSingleLegHipRaise: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Single Leg Hip Raise", number: 31)
    }

    /// Single Leg Hip Raise with Foot on Bench
    public static var singleLegHipRaiseFootOnBench: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Single Leg Hip Raise with Foot on Bench", number: 32)
    }

    /// Weighted Single Leg Hip Raise with Foot on Bench
    public static var weightedSingleLegHipRaiseFootOnBench: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Single Leg Hip Raise with Foot on Bench", number: 33)
    }

    /// Single Leg Hip Raise with Foot on Bosu Ball
    public static var singleLegHipRaiseFootOnBosuBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Single Leg Hip Raise with Foot on Bosu Ball", number: 34)
    }

    /// Weighted Single Leg Hip Raise with Foot on Bosu Ball
    public static var weightedSingleLegHipRaiseFootOnBosuBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Single Leg Hip Raise with Foot on Bosu Ball", number: 35)
    }

    /// Single Leg Hip Raise with Foot on Foam Roller
    public static var singleLegHipRaiseFootOnFoamRoller: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Single Leg Hip Raise with Foot on Foam Roller", number: 36)
    }

    /// Weighted Single Leg Hip Raise with Foot on Foam Roller
    public static var weightedSingleLegHipRaiseFootOnFoamRoller: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Single Leg Hip Raise with Foot on Foam Roller", number: 37)
    }

    /// Single Leg Hip Raise with Foot on Medicine Ball
    public static var singleLegHipRaiseFootOnMedicineBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Single Leg Hip Raise with Foot on Medicine Ball", number: 38)
    }

    /// Weighted Single Leg Hip Raise with Foot on Medicine Ball
    public static var weightedSingleLegHipRaiseFootOnMedicineBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Single Leg Hip Raise with Foot on Medicine Ball", number: 39)
    }

    /// Single Leg Hip Raise with Head on Bosu Ball
    public static var singleLegHipRaiseHeaddOnBosuBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Single Leg Hip Raise with Head on Bosu Ball", number: 40)
    }

    /// Weighted Single Leg Hip Raise with Head on Bosu Ball
    public static var weightedSingleLegHipRaiseHeaddOnBosuBall: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Single Leg Hip Raise with Head on Bosu Ball", number: 41)
    }

    /// Weighted Clam Bridge
    public static var weightedClamBridge: HipRaiseExerciseName {
        return HipRaiseExerciseName(name: "Weighted Clam Bridge", number: 42)
    }
}
