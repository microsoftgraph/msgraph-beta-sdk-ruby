module MicrosoftGraphBeta::Models
    ## 
    # Describes the various states for an embedded SIM activation code.
    EmbeddedSIMDeviceStateValue = {
        NotEvaluated: :NotEvaluated,
        Failed: :Failed,
        Installing: :Installing,
        Installed: :Installed,
        Deleting: :Deleting,
        Error: :Error,
        Deleted: :Deleted,
        RemovedByUser: :RemovedByUser,
    }
end
