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

public struct ProductProperties: Codable {
    // MARK: Properties

    public let id: Int32?

    public let name: String?

    // MARK: Initializers

    /// Initialize a `ProductProperties` structure.
    /// - Parameters:
    ///   - id:
    ///   - name:
    public init(
        id: Int32? = nil, name: String? = nil
    ) {
        self.id = id
        self.name = name
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }

    /// Initialize a `ProductProperties` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try? container.decode(Int32.self, forKey: .id)
        self.name = try? container.decode(String.self, forKey: .name)
    }

    /// Encode a `ProductProperties` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try? container.encode(id, forKey: .id) }
        if name != nil { try? container.encode(name, forKey: .name) }
    }
}