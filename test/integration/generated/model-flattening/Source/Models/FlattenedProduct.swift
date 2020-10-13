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

/// Flattened product.
public struct FlattenedProduct: Codable {
    // MARK: Properties

    public let pName: String?

    public let typePropertiesType: String?

    public let provisioningStateValues: FlattenedProductPropertiesProvisioningStateValues?

    public let provisioningState: String?
    /// Resource Id
    public let id: String?
    /// Resource Type
    public let type: String?
    /// Dictionary of <string>
    public let tags: [String: String]?
    /// Resource Location
    public let location: String?
    /// Resource Name
    public let name: String?

    // MARK: Initializers

    /// Initialize a `FlattenedProduct` structure.
    /// - Parameters:
    ///   - pName:
    ///   - typePropertiesType:
    ///   - provisioningStateValues:
    ///   - provisioningState:
    ///   - id: Resource Id
    ///   - type: Resource Type
    ///   - tags: Dictionary of <string>
    ///   - location: Resource Location
    ///   - name: Resource Name
    public init(
        pName: String? = nil, typePropertiesType: String? = nil,
        provisioningStateValues: FlattenedProductPropertiesProvisioningStateValues? = nil,
        provisioningState: String? = nil, id: String? = nil, type: String? = nil, tags: [String: String]? = nil,
        location: String? = nil, name: String? = nil
    ) {
        self.pName = pName
        self.typePropertiesType = typePropertiesType
        self.provisioningStateValues = provisioningStateValues
        self.provisioningState = provisioningState
        self.id = id
        self.type = type
        self.tags = tags
        self.location = location
        self.name = name
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case pName
        case typePropertiesType
        case provisioningStateValues
        case provisioningState
        case id
        case type
        case tags
        case location
        case name
    }

    /// Initialize a `FlattenedProduct` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pName = try? container.decode(String.self, forKey: .pName)
        self.typePropertiesType = try? container.decode(String.self, forKey: .typePropertiesType)
        self.provisioningStateValues = try? container.decode(
            FlattenedProductPropertiesProvisioningStateValues.self,
            forKey: .provisioningStateValues
        )
        self.provisioningState = try? container.decode(String.self, forKey: .provisioningState)
        self.id = try? container.decode(String.self, forKey: .id)
        self.type = try? container.decode(String.self, forKey: .type)
        self.tags = try? container.decode([String: String].self, forKey: .tags)
        self.location = try? container.decode(String.self, forKey: .location)
        self.name = try? container.decode(String.self, forKey: .name)
    }

    /// Encode a `FlattenedProduct` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if pName != nil { try? container.encode(pName, forKey: .pName) }
        if typePropertiesType != nil { try? container.encode(typePropertiesType, forKey: .typePropertiesType) }
        if provisioningStateValues !=
            nil { try? container.encode(provisioningStateValues, forKey: .provisioningStateValues) }
        if provisioningState != nil { try? container.encode(provisioningState, forKey: .provisioningState) }
        if id != nil { try? container.encode(id, forKey: .id) }
        if type != nil { try? container.encode(type, forKey: .type) }
        if tags != nil { try? container.encode(tags, forKey: .tags) }
        if location != nil { try? container.encode(location, forKey: .location) }
        if name != nil { try? container.encode(name, forKey: .name) }
    }
}
