// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation

/// Type of Pet
public enum DaysOfWeekExtensibleEnum: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case monday

    case tuesday

    case wednesday

    case thursday

    case friday

    case saturday

    case sunday

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .monday:
            return "Monday"
        case .tuesday:
            return "Tuesday"
        case .wednesday:
            return "Wednesday"
        case .thursday:
            return "Thursday"
        case .friday:
            return "Friday"
        case .saturday:
            return "Saturday"
        case .sunday:
            return "Sunday"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "monday":
            self = .monday
        case "tuesday":
            self = .tuesday
        case "wednesday":
            self = .wednesday
        case "thursday":
            self = .thursday
        case "friday":
            self = .friday
        case "saturday":
            self = .saturday
        case "sunday":
            self = .sunday
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

public enum IntEnum: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)
    /// one
    case one
    /// two
    case two
    /// three
    case three

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "1":
            self = .one
        case "2":
            self = .two
        case "3":
            self = .three
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}