module MicrosoftGraphBeta::Models
    EnrollmentState = {
        Unknown: :Unknown,
        Enrolled: :Enrolled,
        PendingReset: :PendingReset,
        Failed: :Failed,
        NotContacted: :NotContacted,
        Blocked: :Blocked,
    }
end
