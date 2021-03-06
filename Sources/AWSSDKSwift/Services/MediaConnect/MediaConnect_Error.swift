// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MediaConnect
public enum MediaConnectErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case internalServerErrorException(message: String?)
    case forbiddenException(message: String?)
    case notFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case tooManyRequestsException(message: String?)
    case addFlowOutputs420Exception(message: String?)
    case grantFlowEntitlements420Exception(message: String?)
    case createFlow420Exception(message: String?)
}

extension MediaConnectErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "AddFlowOutputs420Exception":
            self = .addFlowOutputs420Exception(message: message)
        case "GrantFlowEntitlements420Exception":
            self = .grantFlowEntitlements420Exception(message: message)
        case "CreateFlow420Exception":
            self = .createFlow420Exception(message: message)
        default:
            return nil
        }
    }
}
