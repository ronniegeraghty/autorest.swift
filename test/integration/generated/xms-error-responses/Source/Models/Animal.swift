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

public struct Animal: Codable {
    // MARK: Properties

    public let aniType: String?

    // MARK: Initializers

    /// Initialize a `Animal` structure.
    /// - Parameters:
    ///   - aniType:
    public init(
        aniType: String? = nil
    ) {
        self.aniType = aniType
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case aniType
    }

    /// Initialize a `Animal` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.aniType = try? container.decode(String.self, forKey: .aniType)
    }

    /// Encode a `Animal` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if aniType != nil { try? container.encode(aniType, forKey: .aniType) }
    }
}
