//
//  TricepExtensionExerciseName.swift
//  FitDataProtocol
//
//  Created by Kevin Hoogheem on 2/2/19.
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

/// Tricep Extension Exercise Name
public struct TricepExtensionExerciseName: ExerciseName {
    /// Exercise Name Type
    public typealias ExerciseNameType = TricepExtensionExerciseName

    /// Exercise Name
    private(set) public var name: String

    /// Exercise Name Number
    private(set) public var number: UInt16

    private init (name: String, number: UInt16) {
        self.name = name
        self.number = number
    }
}

extension TricepExtensionExerciseName: Hashable {

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
    public static func == (lhs: TricepExtensionExerciseName, rhs: TricepExtensionExerciseName) -> Bool {
        return lhs.name == rhs.name &&
            lhs.number == rhs.number
    }
}

public extension TricepExtensionExerciseName {

    /// List of Supported ExerciseNames
    public static var supportedExerciseNames: [TricepExtensionExerciseName] {

        return [.benchDip,
                .weightedBenchDip,
                .bodyWeightDip,
                .cableKickback,
                .cableLyingTricepsExtension,
                .cableOverheadTricepsExtension,
                .dumbbellKickback,
                .dumbbellLyingTricepsExtension,
                .ezBarOverheadTricepsExtension,
                .inclineDip,
                .weightedInclineDip,
                .inclineEzBarLyingTricepsExtension,
                .lyingDumbbellPulloverToExtension,
                .lyingEzBarTricepsExtension,
                .lyingTricepsExtensionToCloseGripBenchPress,
                .overheadDumbbellTricepsExtension,
                .recliningTricepsPress,
                .reverseGripPressdown,
                .reverseGripTricepsPressdown,
                .ropePressdown,
                .seatedBarbellOverheadTricepsExtension,
                .seatedDumbbelllOverheadTricepsExtension,
                .seatedEzBarOverheadTricepsExtension,
                .seatedSingleArmOverheadTricepsExtension,
                .singleArmDumbbellOverheadTricepsExtension,
                .singleDumbbellSeatedOverheadTricepsExtension,
                .singleLegBenchDipKick,
                .weightedSingleLegBenchDipKick,
                .singleLegDip,
                .weightedSingleLegDip,
                .staticLyingTricepsExtension,
                .suspendedDip,
                .weightedSuspendedDip,
                .swissBallDumbbellLyingTricepsExtension,
                .swissBallEzBarLyingTricepsExtension,
                .swissBallEzBarOverheadTricepsExtension,
                .tabletopDip,
                .weightedTabletopDip,
                .tricepsExtensionOnFloor,
                .tricepsPressdown,
                .weightedDip
        ]
    }
}

public extension TricepExtensionExerciseName {

    /// Creates a ExerciseName Object
    ///
    /// - Parameter rawValue: exerciseNumber
    /// - Returns: ExerciseName Object
    public static func create(rawValue: UInt16) -> TricepExtensionExerciseName? {

        for name in TricepExtensionExerciseName.supportedExerciseNames {
            if name.number == rawValue {
                return name
            }
        }

        return nil
    }
}

// MARK: - Exercise Types
public extension TricepExtensionExerciseName {

    /// Bench Dip
    public static var benchDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Bench Dip", number: 0)
    }

    /// Weighted Bench Dip
    public static var weightedBenchDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Bench Dip", number: 1)
    }

    /// Body Weight Dip
    public static var bodyWeightDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Body Weight Dip", number: 2)
    }

    /// Cable Kick Back
    public static var cableKickback: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Cable Kick Back", number: 3)
    }

    /// Cable Lying Triceps Extension
    public static var cableLyingTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Cable Lying Triceps Extension", number: 4)
    }

    /// Cable Overhead Triceps Extension
    public static var cableOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Cable Overhead Triceps Extension", number: 5)
    }

    /// Dumbbell Kickback
    public static var dumbbellKickback: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Dumbbell Kickback", number: 6)
    }

    /// Dumbbell Lying Triceps Extension
    public static var dumbbellLyingTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Dumbbell Lying Triceps Extension", number: 7)
    }

    /// EZ Bar Overhead Triceps Extension
    public static var ezBarOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "EZ Bar Overhead Triceps Extension", number: 8)
    }

    /// Incline Dip
    public static var inclineDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Incline Dip", number: 9)
    }

    /// Weighted Incline Dip
    public static var weightedInclineDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Incline Dip", number: 10)
    }

    /// Incline EZ Bar Lying Triceps Extension
    public static var inclineEzBarLyingTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Incline EZ Bar Lying Triceps Extension", number: 11)
    }

    /// Lying Dumbbell Pullover to Extension
    public static var lyingDumbbellPulloverToExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Lying Dumbbell Pullover to Extension", number: 12)
    }

    /// Lying EZ Bar Triceps Extension
    public static var lyingEzBarTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Lying EZ Bar Triceps Extension", number: 13)
    }

    /// Lying Triceps Extension to Close Grip Bench Press
    public static var lyingTricepsExtensionToCloseGripBenchPress: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Lying Triceps Extension to Close Grip Bench Press", number: 14)
    }

    /// Overhead Dumbbell Triceps Extension
    public static var overheadDumbbellTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Overhead Dumbbell Triceps Extension", number: 15)
    }

    /// Reclining Triceps Press
    public static var recliningTricepsPress: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Reclining Triceps Press", number: 16)
    }

    /// Reverse Grip Pressdown
    public static var reverseGripPressdown: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Reverse Grip Pressdown", number: 17)
    }

    /// Reverse Grip Triceps Pressdown
    public static var reverseGripTricepsPressdown: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Reverse Grip Triceps Pressdown", number: 18)
    }

    /// Rope Pressdown
    public static var ropePressdown: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Rope Pressdown", number: 19)
    }

    /// Seated Barbell Overhead Triceps Extension
    public static var seatedBarbellOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Seated Barbell Overhead Triceps Extension", number: 20)
    }

    /// Seated Dumbbell Overhead Triceps Extension
    public static var seatedDumbbelllOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Seated Dumbbell Overhead Triceps Extension", number: 21)
    }

    /// Seated EZ Bar Overhead Triceps Extension
    public static var seatedEzBarOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Seated EZ Bar Overhead Triceps Extension", number: 22)
    }

    /// Seated Single Arm Overhead Triceps Extension
    public static var seatedSingleArmOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Seated Single Arm Overhead Triceps Extension", number: 23)
    }

    /// Single Arm Dumbbell Overhead Triceps Extension
    public static var singleArmDumbbellOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Single Arm Dumbbell Overhead Triceps Extension", number: 24)
    }

    /// Single Dumbbell Seated Overhead Triceps Extension
    public static var singleDumbbellSeatedOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Single Dumbbell Seated Overhead Triceps Extension", number: 25)
    }

    /// Single Leg Bench Dip and Kick
    public static var singleLegBenchDipKick: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Single Leg Bench Dip and Kick", number: 26)
    }

    /// Weighted Single Leg Bench Dip and Kick
    public static var weightedSingleLegBenchDipKick: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Single Leg Bench Dip and Kick", number: 27)
    }

    /// Single Leg Dip
    public static var singleLegDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Single Leg Dip", number: 28)
    }

    /// Weighted Single Leg Dip
    public static var weightedSingleLegDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Single Leg Dip", number: 29)
    }

    /// Static Lying Triceps Extension
    public static var staticLyingTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Static Lying Triceps Extension", number: 30)
    }

    /// Suspended Dip
    public static var suspendedDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Suspended Dip", number: 31)
    }

    /// Weighted Suspended Dip
    public static var weightedSuspendedDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Suspended Dip", number: 32)
    }

    /// Swiss Ball Dumbbell Lying Triceps Extension
    public static var swissBallDumbbellLyingTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Swiss Ball Dumbbell Lying Triceps Extension", number: 33)
    }

    /// Swiss Ball EZ Bar Lying Triceps Extension
    public static var swissBallEzBarLyingTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Swiss Ball EZ Bar Lying Triceps Extension", number: 34)
    }

    /// Swiss Ball EZ Bar Overhead Triceps Extension
    public static var swissBallEzBarOverheadTricepsExtension: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Swiss Ball EZ Bar Overhead Triceps Extension", number: 35)
    }

    /// Tabeltop Dip
    public static var tabletopDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Tabeltop Dip", number: 36)
    }

    /// Weighted Tabeltop Dip
    public static var weightedTabletopDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Tabeltop Dip", number: 37)
    }

    /// Triceps Extension on Floor
    public static var tricepsExtensionOnFloor: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Triceps Extension on Floor", number: 38)
    }

    /// Triceps Pressdown
    public static var tricepsPressdown: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Triceps Pressdown", number: 39)
    }

    /// Weighted Dip
    public static var weightedDip: TricepExtensionExerciseName {
        return TricepExtensionExerciseName(name: "Weighted Dip", number: 40)
    }
}
