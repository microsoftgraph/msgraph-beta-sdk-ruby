module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the commsApplication singleton.
    RecordCompletionReason = {
        OperationCanceled: :OperationCanceled,
        StopToneDetected: :StopToneDetected,
        MaxRecordDurationReached: :MaxRecordDurationReached,
        InitialSilenceTimeout: :InitialSilenceTimeout,
        MaxSilenceTimeout: :MaxSilenceTimeout,
        PlayPromptFailed: :PlayPromptFailed,
        PlayBeepFailed: :PlayBeepFailed,
        MediaReceiveTimeout: :MediaReceiveTimeout,
        UnspecifiedError: :UnspecifiedError,
    }
end
