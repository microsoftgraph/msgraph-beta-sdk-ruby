module MicrosoftGraphBeta
    module Models
        ## 
        # Supported values for the padding scheme used by encryption provider.
        UserPfxPaddingScheme = {
            None: :None,
            Pkcs1: :Pkcs1,
            OaepSha1: :OaepSha1,
            OaepSha256: :OaepSha256,
            OaepSha384: :OaepSha384,
            OaepSha512: :OaepSha512,
        }
    end
end
