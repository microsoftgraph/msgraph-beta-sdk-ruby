module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    PrintJobStateDetail = {
        UploadPending: :UploadPending,
        Transforming: :Transforming,
        CompletedSuccessfully: :CompletedSuccessfully,
        CompletedWithWarnings: :CompletedWithWarnings,
        CompletedWithErrors: :CompletedWithErrors,
        ReleaseWait: :ReleaseWait,
        Interpreting: :Interpreting,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
