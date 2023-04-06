module MicrosoftGraphBeta
    module Models
        ## 
        # The type of user account on Windows that was used to performed the elevation.
        PrivilegeManagementEndUserType = {
            Undetermined: :Undetermined,
            AzureAd: :AzureAd,
            Hybrid: :Hybrid,
            Local: :Local,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
