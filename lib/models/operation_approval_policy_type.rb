module MicrosoftGraphBeta
    module Models
        ## 
        # The set of available policy types that can be configured for approval. The policy type must always be defined in an OperationApprovalRequest.
        OperationApprovalPolicyType = {
            Unknown: :Unknown,
            App: :App,
            Script: :Script,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
