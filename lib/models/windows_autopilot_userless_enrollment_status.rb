module MicrosoftGraphBeta
    module Models
        ## 
        # Userless enrollment block status, indicating whether the next device enrollment will be blocked.
        WindowsAutopilotUserlessEnrollmentStatus = {
            Unknown: :Unknown,
            Allowed: :Allowed,
            Blocked: :Blocked,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
