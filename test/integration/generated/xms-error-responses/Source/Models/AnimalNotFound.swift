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

public struct AnimalNotFound: Codable, Swift.Error {
    public let name: String?

    /// Initialize a `AnimalNotFound` structure.
    /// - Parameters:
    ///   - name:
    public init(
        name: String? = nil
    ) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    /// Initialize a `AnimalNotFound` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try? container.decode(String.self, forKey: .name)
    }

    /// Encode a `AnimalNotFound` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if name != nil { try? container.encode(name, forKey: .name) }
    }
}