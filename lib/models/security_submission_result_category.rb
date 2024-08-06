module MicrosoftGraphBeta
    module Models
        SecuritySubmissionResultCategory = {
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
            BeingAnalyzed: :BeingAnalyzed,
            NotSubmittedToMicrosoft: :NotSubmittedToMicrosoft,
            PhishingSimulation: :PhishingSimulation,
            AllowedDueToOrganizationOverride: :AllowedDueToOrganizationOverride,
            BlockedDueToOrganizationOverride: :BlockedDueToOrganizationOverride,
            AllowedDueToUserOverride: :AllowedDueToUserOverride,
            BlockedDueToUserOverride: :BlockedDueToUserOverride,
            ItemNotfound: :ItemNotfound,
            ThreatsFound: :ThreatsFound,
            NoThreatsFound: :NoThreatsFound,
            DomainImpersonation: :DomainImpersonation,
            UserImpersonation: :UserImpersonation,
            BrandImpersonation: :BrandImpersonation,
            AuthenticationFailure: :AuthenticationFailure,
            SpoofedBlocked: :SpoofedBlocked,
            SpoofedAllowed: :SpoofedAllowed,
            ReasonLostInTransit: :ReasonLostInTransit,
            Bulk: :Bulk,
        }
    end
end
