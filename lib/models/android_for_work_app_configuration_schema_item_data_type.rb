module MicrosoftGraphBeta::Models
    ## 
    # Data type for a configuration item inside an Android for Work application's custom configuration schema
    AndroidForWorkAppConfigurationSchemaItemDataType = {
        Bool: :Bool,
        Integer: :Integer,
        String: :String,
        Choice: :Choice,
        Multiselect: :Multiselect,
        Bundle: :Bundle,
        BundleArray: :BundleArray,
        Hidden: :Hidden,
    }
end
