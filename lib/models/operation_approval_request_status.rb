module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.
        OperationApprovalRequestStatus = {
            Unknown: :Unknown,
            NeedsApproval: :NeedsApproval,
            Approved: :Approved,
            Rejected: :Rejected,
            Cancelled: :Cancelled,
            Completed: :Completed,
            Expired: :Expired,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
