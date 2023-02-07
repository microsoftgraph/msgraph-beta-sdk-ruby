module MicrosoftGraphBeta::Models
    ## 
    # Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.
    UserExperienceAnalyticsAnomalyState = {
        New: :New,
        Active: :Active,
        Disabled: :Disabled,
        Removed: :Removed,
        Other: :Other,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
