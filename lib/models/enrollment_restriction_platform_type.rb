module MicrosoftGraphBeta::Models
    ## 
    # This enum indicates the platform type for which the enrollment restriction applies.
    EnrollmentRestrictionPlatformType = {
        AllPlatforms: :AllPlatforms,
        Ios: :Ios,
        Windows: :Windows,
        WindowsPhone: :WindowsPhone,
        Android: :Android,
        AndroidForWork: :AndroidForWork,
        Mac: :Mac,
        Linux: :Linux,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
