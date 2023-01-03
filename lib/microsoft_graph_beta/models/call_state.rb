module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the commsApplication singleton.
    CallState = {
        Incoming: :Incoming,
        Establishing: :Establishing,
        Ringing: :Ringing,
        Established: :Established,
        Hold: :Hold,
        Transferring: :Transferring,
        TransferAccepted: :TransferAccepted,
        Redirecting: :Redirecting,
        Terminating: :Terminating,
        Terminated: :Terminated,
        UnknownFutureValue: :UnknownFutureValue,
    }
end
