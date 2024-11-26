module MicrosoftGraphBeta
    module Models
        MfaType = {
            Eotp: :Eotp,
            OneWaySms: :OneWaySms,
            TwoWaySms: :TwoWaySms,
            TwoWaySmsOtherMobile: :TwoWaySmsOtherMobile,
            PhoneAppNotification: :PhoneAppNotification,
            PhoneAppOtp: :PhoneAppOtp,
            TwoWayVoiceMobile: :TwoWayVoiceMobile,
            TwoWayVoiceOffice: :TwoWayVoiceOffice,
            TwoWayVoiceOtherMobile: :TwoWayVoiceOtherMobile,
            Fido: :Fido,
            Certificate: :Certificate,
            Other: :Other,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
