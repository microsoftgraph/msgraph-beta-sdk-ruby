module MicrosoftGraphBeta::Models
    ## 
    # Sync status of the tenant with the Google EMM API
    AndroidForWorkSyncStatus = {
        Success: :Success,
        CredentialsNotValid: :CredentialsNotValid,
        AndroidForWorkApiError: :AndroidForWorkApiError,
        ManagementServiceError: :ManagementServiceError,
        UnknownError: :UnknownError,
        None: :None,
    }
end
