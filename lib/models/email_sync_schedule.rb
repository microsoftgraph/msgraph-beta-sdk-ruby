module MicrosoftGraphBeta
    module Models
        ## 
        # Possible values for email sync schedule.
        EmailSyncSchedule = {
            UserDefined: :UserDefined,
            AsMessagesArrive: :AsMessagesArrive,
            Manual: :Manual,
            FifteenMinutes: :FifteenMinutes,
            ThirtyMinutes: :ThirtyMinutes,
            SixtyMinutes: :SixtyMinutes,
            BasedOnMyUsage: :BasedOnMyUsage,
        }
    end
end
