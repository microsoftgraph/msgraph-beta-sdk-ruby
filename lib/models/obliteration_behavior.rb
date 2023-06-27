module MicrosoftGraphBeta
    module Models
        ## 
        # In macOS 12 and later, this command uses Erase All Content and Settings (EACS) on Mac computers with the Apple M1 chip or the Apple T2 Security Chip. On those devices, if EACS can’t run, the device can use obliteration (macOS 11.x behavior). This key has no effect on machines prior to the T2 chip. Upon receiving this command, the device performs preflight checks to determine if the device is in a state that allows EACS. The ObliterationBehavior value defines the device's fallback behavior.
        ObliterationBehavior = {
            Default: :Default,
            DoNotObliterate: :DoNotObliterate,
            ObliterateWithWarning: :ObliterateWithWarning,
            Always: :Always,
            UnknownFutureValue: :UnknownFutureValue,
        }
    end
end
