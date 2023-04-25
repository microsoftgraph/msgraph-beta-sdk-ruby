module MicrosoftGraphBeta
    module Models
        ## 
        # Data type for a configuration item inside an Android application's custom configuration schema
        AndroidManagedStoreAppConfigurationSchemaItemDataType = {
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
end
