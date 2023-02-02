module MicrosoftGraphBeta::Models
    ## 
    # Indicates if the Group Policy Object file is covered and ready for Intune migration.
    GroupPolicyMigrationReadiness = {
        None: :None,
        Partial: :Partial,
        Complete: :Complete,
        Error: :Error,
        NotApplicable: :NotApplicable,
    }
end
