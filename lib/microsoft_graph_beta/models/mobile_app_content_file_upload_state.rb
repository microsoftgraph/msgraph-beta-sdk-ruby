module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    MobileAppContentFileUploadState = {
        Success: :Success,
        TransientError: :TransientError,
        Error: :Error,
        Unknown: :Unknown,
        AzureStorageUriRequestSuccess: :AzureStorageUriRequestSuccess,
        AzureStorageUriRequestPending: :AzureStorageUriRequestPending,
        AzureStorageUriRequestFailed: :AzureStorageUriRequestFailed,
        AzureStorageUriRequestTimedOut: :AzureStorageUriRequestTimedOut,
        AzureStorageUriRenewalSuccess: :AzureStorageUriRenewalSuccess,
        AzureStorageUriRenewalPending: :AzureStorageUriRenewalPending,
        AzureStorageUriRenewalFailed: :AzureStorageUriRenewalFailed,
        AzureStorageUriRenewalTimedOut: :AzureStorageUriRenewalTimedOut,
        CommitFileSuccess: :CommitFileSuccess,
        CommitFilePending: :CommitFilePending,
        CommitFileFailed: :CommitFileFailed,
        CommitFileTimedOut: :CommitFileTimedOut,
    }
end
