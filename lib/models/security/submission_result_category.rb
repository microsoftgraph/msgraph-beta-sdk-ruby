module MicrosoftGraphBeta
    module Models
        module Security
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
    end
end
