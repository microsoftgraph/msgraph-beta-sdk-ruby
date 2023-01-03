module MicrosoftGraphBeta::Models::Security
    ## 
    # Provides operations to manage the collection of accessReview entities.
    SubmissionResultCategory = {
        NotJunk: :NotJunk,
        Spam: :Spam,
        Phishing: :Phishing,
        Malware: :Malware,
        AllowedByPolicy: :AllowedByPolicy,
        BlockedByPolicy: :BlockedByPolicy,
        Spoof: :Spoof,
        Unknown: :Unknown,
        NoResultAvailable: :NoResultAvailable,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
