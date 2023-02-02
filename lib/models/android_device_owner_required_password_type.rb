module MicrosoftGraphBeta::Models
    ## 
    # Android Device Owner policy required password type.
    AndroidDeviceOwnerRequiredPasswordType = {
        DeviceDefault: :DeviceDefault,
        Required: :Required,
        Numeric: :Numeric,
        NumericComplex: :NumericComplex,
        Alphabetic: :Alphabetic,
        Alphanumeric: :Alphanumeric,
        AlphanumericWithSymbols: :AlphanumericWithSymbols,
        LowSecurityBiometric: :LowSecurityBiometric,
        CustomPassword: :CustomPassword,
    }
end
