// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Athena {

    public struct BatchGetNamedQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQueryIds", required: true, type: .list)
        ]
        /// An array of query IDs.
        public let namedQueryIds: [String]

        public init(namedQueryIds: [String]) {
            self.namedQueryIds = namedQueryIds
        }

        private enum CodingKeys: String, CodingKey {
            case namedQueryIds = "NamedQueryIds"
        }
    }

    public struct BatchGetNamedQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQueries", required: false, type: .list), 
            AWSShapeMember(label: "UnprocessedNamedQueryIds", required: false, type: .list)
        ]
        /// Information about the named query IDs submitted.
        public let namedQueries: [NamedQuery]?
        /// Information about provided query IDs.
        public let unprocessedNamedQueryIds: [UnprocessedNamedQueryId]?

        public init(namedQueries: [NamedQuery]? = nil, unprocessedNamedQueryIds: [UnprocessedNamedQueryId]? = nil) {
            self.namedQueries = namedQueries
            self.unprocessedNamedQueryIds = unprocessedNamedQueryIds
        }

        private enum CodingKeys: String, CodingKey {
            case namedQueries = "NamedQueries"
            case unprocessedNamedQueryIds = "UnprocessedNamedQueryIds"
        }
    }

    public struct BatchGetQueryExecutionInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "QueryExecutionIds", required: true, type: .list)
        ]
        /// An array of query execution IDs.
        public let queryExecutionIds: [String]

        public init(queryExecutionIds: [String]) {
            self.queryExecutionIds = queryExecutionIds
        }

        private enum CodingKeys: String, CodingKey {
            case queryExecutionIds = "QueryExecutionIds"
        }
    }

    public struct BatchGetQueryExecutionOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "QueryExecutions", required: false, type: .list), 
            AWSShapeMember(label: "UnprocessedQueryExecutionIds", required: false, type: .list)
        ]
        /// Information about a query execution.
        public let queryExecutions: [QueryExecution]?
        /// Information about the query executions that failed to run.
        public let unprocessedQueryExecutionIds: [UnprocessedQueryExecutionId]?

        public init(queryExecutions: [QueryExecution]? = nil, unprocessedQueryExecutionIds: [UnprocessedQueryExecutionId]? = nil) {
            self.queryExecutions = queryExecutions
            self.unprocessedQueryExecutionIds = unprocessedQueryExecutionIds
        }

        private enum CodingKeys: String, CodingKey {
            case queryExecutions = "QueryExecutions"
            case unprocessedQueryExecutionIds = "UnprocessedQueryExecutionIds"
        }
    }

    public struct ColumnInfo: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CaseSensitive", required: false, type: .boolean), 
            AWSShapeMember(label: "CatalogName", required: false, type: .string), 
            AWSShapeMember(label: "Label", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "Nullable", required: false, type: .enum), 
            AWSShapeMember(label: "Precision", required: false, type: .integer), 
            AWSShapeMember(label: "Scale", required: false, type: .integer), 
            AWSShapeMember(label: "SchemaName", required: false, type: .string), 
            AWSShapeMember(label: "TableName", required: false, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .string)
        ]
        /// Indicates whether values in the column are case-sensitive.
        public let caseSensitive: Bool?
        /// The catalog to which the query results belong.
        public let catalogName: String?
        /// A column label.
        public let label: String?
        /// The name of the column.
        public let name: String
        /// Indicates the column's nullable status.
        public let nullable: ColumnNullable?
        /// For DECIMAL data types, specifies the total number of digits, up to 38. For performance reasons, we recommend up to 18 digits.
        public let precision: Int32?
        /// For DECIMAL data types, specifies the total number of digits in the fractional part of the value. Defaults to 0.
        public let scale: Int32?
        /// The schema name (database name) to which the query results belong.
        public let schemaName: String?
        /// The table name for the query results.
        public let tableName: String?
        /// The data type of the column.
        public let `type`: String

        public init(caseSensitive: Bool? = nil, catalogName: String? = nil, label: String? = nil, name: String, nullable: ColumnNullable? = nil, precision: Int32? = nil, scale: Int32? = nil, schemaName: String? = nil, tableName: String? = nil, type: String) {
            self.caseSensitive = caseSensitive
            self.catalogName = catalogName
            self.label = label
            self.name = name
            self.nullable = nullable
            self.precision = precision
            self.scale = scale
            self.schemaName = schemaName
            self.tableName = tableName
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case caseSensitive = "CaseSensitive"
            case catalogName = "CatalogName"
            case label = "Label"
            case name = "Name"
            case nullable = "Nullable"
            case precision = "Precision"
            case scale = "Scale"
            case schemaName = "SchemaName"
            case tableName = "TableName"
            case `type` = "Type"
        }
    }

    public enum ColumnNullable: String, CustomStringConvertible, Codable {
        case notNull = "NOT_NULL"
        case nullable = "NULLABLE"
        case unknown = "UNKNOWN"
        public var description: String { return self.rawValue }
    }

    public struct CreateNamedQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "Database", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "QueryString", required: true, type: .string)
        ]
        /// A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another CreateNamedQuery request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the QueryString, an error is returned.  This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail. 
        public let clientRequestToken: String?
        /// The database to which the query belongs.
        public let database: String
        /// A brief explanation of the query.
        public let description: String?
        /// The plain language name for the query.
        public let name: String
        /// The text of the query itself. In other words, all query statements.
        public let queryString: String

        public init(clientRequestToken: String? = nil, database: String, description: String? = nil, name: String, queryString: String) {
            self.clientRequestToken = clientRequestToken
            self.database = database
            self.description = description
            self.name = name
            self.queryString = queryString
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case database = "Database"
            case description = "Description"
            case name = "Name"
            case queryString = "QueryString"
        }
    }

    public struct CreateNamedQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQueryId", required: false, type: .string)
        ]
        /// The unique ID of the query.
        public let namedQueryId: String?

        public init(namedQueryId: String? = nil) {
            self.namedQueryId = namedQueryId
        }

        private enum CodingKeys: String, CodingKey {
            case namedQueryId = "NamedQueryId"
        }
    }

    public struct Datum: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VarCharValue", required: false, type: .string)
        ]
        /// The value of the datum.
        public let varCharValue: String?

        public init(varCharValue: String? = nil) {
            self.varCharValue = varCharValue
        }

        private enum CodingKeys: String, CodingKey {
            case varCharValue = "VarCharValue"
        }
    }

    public struct DeleteNamedQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQueryId", required: true, type: .string)
        ]
        /// The unique ID of the query to delete.
        public let namedQueryId: String

        public init(namedQueryId: String) {
            self.namedQueryId = namedQueryId
        }

        private enum CodingKeys: String, CodingKey {
            case namedQueryId = "NamedQueryId"
        }
    }

    public struct DeleteNamedQueryOutput: AWSShape {

        public init() {
        }

    }

    public struct EncryptionConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EncryptionOption", required: true, type: .enum), 
            AWSShapeMember(label: "KmsKey", required: false, type: .string)
        ]
        /// Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (SSE-S3), server-side encryption with KMS-managed keys (SSE-KMS), or client-side encryption with KMS-managed keys (CSE-KMS) is used.
        public let encryptionOption: EncryptionOption
        /// For SSE-KMS and CSE-KMS, this is the KMS key ARN or ID.
        public let kmsKey: String?

        public init(encryptionOption: EncryptionOption, kmsKey: String? = nil) {
            self.encryptionOption = encryptionOption
            self.kmsKey = kmsKey
        }

        private enum CodingKeys: String, CodingKey {
            case encryptionOption = "EncryptionOption"
            case kmsKey = "KmsKey"
        }
    }

    public enum EncryptionOption: String, CustomStringConvertible, Codable {
        case sseS3 = "SSE_S3"
        case sseKms = "SSE_KMS"
        case cseKms = "CSE_KMS"
        public var description: String { return self.rawValue }
    }

    public struct GetNamedQueryInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQueryId", required: true, type: .string)
        ]
        /// The unique ID of the query. Use ListNamedQueries to get query IDs.
        public let namedQueryId: String

        public init(namedQueryId: String) {
            self.namedQueryId = namedQueryId
        }

        private enum CodingKeys: String, CodingKey {
            case namedQueryId = "NamedQueryId"
        }
    }

    public struct GetNamedQueryOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQuery", required: false, type: .structure)
        ]
        /// Information about the query.
        public let namedQuery: NamedQuery?

        public init(namedQuery: NamedQuery? = nil) {
            self.namedQuery = namedQuery
        }

        private enum CodingKeys: String, CodingKey {
            case namedQuery = "NamedQuery"
        }
    }

    public struct GetQueryExecutionInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "QueryExecutionId", required: true, type: .string)
        ]
        /// The unique ID of the query execution.
        public let queryExecutionId: String

        public init(queryExecutionId: String) {
            self.queryExecutionId = queryExecutionId
        }

        private enum CodingKeys: String, CodingKey {
            case queryExecutionId = "QueryExecutionId"
        }
    }

    public struct GetQueryExecutionOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "QueryExecution", required: false, type: .structure)
        ]
        /// Information about the query execution.
        public let queryExecution: QueryExecution?

        public init(queryExecution: QueryExecution? = nil) {
            self.queryExecution = queryExecution
        }

        private enum CodingKeys: String, CodingKey {
            case queryExecution = "QueryExecution"
        }
    }

    public struct GetQueryResultsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "QueryExecutionId", required: true, type: .string)
        ]
        /// The maximum number of results (rows) to return in this request.
        public let maxResults: Int32?
        /// The token that specifies where to start pagination if a previous request was truncated.
        public let nextToken: String?
        /// The unique ID of the query execution.
        public let queryExecutionId: String

        public init(maxResults: Int32? = nil, nextToken: String? = nil, queryExecutionId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.queryExecutionId = queryExecutionId
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case queryExecutionId = "QueryExecutionId"
        }
    }

    public struct GetQueryResultsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "ResultSet", required: false, type: .structure), 
            AWSShapeMember(label: "UpdateCount", required: false, type: .long)
        ]
        /// A token to be used by the next request if this request is truncated.
        public let nextToken: String?
        /// The results of the query execution.
        public let resultSet: ResultSet?
        /// The number of rows inserted with a CREATE TABLE AS SELECT statement. 
        public let updateCount: Int64?

        public init(nextToken: String? = nil, resultSet: ResultSet? = nil, updateCount: Int64? = nil) {
            self.nextToken = nextToken
            self.resultSet = resultSet
            self.updateCount = updateCount
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case resultSet = "ResultSet"
            case updateCount = "UpdateCount"
        }
    }

    public struct ListNamedQueriesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The maximum number of queries to return in this request.
        public let maxResults: Int32?
        /// The token that specifies where to start pagination if a previous request was truncated.
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

    public struct ListNamedQueriesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NamedQueryIds", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The list of unique query IDs.
        public let namedQueryIds: [String]?
        /// A token to be used by the next request if this request is truncated.
        public let nextToken: String?

        public init(namedQueryIds: [String]? = nil, nextToken: String? = nil) {
            self.namedQueryIds = namedQueryIds
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case namedQueryIds = "NamedQueryIds"
            case nextToken = "NextToken"
        }
    }

    public struct ListQueryExecutionsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The maximum number of query executions to return in this request.
        public let maxResults: Int32?
        /// The token that specifies where to start pagination if a previous request was truncated.
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

    public struct ListQueryExecutionsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "QueryExecutionIds", required: false, type: .list)
        ]
        /// A token to be used by the next request if this request is truncated.
        public let nextToken: String?
        /// The unique IDs of each query execution as an array of strings.
        public let queryExecutionIds: [String]?

        public init(nextToken: String? = nil, queryExecutionIds: [String]? = nil) {
            self.nextToken = nextToken
            self.queryExecutionIds = queryExecutionIds
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case queryExecutionIds = "QueryExecutionIds"
        }
    }

    public struct NamedQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Database", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "NamedQueryId", required: false, type: .string), 
            AWSShapeMember(label: "QueryString", required: true, type: .string)
        ]
        /// The database to which the query belongs.
        public let database: String
        /// A brief description of the query.
        public let description: String?
        /// The plain-language name of the query.
        public let name: String
        /// The unique identifier of the query.
        public let namedQueryId: String?
        /// The SQL query statements that comprise the query.
        public let queryString: String

        public init(database: String, description: String? = nil, name: String, namedQueryId: String? = nil, queryString: String) {
            self.database = database
            self.description = description
            self.name = name
            self.namedQueryId = namedQueryId
            self.queryString = queryString
        }

        private enum CodingKeys: String, CodingKey {
            case database = "Database"
            case description = "Description"
            case name = "Name"
            case namedQueryId = "NamedQueryId"
            case queryString = "QueryString"
        }
    }

    public struct QueryExecution: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Query", required: false, type: .string), 
            AWSShapeMember(label: "QueryExecutionContext", required: false, type: .structure), 
            AWSShapeMember(label: "QueryExecutionId", required: false, type: .string), 
            AWSShapeMember(label: "ResultConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "StatementType", required: false, type: .enum), 
            AWSShapeMember(label: "Statistics", required: false, type: .structure), 
            AWSShapeMember(label: "Status", required: false, type: .structure)
        ]
        /// The SQL query statements which the query execution ran.
        public let query: String?
        /// The database in which the query execution occurred.
        public let queryExecutionContext: QueryExecutionContext?
        /// The unique identifier for each query execution.
        public let queryExecutionId: String?
        /// The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results.
        public let resultConfiguration: ResultConfiguration?
        /// The type of query statement that was run. DDL indicates DDL query statements. DML indicates DML (Data Manipulation Language) query statements, such as CREATE TABLE AS SELECT. UTILITY indicates query statements other than DDL and DML, such as SHOW CREATE TABLE, or DESCRIBE &lt;table&gt;.
        public let statementType: StatementType?
        /// The amount of data scanned during the query execution and the amount of time that it took to execute, and the type of statement that was run.
        public let statistics: QueryExecutionStatistics?
        /// The completion date, current state, submission time, and state change reason (if applicable) for the query execution.
        public let status: QueryExecutionStatus?

        public init(query: String? = nil, queryExecutionContext: QueryExecutionContext? = nil, queryExecutionId: String? = nil, resultConfiguration: ResultConfiguration? = nil, statementType: StatementType? = nil, statistics: QueryExecutionStatistics? = nil, status: QueryExecutionStatus? = nil) {
            self.query = query
            self.queryExecutionContext = queryExecutionContext
            self.queryExecutionId = queryExecutionId
            self.resultConfiguration = resultConfiguration
            self.statementType = statementType
            self.statistics = statistics
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case query = "Query"
            case queryExecutionContext = "QueryExecutionContext"
            case queryExecutionId = "QueryExecutionId"
            case resultConfiguration = "ResultConfiguration"
            case statementType = "StatementType"
            case statistics = "Statistics"
            case status = "Status"
        }
    }

    public struct QueryExecutionContext: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Database", required: false, type: .string)
        ]
        /// The name of the database.
        public let database: String?

        public init(database: String? = nil) {
            self.database = database
        }

        private enum CodingKeys: String, CodingKey {
            case database = "Database"
        }
    }

    public enum QueryExecutionState: String, CustomStringConvertible, Codable {
        case queued = "QUEUED"
        case running = "RUNNING"
        case succeeded = "SUCCEEDED"
        case failed = "FAILED"
        case cancelled = "CANCELLED"
        public var description: String { return self.rawValue }
    }

    public struct QueryExecutionStatistics: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataScannedInBytes", required: false, type: .long), 
            AWSShapeMember(label: "EngineExecutionTimeInMillis", required: false, type: .long)
        ]
        /// The number of bytes in the data that was queried.
        public let dataScannedInBytes: Int64?
        /// The number of milliseconds that the query took to execute.
        public let engineExecutionTimeInMillis: Int64?

        public init(dataScannedInBytes: Int64? = nil, engineExecutionTimeInMillis: Int64? = nil) {
            self.dataScannedInBytes = dataScannedInBytes
            self.engineExecutionTimeInMillis = engineExecutionTimeInMillis
        }

        private enum CodingKeys: String, CodingKey {
            case dataScannedInBytes = "DataScannedInBytes"
            case engineExecutionTimeInMillis = "EngineExecutionTimeInMillis"
        }
    }

    public struct QueryExecutionStatus: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CompletionDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "State", required: false, type: .enum), 
            AWSShapeMember(label: "StateChangeReason", required: false, type: .string), 
            AWSShapeMember(label: "SubmissionDateTime", required: false, type: .timestamp)
        ]
        /// The date and time that the query completed.
        public let completionDateTime: TimeStamp?
        /// The state of query execution. QUEUED state is listed but is not used by Athena and is reserved for future use. RUNNING indicates that the query has been submitted to the service, and Athena will execute the query as soon as resources are available. SUCCEEDED indicates that the query completed without error. FAILED indicates that the query experienced an error and did not complete processing.CANCELLED indicates that user input interrupted query execution. 
        public let state: QueryExecutionState?
        /// Further detail about the status of the query.
        public let stateChangeReason: String?
        /// The date and time that the query was submitted.
        public let submissionDateTime: TimeStamp?

        public init(completionDateTime: TimeStamp? = nil, state: QueryExecutionState? = nil, stateChangeReason: String? = nil, submissionDateTime: TimeStamp? = nil) {
            self.completionDateTime = completionDateTime
            self.state = state
            self.stateChangeReason = stateChangeReason
            self.submissionDateTime = submissionDateTime
        }

        private enum CodingKeys: String, CodingKey {
            case completionDateTime = "CompletionDateTime"
            case state = "State"
            case stateChangeReason = "StateChangeReason"
            case submissionDateTime = "SubmissionDateTime"
        }
    }

    public struct ResultConfiguration: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EncryptionConfiguration", required: false, type: .structure), 
            AWSShapeMember(label: "OutputLocation", required: true, type: .string)
        ]
        /// If query results are encrypted in Amazon S3, indicates the encryption option used (for example, SSE-KMS or CSE-KMS) and key information.
        public let encryptionConfiguration: EncryptionConfiguration?
        /// The location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/. For more information, see Queries and Query Result Files.  
        public let outputLocation: String

        public init(encryptionConfiguration: EncryptionConfiguration? = nil, outputLocation: String) {
            self.encryptionConfiguration = encryptionConfiguration
            self.outputLocation = outputLocation
        }

        private enum CodingKeys: String, CodingKey {
            case encryptionConfiguration = "EncryptionConfiguration"
            case outputLocation = "OutputLocation"
        }
    }

    public struct ResultSet: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResultSetMetadata", required: false, type: .structure), 
            AWSShapeMember(label: "Rows", required: false, type: .list)
        ]
        /// The metadata that describes the column structure and data types of a table of query results.
        public let resultSetMetadata: ResultSetMetadata?
        /// The rows in the table.
        public let rows: [Row]?

        public init(resultSetMetadata: ResultSetMetadata? = nil, rows: [Row]? = nil) {
            self.resultSetMetadata = resultSetMetadata
            self.rows = rows
        }

        private enum CodingKeys: String, CodingKey {
            case resultSetMetadata = "ResultSetMetadata"
            case rows = "Rows"
        }
    }

    public struct ResultSetMetadata: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ColumnInfo", required: false, type: .list)
        ]
        /// Information about the columns returned in a query result metadata.
        public let columnInfo: [ColumnInfo]?

        public init(columnInfo: [ColumnInfo]? = nil) {
            self.columnInfo = columnInfo
        }

        private enum CodingKeys: String, CodingKey {
            case columnInfo = "ColumnInfo"
        }
    }

    public struct Row: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Data", required: false, type: .list)
        ]
        /// The data that populates a row in a query result table.
        public let data: [Datum]?

        public init(data: [Datum]? = nil) {
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }

    public struct StartQueryExecutionInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ClientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "QueryExecutionContext", required: false, type: .structure), 
            AWSShapeMember(label: "QueryString", required: true, type: .string), 
            AWSShapeMember(label: "ResultConfiguration", required: true, type: .structure)
        ]
        /// A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another StartQueryExecution request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the QueryString, an error is returned.  This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail. 
        public let clientRequestToken: String?
        /// The database within which the query executes.
        public let queryExecutionContext: QueryExecutionContext?
        /// The SQL query statements to be executed.
        public let queryString: String
        /// Specifies information about where and how to save the results of the query execution.
        public let resultConfiguration: ResultConfiguration

        public init(clientRequestToken: String? = nil, queryExecutionContext: QueryExecutionContext? = nil, queryString: String, resultConfiguration: ResultConfiguration) {
            self.clientRequestToken = clientRequestToken
            self.queryExecutionContext = queryExecutionContext
            self.queryString = queryString
            self.resultConfiguration = resultConfiguration
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case queryExecutionContext = "QueryExecutionContext"
            case queryString = "QueryString"
            case resultConfiguration = "ResultConfiguration"
        }
    }

    public struct StartQueryExecutionOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "QueryExecutionId", required: false, type: .string)
        ]
        /// The unique ID of the query that ran as a result of this request.
        public let queryExecutionId: String?

        public init(queryExecutionId: String? = nil) {
            self.queryExecutionId = queryExecutionId
        }

        private enum CodingKeys: String, CodingKey {
            case queryExecutionId = "QueryExecutionId"
        }
    }

    public enum StatementType: String, CustomStringConvertible, Codable {
        case ddl = "DDL"
        case dml = "DML"
        case utility = "UTILITY"
        public var description: String { return self.rawValue }
    }

    public struct StopQueryExecutionInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "QueryExecutionId", required: true, type: .string)
        ]
        /// The unique ID of the query execution to stop.
        public let queryExecutionId: String

        public init(queryExecutionId: String) {
            self.queryExecutionId = queryExecutionId
        }

        private enum CodingKeys: String, CodingKey {
            case queryExecutionId = "QueryExecutionId"
        }
    }

    public struct StopQueryExecutionOutput: AWSShape {

        public init() {
        }

    }

    public enum ThrottleReason: String, CustomStringConvertible, Codable {
        case concurrentQueryLimitExceeded = "CONCURRENT_QUERY_LIMIT_EXCEEDED"
        public var description: String { return self.rawValue }
    }

    public struct UnprocessedNamedQueryId: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorCode", required: false, type: .string), 
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "NamedQueryId", required: false, type: .string)
        ]
        /// The error code returned when the processing request for the named query failed, if applicable.
        public let errorCode: String?
        /// The error message returned when the processing request for the named query failed, if applicable.
        public let errorMessage: String?
        /// The unique identifier of the named query.
        public let namedQueryId: String?

        public init(errorCode: String? = nil, errorMessage: String? = nil, namedQueryId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.namedQueryId = namedQueryId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case namedQueryId = "NamedQueryId"
        }
    }

    public struct UnprocessedQueryExecutionId: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ErrorCode", required: false, type: .string), 
            AWSShapeMember(label: "ErrorMessage", required: false, type: .string), 
            AWSShapeMember(label: "QueryExecutionId", required: false, type: .string)
        ]
        /// The error code returned when the query execution failed to process, if applicable.
        public let errorCode: String?
        /// The error message returned when the query execution failed to process, if applicable.
        public let errorMessage: String?
        /// The unique identifier of the query execution.
        public let queryExecutionId: String?

        public init(errorCode: String? = nil, errorMessage: String? = nil, queryExecutionId: String? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.queryExecutionId = queryExecutionId
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case queryExecutionId = "QueryExecutionId"
        }
    }

}