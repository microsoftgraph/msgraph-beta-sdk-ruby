module MicrosoftGraphBeta::Models
    ## 
    # Indicates the device scope status after the device scope has been enabled. Possible values are: none, computing, insufficientData or completed. Default value is none.
    DeviceScopeStatus = {
        None: :None,
        Computing: :Computing,
        InsufficientData: :InsufficientData,
        Completed: :Completed,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
