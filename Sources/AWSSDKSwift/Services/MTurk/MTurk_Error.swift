// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MTurk
public enum MTurkErrorType: AWSErrorType {
    case serviceFault(message: String?)
    case requestError(message: String?)
}

extension MTurkErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ServiceFault":
            self = .serviceFault(message: message)
        case "RequestError":
            self = .requestError(message: message)
        default:
            return nil
        }
    }
}
