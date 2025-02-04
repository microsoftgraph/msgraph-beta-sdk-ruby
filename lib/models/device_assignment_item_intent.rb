module MicrosoftGraphBeta
    module Models
        ## 
        # A list of possible assignment item action intent values on the application or configuration when executing this action on the managed device. For example, if the application or configuration is intended to be removed on the managed device, then the intent value is remove, and if the application or configuration already under removal through previous actions and is now intended to be restored on the managed device, then the intent value is restore
        DeviceAssignmentItemIntent = {
            Remove: :Remove,
            Restore: :Restore,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
