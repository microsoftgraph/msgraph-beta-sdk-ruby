module MicrosoftGraphBeta
    module Models
        ## 
        # Update schedule type for iOS software updates.
        IosSoftwareUpdateScheduleType = {
            UpdateOutsideOfActiveHours: :UpdateOutsideOfActiveHours,
            AlwaysUpdate: :AlwaysUpdate,
            UpdateDuringTimeWindows: :UpdateDuringTimeWindows,
            UpdateOutsideOfTimeWindows: :UpdateOutsideOfTimeWindows,
        }
    end
end
