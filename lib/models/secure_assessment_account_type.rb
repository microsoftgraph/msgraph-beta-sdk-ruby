module MicrosoftGraphBeta
    module Models
        ## 
        # Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.
        SecureAssessmentAccountType = {
            AzureADAccount: :AzureADAccount,
            DomainAccount: :DomainAccount,
            LocalAccount: :LocalAccount,
            LocalGuestAccount: :LocalGuestAccount,
        }
    end
end
