// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KinesisVideoSignalingChannels
public enum KinesisVideoSignalingChannelsErrorType: AWSErrorType {
    case clientLimitExceededException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidClientException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceNotFoundException(message: String?)
    case sessionExpiredException(message: String?)
}

extension KinesisVideoSignalingChannelsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClientLimitExceededException":
            self = .clientLimitExceededException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidClientException":
            self = .invalidClientException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "SessionExpiredException":
            self = .sessionExpiredException(message: message)
        default:
            return nil
        }
    }
}

extension KinesisVideoSignalingChannelsErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .clientLimitExceededException(let message):
            return "ClientLimitExceededException: \(message ?? "")"
        case .invalidArgumentException(let message):
            return "InvalidArgumentException: \(message ?? "")"
        case .invalidClientException(let message):
            return "InvalidClientException: \(message ?? "")"
        case .notAuthorizedException(let message):
            return "NotAuthorizedException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .sessionExpiredException(let message):
            return "SessionExpiredException: \(message ?? "")"
        }
    }
}
