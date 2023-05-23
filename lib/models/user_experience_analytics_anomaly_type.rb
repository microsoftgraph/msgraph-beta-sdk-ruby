module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other.
        UserExperienceAnalyticsAnomalyType = {
            Device: :Device,
            Application: :Application,
            StopError: :StopError,
            Driver: :Driver,
            Other: :Other,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
