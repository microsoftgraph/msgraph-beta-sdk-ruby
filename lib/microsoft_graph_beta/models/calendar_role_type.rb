module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    CalendarRoleType = {
        None: :None,
        FreeBusyRead: :FreeBusyRead,
        LimitedRead: :LimitedRead,
        Read: :Read,
        Write: :Write,
        DelegateWithoutPrivateEventAccess: :DelegateWithoutPrivateEventAccess,
        DelegateWithPrivateEventAccess: :DelegateWithPrivateEventAccess,
        Custom: :Custom,
    }
end
