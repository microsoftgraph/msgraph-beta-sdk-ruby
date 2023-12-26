module MicrosoftGraphBeta
    module Models
        ## 
        # Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.
        DeviceIdentityAttestationStatus = {
            Unknown: :Unknown,
            Trusted: :Trusted,
            UnTrusted: :UnTrusted,
            NotSupported: :NotSupported,
            IncompleteData: :IncompleteData,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
