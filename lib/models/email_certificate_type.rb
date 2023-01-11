module MicrosoftGraphBeta::Models
    ## 
    # Supported certificate sources for email signing and encryption.
    EmailCertificateType = {
        None: :None,
        Certificate: :Certificate,
        DerivedCredential: :DerivedCredential,
    }
end
