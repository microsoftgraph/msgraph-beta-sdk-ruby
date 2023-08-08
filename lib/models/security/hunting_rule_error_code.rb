module MicrosoftGraphBeta
    module Models
        module Security
            HuntingRuleErrorCode = {
                QueryExecutionFailed: :QueryExecutionFailed,
                QueryExecutionThrottling: :QueryExecutionThrottling,
                QueryExceededResultSize: :QueryExceededResultSize,
                QueryLimitsExceeded: :QueryLimitsExceeded,
                QueryTimeout: :QueryTimeout,
                AlertCreationFailed: :AlertCreationFailed,
                AlertReportNotFound: :AlertReportNotFound,
                PartialRowsFailed: :PartialRowsFailed,
                UnknownFutureValue: :UnknownFutureValue,
            }
        end
    end
end
