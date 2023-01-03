module MicrosoftGraphBeta::Models::Security
    ## 
    # Provides operations to manage the collection of accessReview entities.
    AlertDetermination = {
        Unknown: :Unknown,
        Apt: :Apt,
        Malware: :Malware,
        SecurityPersonnel: :SecurityPersonnel,
        SecurityTesting: :SecurityTesting,
        UnwantedSoftware: :UnwantedSoftware,
        Other: :Other,
        MultiStagedAttack: :MultiStagedAttack,
        CompromisedAccount: :CompromisedAccount,
        Phishing: :Phishing,
        MaliciousUserActivity: :MaliciousUserActivity,
        NotMalicious: :NotMalicious,
        NotEnoughDataToValidate: :NotEnoughDataToValidate,
        ConfirmedActivity: :ConfirmedActivity,
        LineOfBusinessApplication: :LineOfBusinessApplication,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
