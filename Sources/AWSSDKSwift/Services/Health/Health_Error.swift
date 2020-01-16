// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Health
public enum HealthErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case invalidPaginationToken(message: String?)
    case unsupportedLocale(message: String?)
}

extension HealthErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InvalidPaginationToken":
            self = .invalidPaginationToken(message: message)
        case "UnsupportedLocale":
            self = .unsupportedLocale(message: message)
        default:
            return nil
        }
    }
}

extension HealthErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .invalidPaginationToken(let message):
            return "InvalidPaginationToken: \(message ?? "")"
        case .unsupportedLocale(let message):
            return "UnsupportedLocale: \(message ?? "")"
        }
    }
}
