module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates state of elevation request
        ElevationRequestState = {
            None: :None,
            Pending: :Pending,
            Approved: :Approved,
            Denied: :Denied,
            Expired: :Expired,
            UnknownFutureValue: :UnknownFutureValue,
            Revoked: :Revoked,
        }
    end
end
