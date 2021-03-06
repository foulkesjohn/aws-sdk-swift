// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MachineLearning
public enum MachineLearningErrorType: AWSErrorType {
    case invalidInputException(message: String?)
    case internalServerException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case resourceNotFoundException(message: String?)
    case invalidTagException(message: String?)
    case tagLimitExceededException(message: String?)
    case limitExceededException(message: String?)
    case predictorNotMountedException(message: String?)
}

extension MachineLearningErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "PredictorNotMountedException":
            self = .predictorNotMountedException(message: message)
        default:
            return nil
        }
    }
}
