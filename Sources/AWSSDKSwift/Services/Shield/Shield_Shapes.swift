// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Shield {

    public struct AttackProperty: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Unit", required: false, type: .enum), 
            AWSShapeMember(label: "Total", required: false, type: .long), 
            AWSShapeMember(label: "TopContributors", required: false, type: .list), 
            AWSShapeMember(label: "AttackLayer", required: false, type: .enum), 
            AWSShapeMember(label: "AttackPropertyIdentifier", required: false, type: .enum)
        ]
        /// The unit of the Value of the contributions.
        public let unit: Unit?
        /// The total contributions made to this attack by all contributors, not just the five listed in the TopContributors list.
        public let total: Int64?
        /// The array of Contributor objects that includes the top five contributors to an attack. 
        public let topContributors: [Contributor]?
        /// The type of DDoS event that was observed. NETWORK indicates layer 3 and layer 4 events and APPLICATION indicates layer 7 events.
        public let attackLayer: AttackLayer?
        /// Defines the DDoS attack property information that is provided.
        public let attackPropertyIdentifier: AttackPropertyIdentifier?

        public init(unit: Unit? = nil, total: Int64? = nil, topContributors: [Contributor]? = nil, attackLayer: AttackLayer? = nil, attackPropertyIdentifier: AttackPropertyIdentifier? = nil) {
            self.unit = unit
            self.total = total
            self.topContributors = topContributors
            self.attackLayer = attackLayer
            self.attackPropertyIdentifier = attackPropertyIdentifier
        }

        private enum CodingKeys: String, CodingKey {
            case unit = "Unit"
            case total = "Total"
            case topContributors = "TopContributors"
            case attackLayer = "AttackLayer"
            case attackPropertyIdentifier = "AttackPropertyIdentifier"
        }
    }

    public enum AttackPropertyIdentifier: String, CustomStringConvertible, Codable {
        case destinationUrl = "DESTINATION_URL"
        case referrer = "REFERRER"
        case sourceAsn = "SOURCE_ASN"
        case sourceCountry = "SOURCE_COUNTRY"
        case sourceIpAddress = "SOURCE_IP_ADDRESS"
        case sourceUserAgent = "SOURCE_USER_AGENT"
        public var description: String { return self.rawValue }
    }

    public struct DisassociateDRTLogBucketResponse: AWSShape {

    }

    public struct AttackSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttackId", required: false, type: .string), 
            AWSShapeMember(label: "ResourceArn", required: false, type: .string), 
            AWSShapeMember(label: "StartTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "AttackVectors", required: false, type: .list), 
            AWSShapeMember(label: "EndTime", required: false, type: .timestamp)
        ]
        /// The unique identifier (ID) of the attack.
        public let attackId: String?
        /// The ARN (Amazon Resource Name) of the resource that was attacked.
        public let resourceArn: String?
        /// The start time of the attack, in Unix time in seconds. For more information see timestamp.
        public let startTime: TimeStamp?
        /// The list of attacks for a specified time period.
        public let attackVectors: [AttackVectorDescription]?
        /// The end time of the attack, in Unix time in seconds. For more information see timestamp.
        public let endTime: TimeStamp?

        public init(attackId: String? = nil, resourceArn: String? = nil, startTime: TimeStamp? = nil, attackVectors: [AttackVectorDescription]? = nil, endTime: TimeStamp? = nil) {
            self.attackId = attackId
            self.resourceArn = resourceArn
            self.startTime = startTime
            self.attackVectors = attackVectors
            self.endTime = endTime
        }

        private enum CodingKeys: String, CodingKey {
            case attackId = "AttackId"
            case resourceArn = "ResourceArn"
            case startTime = "StartTime"
            case attackVectors = "AttackVectors"
            case endTime = "EndTime"
        }
    }

    public struct SubResourceSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Type", required: false, type: .enum), 
            AWSShapeMember(label: "Counters", required: false, type: .list), 
            AWSShapeMember(label: "Id", required: false, type: .string), 
            AWSShapeMember(label: "AttackVectors", required: false, type: .list)
        ]
        /// The SubResource type.
        public let `type`: SubResourceType?
        /// The counters that describe the details of the attack.
        public let counters: [SummarizedCounter]?
        /// The unique identifier (ID) of the SubResource.
        public let id: String?
        /// The list of attack types and associated counters.
        public let attackVectors: [SummarizedAttackVector]?

        public init(type: SubResourceType? = nil, counters: [SummarizedCounter]? = nil, id: String? = nil, attackVectors: [SummarizedAttackVector]? = nil) {
            self.`type` = `type`
            self.counters = counters
            self.id = id
            self.attackVectors = attackVectors
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
            case counters = "Counters"
            case id = "Id"
            case attackVectors = "AttackVectors"
        }
    }

    public struct AttackVectorDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VectorType", required: true, type: .string)
        ]
        /// The attack type. Valid values:   UDP_TRAFFIC   UDP_FRAGMENT   GENERIC_UDP_REFLECTION   DNS_REFLECTION   NTP_REFLECTION   CHARGEN_REFLECTION   SSDP_REFLECTION   PORT_MAPPER   RIP_REFLECTION   SNMP_REFLECTION   MSSQL_REFLECTION   NET_BIOS_REFLECTION   SYN_FLOOD   ACK_FLOOD   REQUEST_FLOOD  
        public let vectorType: String

        public init(vectorType: String) {
            self.vectorType = vectorType
        }

        private enum CodingKeys: String, CodingKey {
            case vectorType = "VectorType"
        }
    }

    public enum SubResourceType: String, CustomStringConvertible, Codable {
        case ip = "IP"
        case url = "URL"
        public var description: String { return self.rawValue }
    }

    public struct DescribeEmergencyContactSettingsRequest: AWSShape {

    }

    public struct UpdateSubscriptionResponse: AWSShape {

    }

    public struct AttackDetail: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StartTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Mitigations", required: false, type: .list), 
            AWSShapeMember(label: "AttackCounters", required: false, type: .list), 
            AWSShapeMember(label: "AttackProperties", required: false, type: .list), 
            AWSShapeMember(label: "AttackId", required: false, type: .string), 
            AWSShapeMember(label: "EndTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "SubResources", required: false, type: .list), 
            AWSShapeMember(label: "ResourceArn", required: false, type: .string)
        ]
        /// The time the attack started, in Unix time in seconds. For more information see timestamp.
        public let startTime: TimeStamp?
        /// List of mitigation actions taken for the attack.
        public let mitigations: [Mitigation]?
        /// List of counters that describe the attack for the specified time period.
        public let attackCounters: [SummarizedCounter]?
        /// The array of AttackProperty objects.
        public let attackProperties: [AttackProperty]?
        /// The unique identifier (ID) of the attack.
        public let attackId: String?
        /// The time the attack ended, in Unix time in seconds. For more information see timestamp.
        public let endTime: TimeStamp?
        /// If applicable, additional detail about the resource being attacked, for example, IP address or URL.
        public let subResources: [SubResourceSummary]?
        /// The ARN (Amazon Resource Name) of the resource that was attacked.
        public let resourceArn: String?

        public init(startTime: TimeStamp? = nil, mitigations: [Mitigation]? = nil, attackCounters: [SummarizedCounter]? = nil, attackProperties: [AttackProperty]? = nil, attackId: String? = nil, endTime: TimeStamp? = nil, subResources: [SubResourceSummary]? = nil, resourceArn: String? = nil) {
            self.startTime = startTime
            self.mitigations = mitigations
            self.attackCounters = attackCounters
            self.attackProperties = attackProperties
            self.attackId = attackId
            self.endTime = endTime
            self.subResources = subResources
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case mitigations = "Mitigations"
            case attackCounters = "AttackCounters"
            case attackProperties = "AttackProperties"
            case attackId = "AttackId"
            case endTime = "EndTime"
            case subResources = "SubResources"
            case resourceArn = "ResourceArn"
        }
    }

    public struct DisassociateDRTRoleRequest: AWSShape {

    }

    public struct DescribeDRTAccessRequest: AWSShape {

    }

    public struct AssociateDRTRoleRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "RoleArn", required: true, type: .string)
        ]
        /// The Amazon Resource Name (ARN) of the role the DRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to this role. For more information see Attaching and Detaching IAM Policies.
        public let roleArn: String

        public init(roleArn: String) {
            self.roleArn = roleArn
        }

        private enum CodingKeys: String, CodingKey {
            case roleArn = "RoleArn"
        }
    }

    public struct Contributor: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: false, type: .long), 
            AWSShapeMember(label: "Name", required: false, type: .string)
        ]
        /// The contribution of this contributor expressed in Protection units. For example 10,000.
        public let value: Int64?
        /// The name of the contributor. This is dependent on the AttackPropertyIdentifier. For example, if the AttackPropertyIdentifier is SOURCE_COUNTRY, the Name could be United States.
        public let name: String?

        public init(value: Int64? = nil, name: String? = nil) {
            self.value = value
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case name = "Name"
        }
    }

    public struct DisassociateDRTRoleResponse: AWSShape {

    }

    public struct Subscription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TimeCommitmentInSeconds", required: false, type: .long), 
            AWSShapeMember(label: "AutoRenew", required: false, type: .enum), 
            AWSShapeMember(label: "StartTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Limits", required: false, type: .list), 
            AWSShapeMember(label: "EndTime", required: false, type: .timestamp)
        ]
        /// The length, in seconds, of the AWS Shield Advanced subscription for the account.
        public let timeCommitmentInSeconds: Int64?
        /// If ENABLED, the subscription will be automatically renewed at the end of the existing subscription period. When you initally create a subscription, AutoRenew is set to ENABLED. You can change this by submitting an UpdateSubscription request. If the UpdateSubscription request does not included a value for AutoRenew, the existing value for AutoRenew remains unchanged.
        public let autoRenew: AutoRenew?
        /// The start time of the subscription, in Unix time in seconds. For more information see timestamp.
        public let startTime: TimeStamp?
        /// Specifies how many protections of a given type you can create.
        public let limits: [Limit]?
        /// The date and time your subscription will end.
        public let endTime: TimeStamp?

        public init(timeCommitmentInSeconds: Int64? = nil, autoRenew: AutoRenew? = nil, startTime: TimeStamp? = nil, limits: [Limit]? = nil, endTime: TimeStamp? = nil) {
            self.timeCommitmentInSeconds = timeCommitmentInSeconds
            self.autoRenew = autoRenew
            self.startTime = startTime
            self.limits = limits
            self.endTime = endTime
        }

        private enum CodingKeys: String, CodingKey {
            case timeCommitmentInSeconds = "TimeCommitmentInSeconds"
            case autoRenew = "AutoRenew"
            case startTime = "StartTime"
            case limits = "Limits"
            case endTime = "EndTime"
        }
    }

    public struct Mitigation: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MitigationName", required: false, type: .string)
        ]
        /// The name of the mitigation taken for this attack.
        public let mitigationName: String?

        public init(mitigationName: String? = nil) {
            self.mitigationName = mitigationName
        }

        private enum CodingKeys: String, CodingKey {
            case mitigationName = "MitigationName"
        }
    }

    public struct DeleteProtectionResponse: AWSShape {

    }

    public struct AssociateDRTRoleResponse: AWSShape {

    }

    public struct DeleteSubscriptionResponse: AWSShape {

    }

    public struct ListAttacksResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttackSummaries", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The attack information for the specified time range.
        public let attackSummaries: [AttackSummary]?
        /// The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the NextMarker parameter in a subsequent call to ListAttacks to retrieve the next set of items. AWS WAF might return the list of AttackSummary objects in batches smaller than the number specified by MaxResults. If there are more AttackSummary objects to return, AWS WAF will always also return a NextToken.
        public let nextToken: String?

        public init(attackSummaries: [AttackSummary]? = nil, nextToken: String? = nil) {
            self.attackSummaries = attackSummaries
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case attackSummaries = "AttackSummaries"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeProtectionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Protection", required: false, type: .structure)
        ]
        /// The Protection object that is described.
        public let protection: Protection?

        public init(protection: Protection? = nil) {
            self.protection = protection
        }

        private enum CodingKeys: String, CodingKey {
            case protection = "Protection"
        }
    }

    public struct AssociateDRTLogBucketRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "LogBucket", required: true, type: .string)
        ]
        /// The Amazon S3 bucket that contains your flow logs.
        public let logBucket: String

        public init(logBucket: String) {
            self.logBucket = logBucket
        }

        private enum CodingKeys: String, CodingKey {
            case logBucket = "LogBucket"
        }
    }

    public struct DisassociateDRTLogBucketRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "LogBucket", required: true, type: .string)
        ]
        /// The Amazon S3 bucket that contains your flow logs.
        public let logBucket: String

        public init(logBucket: String) {
            self.logBucket = logBucket
        }

        private enum CodingKeys: String, CodingKey {
            case logBucket = "LogBucket"
        }
    }

    public struct UpdateSubscriptionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AutoRenew", required: false, type: .enum)
        ]
        /// When you initally create a subscription, AutoRenew is set to ENABLED. If ENABLED, the subscription will be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request. If the UpdateSubscription request does not included a value for AutoRenew, the existing value for AutoRenew remains unchanged.
        public let autoRenew: AutoRenew?

        public init(autoRenew: AutoRenew? = nil) {
            self.autoRenew = autoRenew
        }

        private enum CodingKeys: String, CodingKey {
            case autoRenew = "AutoRenew"
        }
    }

    public struct DescribeSubscriptionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Subscription", required: false, type: .structure)
        ]
        /// The AWS Shield Advanced subscription details for an account.
        public let subscription: Subscription?

        public init(subscription: Subscription? = nil) {
            self.subscription = subscription
        }

        private enum CodingKeys: String, CodingKey {
            case subscription = "Subscription"
        }
    }

    public struct DescribeDRTAccessResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "RoleArn", required: false, type: .string), 
            AWSShapeMember(label: "LogBucketList", required: false, type: .list)
        ]
        /// The Amazon Resource Name (ARN) of the role the DRT used to access your AWS account.
        public let roleArn: String?
        /// The list of Amazon S3 buckets accessed by the DRT.
        public let logBucketList: [String]?

        public init(roleArn: String? = nil, logBucketList: [String]? = nil) {
            self.roleArn = roleArn
            self.logBucketList = logBucketList
        }

        private enum CodingKeys: String, CodingKey {
            case roleArn = "RoleArn"
            case logBucketList = "LogBucketList"
        }
    }

    public enum AutoRenew: String, CustomStringConvertible, Codable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        public var description: String { return self.rawValue }
    }

    public struct DeleteSubscriptionRequest: AWSShape {

    }

    public struct CreateSubscriptionResponse: AWSShape {

    }

    public struct CreateSubscriptionRequest: AWSShape {

    }

    public struct DescribeSubscriptionRequest: AWSShape {

    }

    public struct DeleteProtectionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProtectionId", required: true, type: .string)
        ]
        /// The unique identifier (ID) for the Protection object to be deleted.
        public let protectionId: String

        public init(protectionId: String) {
            self.protectionId = protectionId
        }

        private enum CodingKeys: String, CodingKey {
            case protectionId = "ProtectionId"
        }
    }

    public struct UpdateEmergencyContactSettingsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EmergencyContactList", required: false, type: .list)
        ]
        /// A list of email addresses that the DRT can use to contact you during a suspected attack.
        public let emergencyContactList: [EmergencyContact]?

        public init(emergencyContactList: [EmergencyContact]? = nil) {
            self.emergencyContactList = emergencyContactList
        }

        private enum CodingKeys: String, CodingKey {
            case emergencyContactList = "EmergencyContactList"
        }
    }

    public struct SummarizedAttackVector: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VectorType", required: true, type: .string), 
            AWSShapeMember(label: "VectorCounters", required: false, type: .list)
        ]
        /// The attack type, for example, SNMP reflection or SYN flood.
        public let vectorType: String
        /// The list of counters that describe the details of the attack.
        public let vectorCounters: [SummarizedCounter]?

        public init(vectorType: String, vectorCounters: [SummarizedCounter]? = nil) {
            self.vectorType = vectorType
            self.vectorCounters = vectorCounters
        }

        private enum CodingKeys: String, CodingKey {
            case vectorType = "VectorType"
            case vectorCounters = "VectorCounters"
        }
    }

    public struct GetSubscriptionStateResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SubscriptionState", required: true, type: .enum)
        ]
        /// The status of the subscription.
        public let subscriptionState: SubscriptionState

        public init(subscriptionState: SubscriptionState) {
            self.subscriptionState = subscriptionState
        }

        private enum CodingKeys: String, CodingKey {
            case subscriptionState = "SubscriptionState"
        }
    }

    public struct AssociateDRTLogBucketResponse: AWSShape {

    }

    public struct ListProtectionsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Protections", required: false, type: .list)
        ]
        /// If you specify a value for MaxResults and you have more Protections than the value of MaxResults, AWS Shield Advanced returns a NextToken value in the response that allows you to list another group of Protections. For the second and subsequent ListProtections requests, specify the value of NextToken from the previous response to get information about another batch of Protections. AWS WAF might return the list of Protection objects in batches smaller than the number specified by MaxResults. If there are more Protection objects to return, AWS WAF will always also return a NextToken.
        public let nextToken: String?
        /// The array of enabled Protection objects.
        public let protections: [Protection]?

        public init(nextToken: String? = nil, protections: [Protection]? = nil) {
            self.nextToken = nextToken
            self.protections = protections
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case protections = "Protections"
        }
    }

    public struct ListProtectionsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The maximum number of Protection objects to be returned. If this is left blank the first 20 results will be returned. This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of Protection objects returned could be less than MaxResults, even if there are still more Protection objects yet to return. If there are more Protection objects to return, AWS WAF will always also return a NextToken.
        public let maxResults: Int32?
        /// The ListProtectionsRequest.NextToken value from a previous call to ListProtections. Pass null if this is the first call.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public enum AttackLayer: String, CustomStringConvertible, Codable {
        case network = "NETWORK"
        case application = "APPLICATION"
        public var description: String { return self.rawValue }
    }

    public struct DescribeAttackRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttackId", required: true, type: .string)
        ]
        /// The unique identifier (ID) for the attack that to be described.
        public let attackId: String

        public init(attackId: String) {
            self.attackId = attackId
        }

        private enum CodingKeys: String, CodingKey {
            case attackId = "AttackId"
        }
    }

    public struct DescribeEmergencyContactSettingsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EmergencyContactList", required: false, type: .list)
        ]
        /// A list of email addresses that the DRT can use to contact you during a suspected attack.
        public let emergencyContactList: [EmergencyContact]?

        public init(emergencyContactList: [EmergencyContact]? = nil) {
            self.emergencyContactList = emergencyContactList
        }

        private enum CodingKeys: String, CodingKey {
            case emergencyContactList = "EmergencyContactList"
        }
    }

    public struct CreateProtectionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "ResourceArn", required: true, type: .string)
        ]
        /// Friendly name for the Protection you are creating.
        public let name: String
        /// The ARN (Amazon Resource Name) of the resource to be protected. The ARN should be in one of the following formats:   For an Application Load Balancer: arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id     For an Elastic Load Balancer (Classic Load Balancer): arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name     For AWS CloudFront distribution: arn:aws:cloudfront::account-id:distribution/distribution-id     For Amazon Route 53: arn:aws:route53:::hostedzone/hosted-zone-id     For an Elastic IP address: arn:aws:ec2:region:account-id:eip-allocation/allocation-id    
        public let resourceArn: String

        public init(name: String, resourceArn: String) {
            self.name = name
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case resourceArn = "ResourceArn"
        }
    }

    public struct UpdateEmergencyContactSettingsResponse: AWSShape {

    }

    public enum SubscriptionState: String, CustomStringConvertible, Codable {
        case active = "ACTIVE"
        case inactive = "INACTIVE"
        public var description: String { return self.rawValue }
    }

    public struct GetSubscriptionStateRequest: AWSShape {

    }

    public struct Protection: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceArn", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Id", required: false, type: .string)
        ]
        /// The ARN (Amazon Resource Name) of the AWS resource that is protected.
        public let resourceArn: String?
        /// The friendly name of the protection. For example, My CloudFront distributions.
        public let name: String?
        /// The unique identifier (ID) of the protection.
        public let id: String?

        public init(resourceArn: String? = nil, name: String? = nil, id: String? = nil) {
            self.resourceArn = resourceArn
            self.name = name
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case name = "Name"
            case id = "Id"
        }
    }

    public struct TimeRange: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ToExclusive", required: false, type: .timestamp), 
            AWSShapeMember(label: "FromInclusive", required: false, type: .timestamp)
        ]
        /// The end time, in Unix time in seconds. For more information see timestamp.
        public let toExclusive: TimeStamp?
        /// The start time, in Unix time in seconds. For more information see timestamp.
        public let fromInclusive: TimeStamp?

        public init(toExclusive: TimeStamp? = nil, fromInclusive: TimeStamp? = nil) {
            self.toExclusive = toExclusive
            self.fromInclusive = fromInclusive
        }

        private enum CodingKeys: String, CodingKey {
            case toExclusive = "ToExclusive"
            case fromInclusive = "FromInclusive"
        }
    }

    public struct CreateProtectionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProtectionId", required: false, type: .string)
        ]
        /// The unique identifier (ID) for the Protection object that is created.
        public let protectionId: String?

        public init(protectionId: String? = nil) {
            self.protectionId = protectionId
        }

        private enum CodingKeys: String, CodingKey {
            case protectionId = "ProtectionId"
        }
    }

    public struct EmergencyContact: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EmailAddress", required: true, type: .string)
        ]
        /// An email address that the DRT can use to contact you during a suspected attack.
        public let emailAddress: String

        public init(emailAddress: String) {
            self.emailAddress = emailAddress
        }

        private enum CodingKeys: String, CodingKey {
            case emailAddress = "EmailAddress"
        }
    }

    public struct DescribeProtectionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProtectionId", required: true, type: .string)
        ]
        /// The unique identifier (ID) for the Protection object that is described.
        public let protectionId: String

        public init(protectionId: String) {
            self.protectionId = protectionId
        }

        private enum CodingKeys: String, CodingKey {
            case protectionId = "ProtectionId"
        }
    }

    public struct SummarizedCounter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Average", required: false, type: .double), 
            AWSShapeMember(label: "Unit", required: false, type: .string), 
            AWSShapeMember(label: "N", required: false, type: .integer), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Sum", required: false, type: .double), 
            AWSShapeMember(label: "Max", required: false, type: .double)
        ]
        /// The average value of the counter for a specified time period.
        public let average: Double?
        /// The unit of the counters.
        public let unit: String?
        /// The number of counters for a specified time period.
        public let n: Int32?
        /// The counter name.
        public let name: String?
        /// The total of counter values for a specified time period.
        public let sum: Double?
        /// The maximum value of the counter for a specified time period.
        public let max: Double?

        public init(average: Double? = nil, unit: String? = nil, n: Int32? = nil, name: String? = nil, sum: Double? = nil, max: Double? = nil) {
            self.average = average
            self.unit = unit
            self.n = n
            self.name = name
            self.sum = sum
            self.max = max
        }

        private enum CodingKeys: String, CodingKey {
            case average = "Average"
            case unit = "Unit"
            case n = "N"
            case name = "Name"
            case sum = "Sum"
            case max = "Max"
        }
    }

    public struct Limit: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Max", required: false, type: .long), 
            AWSShapeMember(label: "Type", required: false, type: .string)
        ]
        /// The maximum number of protections that can be created for the specified Type.
        public let max: Int64?
        /// The type of protection.
        public let `type`: String?

        public init(max: Int64? = nil, type: String? = nil) {
            self.max = max
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case max = "Max"
            case `type` = "Type"
        }
    }

    public struct DescribeAttackResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Attack", required: false, type: .structure)
        ]
        /// The attack that is described.
        public let attack: AttackDetail?

        public init(attack: AttackDetail? = nil) {
            self.attack = attack
        }

        private enum CodingKeys: String, CodingKey {
            case attack = "Attack"
        }
    }

    public enum Unit: String, CustomStringConvertible, Codable {
        case bits = "BITS"
        case bytes = "BYTES"
        case packets = "PACKETS"
        case requests = "REQUESTS"
        public var description: String { return self.rawValue }
    }

    public struct ListAttacksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "StartTime", required: false, type: .structure), 
            AWSShapeMember(label: "EndTime", required: false, type: .structure), 
            AWSShapeMember(label: "ResourceArns", required: false, type: .list), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer)
        ]
        /// The ListAttacksRequest.NextMarker value from a previous call to ListAttacksRequest. Pass null if this is the first call.
        public let nextToken: String?
        /// The start of the time period for the attacks. This is a timestamp type. The sample request above indicates a number type because the default used by WAF is Unix time in seconds. However any valid timestamp format is allowed. 
        public let startTime: TimeRange?
        /// The end of the time period for the attacks. This is a timestamp type. The sample request above indicates a number type because the default used by WAF is Unix time in seconds. However any valid timestamp format is allowed. 
        public let endTime: TimeRange?
        /// The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.
        public let resourceArns: [String]?
        /// The maximum number of AttackSummary objects to be returned. If this is left blank, the first 20 results will be returned. This is a maximum value; it is possible that AWS WAF will return the results in smaller batches. That is, the number of AttackSummary objects returned could be less than MaxResults, even if there are still more AttackSummary objects yet to return. If there are more AttackSummary objects to return, AWS WAF will always also return a NextToken.
        public let maxResults: Int32?

        public init(nextToken: String? = nil, startTime: TimeRange? = nil, endTime: TimeRange? = nil, resourceArns: [String]? = nil, maxResults: Int32? = nil) {
            self.nextToken = nextToken
            self.startTime = startTime
            self.endTime = endTime
            self.resourceArns = resourceArns
            self.maxResults = maxResults
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case resourceArns = "ResourceArns"
            case maxResults = "MaxResults"
        }
    }

}