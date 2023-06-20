module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the type of elevation occured
        PrivilegeManagementElevationType = {
            Undetermined: :Undetermined,
            UnmanagedElevation: :UnmanagedElevation,
            ZeroTouchElevation: :ZeroTouchElevation,
            UserConfirmedElevation: :UserConfirmedElevation,
            SupportApprovedElevation: :SupportApprovedElevation,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
