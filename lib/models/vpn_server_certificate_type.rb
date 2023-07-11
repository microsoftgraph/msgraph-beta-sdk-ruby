module MicrosoftGraphBeta
    module Models
        ## 
        # The type of certificate the VPN server will present to the VPN client for authentication
        VpnServerCertificateType = {
            Rsa: :Rsa,
            Ecdsa256: :Ecdsa256,
            Ecdsa384: :Ecdsa384,
            Ecdsa521: :Ecdsa521,
        }
    end
end
