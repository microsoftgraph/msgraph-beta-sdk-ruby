module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the Validation error of the device membership target.The API will validate the device membership targets specified by the admin to ensure that they exist, that they are of the proper type, and any other target requirements are met such as that the Intune Device Provisioning First Party App is an owner of the target.
        EnrollmentTimeDeviceMembershipTargetValidationErrorCode = {
            Unknown: :Unknown,
            SecurityGroupNotFound: :SecurityGroupNotFound,
            NotSecurityGroup: :NotSecurityGroup,
            NotStaticSecurityGroup: :NotStaticSecurityGroup,
            FirstPartyAppNotAnOwner: :FirstPartyAppNotAnOwner,
            SecurityGroupNotInCallerScope: :SecurityGroupNotInCallerScope,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
