module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk.
        UserExperienceAnalyticsDeviceStatus = {
            Anomalous: :Anomalous,
            Affected: :Affected,
            AtRisk: :AtRisk,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
