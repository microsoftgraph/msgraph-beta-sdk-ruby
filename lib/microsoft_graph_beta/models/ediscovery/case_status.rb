module MicrosoftGraphBeta::Models::Ediscovery
    ## 
    # Provides operations to manage the compliance singleton.
    CaseStatus = {
        Unknown: :Unknown,
        Active: :Active,
        PendingDelete: :PendingDelete,
        Closing: :Closing,
        Closed: :Closed,
        ClosedWithError: :ClosedWithError,
    }
end
