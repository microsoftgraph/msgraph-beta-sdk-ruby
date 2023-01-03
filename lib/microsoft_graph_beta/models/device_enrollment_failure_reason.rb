module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    DeviceEnrollmentFailureReason = {
        Unknown: :Unknown,
        Authentication: :Authentication,
        Authorization: :Authorization,
        AccountValidation: :AccountValidation,
        UserValidation: :UserValidation,
        DeviceNotSupported: :DeviceNotSupported,
        InMaintenance: :InMaintenance,
        BadRequest: :BadRequest,
        FeatureNotSupported: :FeatureNotSupported,
        EnrollmentRestrictionsEnforced: :EnrollmentRestrictionsEnforced,
        ClientDisconnected: :ClientDisconnected,
        UserAbandonment: :UserAbandonment,
    }
end
