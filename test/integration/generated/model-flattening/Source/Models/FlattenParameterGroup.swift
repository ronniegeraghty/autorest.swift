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

/// Parameter group
public struct FlattenParameterGroup: Codable {
    // MARK: Properties

    /// Product name with value 'groupproduct'
    public let name: String
    /// Simple body product to put
    public let simpleBodyProduct: SimpleProduct?
    /// Unique identifier representing a specific product for a given latitude & longitude. For example, uberX in San Francisco will have a different product_id than uberX in Los Angeles.
    public let productId: String
    /// Description of product.
    public let description: String?
    /// Display name of product.
    public let maxProductDisplayName: String?
    /// Generic URL value.
    public let genericValue: String?
    /// URL value.
    public let odataValue: String?

    // MARK: Initializers

    /// Initialize a `FlattenParameterGroup` structure.
    /// - Parameters:
    ///   - name: Product name with value 'groupproduct'
    ///   - simpleBodyProduct: Simple body product to put
    ///   - productId: Unique identifier representing a specific product for a given latitude & longitude. For example, uberX in San Francisco will have a different product_id than uberX in Los Angeles.
    ///   - description: Description of product.
    ///   - maxProductDisplayName: Display name of product.
    ///   - genericValue: Generic URL value.
    ///   - odataValue: URL value.
    public init(
        name: String, simpleBodyProduct: SimpleProduct? = nil, productId: String, description: String? = nil,
        maxProductDisplayName: String? = nil, genericValue: String? = nil, odataValue: String? = nil
    ) {
        self.name = name
        self.simpleBodyProduct = simpleBodyProduct
        self.productId = productId
        self.description = description
        self.maxProductDisplayName = maxProductDisplayName
        self.genericValue = genericValue
        self.odataValue = odataValue
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case name
        case simpleBodyProduct
        case productId
        case description
        case maxProductDisplayName
        case genericValue
        case odataValue
    }

    /// Initialize a `FlattenParameterGroup` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.simpleBodyProduct = try? container.decode(SimpleProduct.self, forKey: .simpleBodyProduct)
        self.productId = try container.decode(String.self, forKey: .productId)
        self.description = try? container.decode(String.self, forKey: .description)
        self.maxProductDisplayName = try? container.decode(String.self, forKey: .maxProductDisplayName)
        self.genericValue = try? container.decode(String.self, forKey: .genericValue)
        self.odataValue = try? container.decode(String.self, forKey: .odataValue)
    }

    /// Encode a `FlattenParameterGroup` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        if simpleBodyProduct != nil { try? container.encode(simpleBodyProduct, forKey: .simpleBodyProduct) }
        try container.encode(productId, forKey: .productId)
        if description != nil { try? container.encode(description, forKey: .description) }
        if maxProductDisplayName != nil { try? container.encode(maxProductDisplayName, forKey: .maxProductDisplayName) }
        if genericValue != nil { try? container.encode(genericValue, forKey: .genericValue) }
        if odataValue != nil { try? container.encode(odataValue, forKey: .odataValue) }
    }
}
