module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    DefenderPromptForSampleSubmission = {
        UserDefined: :UserDefined,
        AlwaysPrompt: :AlwaysPrompt,
        PromptBeforeSendingPersonalData: :PromptBeforeSendingPersonalData,
        NeverSendData: :NeverSendData,
        SendAllDataWithoutPrompting: :SendAllDataWithoutPrompting,
    }
end
