module MicrosoftGraphBeta
    module Models
        ## 
        # Possible types of reasons for an Apple Volume Purchase Program token action failure.
        VppTokenActionFailureReason = {
            None: :None,
            AppleFailure: :AppleFailure,
            InternalError: :InternalError,
            ExpiredVppToken: :ExpiredVppToken,
            ExpiredApplePushNotificationCertificate: :ExpiredApplePushNotificationCertificate,
        }
    end
end
