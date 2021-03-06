// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Comprehend
public enum ComprehendErrorType: AWSErrorType {
    case invalidRequestException(message: String?)
    case tooManyRequestsException(message: String?)
    case internalServerException(message: String?)
    case textSizeLimitExceededException(message: String?)
    case unsupportedLanguageException(message: String?)
    case batchSizeLimitExceededException(message: String?)
    case jobNotFoundException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceInUseException(message: String?)
    case resourceLimitExceededException(message: String?)
    case resourceUnavailableException(message: String?)
    case invalidFilterException(message: String?)
}

extension ComprehendErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "TextSizeLimitExceededException":
            self = .textSizeLimitExceededException(message: message)
        case "UnsupportedLanguageException":
            self = .unsupportedLanguageException(message: message)
        case "BatchSizeLimitExceededException":
            self = .batchSizeLimitExceededException(message: message)
        case "JobNotFoundException":
            self = .jobNotFoundException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "InvalidFilterException":
            self = .invalidFilterException(message: message)
        default:
            return nil
        }
    }
}
