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
// swiftlint:disable file_length
// swiftlint:disable cyclomatic_complexity
// swiftlint:disable function_body_length
// swiftlint:disable type_body_length

public final class AutoRestRequiredOptionalTestClient: PipelineClient {
    /// API version of the  to invoke. Defaults to the latest.
    public enum ApiVersion: RequestStringConvertible {
        /// Custom value for unrecognized enum values
        case custom(String)
        /// API version ""
        case v

        /// The most recent API version of the
        public static var latest: ApiVersion {
            return .v
        }

        public var requestString: String {
            switch self {
            case let .custom(val):
                return val
            case .v:
                return ""
            }
        }

        public init(_ val: String) {
            switch val.lowercased() {
            case "":
                self = .v
            default:
                self = .custom(val)
            }
        }
    }

    /// Options provided to configure this `AutoRestRequiredOptionalTestClient`.
    public let options: AutoRestRequiredOptionalTestClientOptions

    // MARK: Initializers

    /// Create a AutoRestRequiredOptionalTestClient client.
    /// - Parameters:
    ///   - endpoint: Base URL for the AutoRestRequiredOptionalTestClient.
    ///   - authPolicy: An `Authenticating` policy to use for authenticating client requests.
    ///   - options: Options used to configure the client.
    public init(
        requiredGlobalPath: String,
        requiredGlobalQuery: String,
        url: URL? = nil,
        authPolicy: Authenticating,
        withOptions options: AutoRestRequiredOptionalTestClientOptions
    ) throws {
        let defaultHost = URL(string: "http://localhost:3000")
        guard let endpoint = url ?? defaultHost else {
            fatalError("Unable to determine base URL. ")
        }
        self.requiredGlobalPath = requiredGlobalPath
        self.requiredGlobalQuery = requiredGlobalQuery
        self.options = options
        super.init(
            endpoint: endpoint,
            transport: options.transportOptions.transport ?? URLSessionTransport(),
            policies: [
                UserAgentPolicy(
                    for: AutoRestRequiredOptionalTestClient.self,
                    telemetryOptions: options.telemetryOptions
                ),
                RequestIdPolicy(),
                AddDatePolicy(),
                authPolicy,
                ContentDecodePolicy(),
                LoggingPolicy(),
                NormalizeETagPolicy()
            ],
            logger: options.logger,
            options: options
        )
    }

    // /// number of items to skip
    public var requiredGlobalPath: String
    // /// number of items to skip
    public var requiredGlobalQuery: String
    // /// number of items to skip
    public var optionalGlobalQuery: Int32?

    public lazy var explicit = Explicit(client: self)
    public lazy var implicit = Implicit(client: self)

    // MARK: Public Client Methods
}