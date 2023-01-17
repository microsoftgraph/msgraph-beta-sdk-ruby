module MicrosoftGraphBeta::Models
    ## 
    # Type of Group Policy operation.
    GroupPolicyOperationType = {
        None: :None,
        Upload: :Upload,
        UploadNewVersion: :UploadNewVersion,
        AddLanguageFiles: :AddLanguageFiles,
        RemoveLanguageFiles: :RemoveLanguageFiles,
        UpdateLanguageFiles: :UpdateLanguageFiles,
        Remove: :Remove,
    }
end
