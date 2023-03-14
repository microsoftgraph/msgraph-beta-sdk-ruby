module MicrosoftGraphBeta
    module Models
        ## 
        # Type of Group Policy uploaded definition file status.
        GroupPolicyUploadedDefinitionFileStatus = {
            None: :None,
            UploadInProgress: :UploadInProgress,
            Available: :Available,
            Assigned: :Assigned,
            RemovalInProgress: :RemovalInProgress,
            UploadFailed: :UploadFailed,
            RemovalFailed: :RemovalFailed,
        }
    end
end
