module MicrosoftGraphBeta
    module Models
        ## 
        # The type of VPN security association encryption algorithm
        VpnEncryptionAlgorithmType = {
            Aes256: :Aes256,
            Des: :Des,
            TripleDes: :TripleDes,
            Aes128: :Aes128,
            Aes128Gcm: :Aes128Gcm,
            Aes256Gcm: :Aes256Gcm,
            Aes192: :Aes192,
            Aes192Gcm: :Aes192Gcm,
            ChaCha20Poly1305: :ChaCha20Poly1305,
        }
    end
end
