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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

public struct PetHungryOrThirstyError: Codable {
    // MARK: Properties

    /// is the pet hungry or thirsty or both
    public let hungryOrThirsty: String?
    /// why is the pet sad
    public let reason: String?

    public let errorType: String
    /// the error message
    public let errorMessage: String?
    /// action feedback
    public let actionResponse: String?

    // MARK: Initializers

    /// Initialize a `PetHungryOrThirstyError` structure.
    /// - Parameters:
    ///   - hungryOrThirsty: is the pet hungry or thirsty or both
    ///   - reason: why is the pet sad
    ///   - errorType:
    ///   - errorMessage: the error message
    ///   - actionResponse: action feedback
    public init(
        hungryOrThirsty: String? = nil, reason: String? = nil, errorType: String, errorMessage: String? = nil,
        actionResponse: String? = nil
    ) {
        self.hungryOrThirsty = hungryOrThirsty
        self.reason = reason
        self.errorType = errorType
        self.errorMessage = errorMessage
        self.actionResponse = actionResponse
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case hungryOrThirsty = "hungryOrThirsty"
        case reason = "reason"
        case errorType = "errorType"
        case errorMessage = "errorMessage"
        case actionResponse = "actionResponse"
    }

    /// Initialize a `PetHungryOrThirstyError` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.hungryOrThirsty = try? container.decode(String.self, forKey: .hungryOrThirsty)
        self.reason = try? container.decode(String.self, forKey: .reason)
        self.errorType = try container.decode(String.self, forKey: .errorType)
        self.errorMessage = try? container.decode(String.self, forKey: .errorMessage)
        self.actionResponse = try? container.decode(String.self, forKey: .actionResponse)
    }

    /// Encode a `PetHungryOrThirstyError` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if hungryOrThirsty != nil { try? container.encode(hungryOrThirsty, forKey: .hungryOrThirsty) }
        if reason != nil { try? container.encode(reason, forKey: .reason) }
        try container.encode(errorType, forKey: .errorType)
        if errorMessage != nil { try? container.encode(errorMessage, forKey: .errorMessage) }
        if actionResponse != nil { try? container.encode(actionResponse, forKey: .actionResponse) }
    }
}