// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Cloudformation
public enum CloudformationError: AWSErrorType {
    case stackSetNotEmptyException(message: String?)
    case operationInProgressException(message: String?)
    case stackSetNotFoundException(message: String?)
    case operationIdAlreadyExistsException(message: String?)
    case staleRequestException(message: String?)
    case invalidOperationException(message: String?)
    case limitExceededException(message: String?)
    case operationNotFoundException(message: String?)
    case tokenAlreadyExistsException(message: String?)
    case stackInstanceNotFoundException(message: String?)
    case changeSetNotFoundException(message: String?)
    case alreadyExistsException(message: String?)
    case insufficientCapabilitiesException(message: String?)
    case nameAlreadyExistsException(message: String?)
    case createdButModifiedException(message: String?)
    case invalidChangeSetStatusException(message: String?)
}

extension CloudformationError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "StackSetNotEmptyException":
            self = .stackSetNotEmptyException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "StackSetNotFoundException":
            self = .stackSetNotFoundException(message: message)
        case "OperationIdAlreadyExistsException":
            self = .operationIdAlreadyExistsException(message: message)
        case "StaleRequestException":
            self = .staleRequestException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "OperationNotFoundException":
            self = .operationNotFoundException(message: message)
        case "TokenAlreadyExistsException":
            self = .tokenAlreadyExistsException(message: message)
        case "StackInstanceNotFoundException":
            self = .stackInstanceNotFoundException(message: message)
        case "ChangeSetNotFoundException":
            self = .changeSetNotFoundException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "InsufficientCapabilitiesException":
            self = .insufficientCapabilitiesException(message: message)
        case "NameAlreadyExistsException":
            self = .nameAlreadyExistsException(message: message)
        case "CreatedButModifiedException":
            self = .createdButModifiedException(message: message)
        case "InvalidChangeSetStatusException":
            self = .invalidChangeSetStatusException(message: message)
        default:
            return nil
        }
    }
}