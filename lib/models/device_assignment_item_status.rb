module MicrosoftGraphBeta
    module Models
        ## 
        # A list of possible assignment item action status values for the application or configuration regarding their executed action on the managed device. For example, a configuration included in the deviceAssignmentItems list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process
        DeviceAssignmentItemStatus = {
            Initiated: :Initiated,
            InProgress: :InProgress,
            Removed: :Removed,
            Error: :Error,
            Succeeded: :Succeeded,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
