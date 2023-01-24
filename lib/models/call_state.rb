module MicrosoftGraphBeta::Models
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
