module MicrosoftGraphBeta::Models
    ## 
    # Possible values for LanManagerAuthenticationLevel
    LanManagerAuthenticationLevel = {
        LmAndNltm: :LmAndNltm,
        LmNtlmAndNtlmV2: :LmNtlmAndNtlmV2,
        LmAndNtlmOnly: :LmAndNtlmOnly,
        LmAndNtlmV2: :LmAndNtlmV2,
        LmNtlmV2AndNotLm: :LmNtlmV2AndNotLm,
        LmNtlmV2AndNotLmOrNtm: :LmNtlmV2AndNotLmOrNtm,
    }
end
