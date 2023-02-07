module MicrosoftGraphBeta::Models
    ## 
    # Describes current lifecycle state of a template
    DeviceManagementTemplateLifecycleState = {
        Invalid: :Invalid,
        Draft: :Draft,
        Active: :Active,
        Superseded: :Superseded,
        Deprecated: :Deprecated,
        Retired: :Retired,
    }
end
