module MicrosoftGraphBeta
    module Models
        ## 
        # Determine the access level to specific Windows privacy data category.
        WindowsPrivacyDataAccessLevel = {
            NotConfigured: :NotConfigured,
            ForceAllow: :ForceAllow,
            ForceDeny: :ForceDeny,
            UserInControl: :UserInControl,
        }
    end
end
