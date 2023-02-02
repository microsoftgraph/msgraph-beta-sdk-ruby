module MicrosoftGraphBeta::Models
    ## 
    # Supported values for the intended purpose of a user PFX certificate.
    UserPfxIntendedPurpose = {
        Unassigned: :Unassigned,
        SmimeEncryption: :SmimeEncryption,
        SmimeSigning: :SmimeSigning,
        Vpn: :Vpn,
        Wifi: :Wifi,
    }
end
