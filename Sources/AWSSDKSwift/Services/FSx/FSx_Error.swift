// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for FSx
public enum FSxErrorType: AWSErrorType {
    case badRequest(message: String?)
    case fileSystemNotFound(message: String?)
    case backupInProgress(message: String?)
    case incompatibleParameterError(message: String?)
    case serviceLimitExceeded(message: String?)
    case internalServerError(message: String?)
    case backupNotFound(message: String?)
    case resourceNotFound(message: String?)
    case notServiceResourceError(message: String?)
    case resourceDoesNotSupportTagging(message: String?)
    case backupRestoring(message: String?)
    case activeDirectoryError(message: String?)
    case invalidNetworkSettings(message: String?)
    case missingFileSystemConfiguration(message: String?)
    case invalidImportPath(message: String?)
}

extension FSxErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequest":
            self = .badRequest(message: message)
        case "FileSystemNotFound":
            self = .fileSystemNotFound(message: message)
        case "BackupInProgress":
            self = .backupInProgress(message: message)
        case "IncompatibleParameterError":
            self = .incompatibleParameterError(message: message)
        case "ServiceLimitExceeded":
            self = .serviceLimitExceeded(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "BackupNotFound":
            self = .backupNotFound(message: message)
        case "ResourceNotFound":
            self = .resourceNotFound(message: message)
        case "NotServiceResourceError":
            self = .notServiceResourceError(message: message)
        case "ResourceDoesNotSupportTagging":
            self = .resourceDoesNotSupportTagging(message: message)
        case "BackupRestoring":
            self = .backupRestoring(message: message)
        case "ActiveDirectoryError":
            self = .activeDirectoryError(message: message)
        case "InvalidNetworkSettings":
            self = .invalidNetworkSettings(message: message)
        case "MissingFileSystemConfiguration":
            self = .missingFileSystemConfiguration(message: message)
        case "InvalidImportPath":
            self = .invalidImportPath(message: message)
        default:
            return nil
        }
    }
}
