require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosikEv2VpnConfiguration < MicrosoftGraphBeta::Models::IosVpnConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Allows the use of child security association parameters by setting all parameters to the device's default unless explicitly specified.
        @allow_default_child_security_association_parameters
        ## 
        # Allows the use of security association parameters by setting all parameters to the device's default unless explicitly specified.
        @allow_default_security_association_parameters
        ## 
        # AlwaysOn Configuration
        @always_on_configuration
        ## 
        # Child Security Association Parameters
        @child_security_association_parameters
        ## 
        # The type of VPN client authentication type
        @client_authentication_type
        ## 
        # Determine how often to check if a peer connection is still active. . Possible values are: medium, none, low, high.
        @dead_peer_detection_rate
        ## 
        # Disable MOBIKE
        @disable_mobility_and_multihoming
        ## 
        # Disable Redirect
        @disable_redirect
        ## 
        # Determines if Always on VPN is enabled
        @enable_always_on_configuration
        ## 
        # Enables a best-effort revocation check; server response timeouts will not cause it to fail
        @enable_certificate_revocation_check
        ## 
        # Enables EAP only authentication
        @enable_e_a_p
        ## 
        # Enable Perfect Forward Secrecy (PFS).
        @enable_perfect_forward_secrecy
        ## 
        # Enable Use Internal Subnet Attributes.
        @enable_use_internal_subnet_attributes
        ## 
        # The type of VPN local identifier
        @local_identifier
        ## 
        # Maximum transmission unit. Valid values 1280 to 1400
        @mtu_size_in_bytes
        ## 
        # Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN
        @remote_identifier
        ## 
        # Security Association Parameters
        @security_association_parameters
        ## 
        # Common name of the IKEv2 Server Certificate used in Server Authentication
        @server_certificate_common_name
        ## 
        # Issuer Common name of the IKEv2 Server Certificate issuer used in Authentication
        @server_certificate_issuer_common_name
        ## 
        # The type of certificate the VPN server will present to the VPN client for authentication. Possible values are: rsa, ecdsa256, ecdsa384, ecdsa521.
        @server_certificate_type
        ## 
        # Used when Shared Secret Authentication is selected
        @shared_secret
        ## 
        # The maximum TLS version to be used with EAP-TLS authentication
        @tls_maximum_version
        ## 
        # The minimum TLS version to be used with EAP-TLS authentication
        @tls_minimum_version
        ## 
        ## Gets the allowDefaultChildSecurityAssociationParameters property value. Allows the use of child security association parameters by setting all parameters to the device's default unless explicitly specified.
        ## @return a boolean
        ## 
        def allow_default_child_security_association_parameters
            return @allow_default_child_security_association_parameters
        end
        ## 
        ## Sets the allowDefaultChildSecurityAssociationParameters property value. Allows the use of child security association parameters by setting all parameters to the device's default unless explicitly specified.
        ## @param value Value to set for the allowDefaultChildSecurityAssociationParameters property.
        ## @return a void
        ## 
        def allow_default_child_security_association_parameters=(value)
            @allow_default_child_security_association_parameters = value
        end
        ## 
        ## Gets the allowDefaultSecurityAssociationParameters property value. Allows the use of security association parameters by setting all parameters to the device's default unless explicitly specified.
        ## @return a boolean
        ## 
        def allow_default_security_association_parameters
            return @allow_default_security_association_parameters
        end
        ## 
        ## Sets the allowDefaultSecurityAssociationParameters property value. Allows the use of security association parameters by setting all parameters to the device's default unless explicitly specified.
        ## @param value Value to set for the allowDefaultSecurityAssociationParameters property.
        ## @return a void
        ## 
        def allow_default_security_association_parameters=(value)
            @allow_default_security_association_parameters = value
        end
        ## 
        ## Gets the alwaysOnConfiguration property value. AlwaysOn Configuration
        ## @return a apple_vpn_always_on_configuration
        ## 
        def always_on_configuration
            return @always_on_configuration
        end
        ## 
        ## Sets the alwaysOnConfiguration property value. AlwaysOn Configuration
        ## @param value Value to set for the alwaysOnConfiguration property.
        ## @return a void
        ## 
        def always_on_configuration=(value)
            @always_on_configuration = value
        end
        ## 
        ## Gets the childSecurityAssociationParameters property value. Child Security Association Parameters
        ## @return a ios_vpn_security_association_parameters
        ## 
        def child_security_association_parameters
            return @child_security_association_parameters
        end
        ## 
        ## Sets the childSecurityAssociationParameters property value. Child Security Association Parameters
        ## @param value Value to set for the childSecurityAssociationParameters property.
        ## @return a void
        ## 
        def child_security_association_parameters=(value)
            @child_security_association_parameters = value
        end
        ## 
        ## Gets the clientAuthenticationType property value. The type of VPN client authentication type
        ## @return a vpn_client_authentication_type
        ## 
        def client_authentication_type
            return @client_authentication_type
        end
        ## 
        ## Sets the clientAuthenticationType property value. The type of VPN client authentication type
        ## @param value Value to set for the clientAuthenticationType property.
        ## @return a void
        ## 
        def client_authentication_type=(value)
            @client_authentication_type = value
        end
        ## 
        ## Instantiates a new IosikEv2VpnConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.iosikEv2VpnConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a iosik_ev2_vpn_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosikEv2VpnConfiguration.new
        end
        ## 
        ## Gets the deadPeerDetectionRate property value. Determine how often to check if a peer connection is still active. . Possible values are: medium, none, low, high.
        ## @return a vpn_dead_peer_detection_rate
        ## 
        def dead_peer_detection_rate
            return @dead_peer_detection_rate
        end
        ## 
        ## Sets the deadPeerDetectionRate property value. Determine how often to check if a peer connection is still active. . Possible values are: medium, none, low, high.
        ## @param value Value to set for the deadPeerDetectionRate property.
        ## @return a void
        ## 
        def dead_peer_detection_rate=(value)
            @dead_peer_detection_rate = value
        end
        ## 
        ## Gets the disableMobilityAndMultihoming property value. Disable MOBIKE
        ## @return a boolean
        ## 
        def disable_mobility_and_multihoming
            return @disable_mobility_and_multihoming
        end
        ## 
        ## Sets the disableMobilityAndMultihoming property value. Disable MOBIKE
        ## @param value Value to set for the disableMobilityAndMultihoming property.
        ## @return a void
        ## 
        def disable_mobility_and_multihoming=(value)
            @disable_mobility_and_multihoming = value
        end
        ## 
        ## Gets the disableRedirect property value. Disable Redirect
        ## @return a boolean
        ## 
        def disable_redirect
            return @disable_redirect
        end
        ## 
        ## Sets the disableRedirect property value. Disable Redirect
        ## @param value Value to set for the disableRedirect property.
        ## @return a void
        ## 
        def disable_redirect=(value)
            @disable_redirect = value
        end
        ## 
        ## Gets the enableAlwaysOnConfiguration property value. Determines if Always on VPN is enabled
        ## @return a boolean
        ## 
        def enable_always_on_configuration
            return @enable_always_on_configuration
        end
        ## 
        ## Sets the enableAlwaysOnConfiguration property value. Determines if Always on VPN is enabled
        ## @param value Value to set for the enableAlwaysOnConfiguration property.
        ## @return a void
        ## 
        def enable_always_on_configuration=(value)
            @enable_always_on_configuration = value
        end
        ## 
        ## Gets the enableCertificateRevocationCheck property value. Enables a best-effort revocation check; server response timeouts will not cause it to fail
        ## @return a boolean
        ## 
        def enable_certificate_revocation_check
            return @enable_certificate_revocation_check
        end
        ## 
        ## Sets the enableCertificateRevocationCheck property value. Enables a best-effort revocation check; server response timeouts will not cause it to fail
        ## @param value Value to set for the enableCertificateRevocationCheck property.
        ## @return a void
        ## 
        def enable_certificate_revocation_check=(value)
            @enable_certificate_revocation_check = value
        end
        ## 
        ## Gets the enableEAP property value. Enables EAP only authentication
        ## @return a boolean
        ## 
        def enable_e_a_p
            return @enable_e_a_p
        end
        ## 
        ## Sets the enableEAP property value. Enables EAP only authentication
        ## @param value Value to set for the enableEAP property.
        ## @return a void
        ## 
        def enable_e_a_p=(value)
            @enable_e_a_p = value
        end
        ## 
        ## Gets the enablePerfectForwardSecrecy property value. Enable Perfect Forward Secrecy (PFS).
        ## @return a boolean
        ## 
        def enable_perfect_forward_secrecy
            return @enable_perfect_forward_secrecy
        end
        ## 
        ## Sets the enablePerfectForwardSecrecy property value. Enable Perfect Forward Secrecy (PFS).
        ## @param value Value to set for the enablePerfectForwardSecrecy property.
        ## @return a void
        ## 
        def enable_perfect_forward_secrecy=(value)
            @enable_perfect_forward_secrecy = value
        end
        ## 
        ## Gets the enableUseInternalSubnetAttributes property value. Enable Use Internal Subnet Attributes.
        ## @return a boolean
        ## 
        def enable_use_internal_subnet_attributes
            return @enable_use_internal_subnet_attributes
        end
        ## 
        ## Sets the enableUseInternalSubnetAttributes property value. Enable Use Internal Subnet Attributes.
        ## @param value Value to set for the enableUseInternalSubnetAttributes property.
        ## @return a void
        ## 
        def enable_use_internal_subnet_attributes=(value)
            @enable_use_internal_subnet_attributes = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowDefaultChildSecurityAssociationParameters" => lambda {|n| @allow_default_child_security_association_parameters = n.get_boolean_value() },
                "allowDefaultSecurityAssociationParameters" => lambda {|n| @allow_default_security_association_parameters = n.get_boolean_value() },
                "alwaysOnConfiguration" => lambda {|n| @always_on_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AppleVpnAlwaysOnConfiguration.create_from_discriminator_value(pn) }) },
                "childSecurityAssociationParameters" => lambda {|n| @child_security_association_parameters = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosVpnSecurityAssociationParameters.create_from_discriminator_value(pn) }) },
                "clientAuthenticationType" => lambda {|n| @client_authentication_type = n.get_enum_value(MicrosoftGraphBeta::Models::VpnClientAuthenticationType) },
                "deadPeerDetectionRate" => lambda {|n| @dead_peer_detection_rate = n.get_enum_value(MicrosoftGraphBeta::Models::VpnDeadPeerDetectionRate) },
                "disableMobilityAndMultihoming" => lambda {|n| @disable_mobility_and_multihoming = n.get_boolean_value() },
                "disableRedirect" => lambda {|n| @disable_redirect = n.get_boolean_value() },
                "enableAlwaysOnConfiguration" => lambda {|n| @enable_always_on_configuration = n.get_boolean_value() },
                "enableCertificateRevocationCheck" => lambda {|n| @enable_certificate_revocation_check = n.get_boolean_value() },
                "enableEAP" => lambda {|n| @enable_e_a_p = n.get_boolean_value() },
                "enablePerfectForwardSecrecy" => lambda {|n| @enable_perfect_forward_secrecy = n.get_boolean_value() },
                "enableUseInternalSubnetAttributes" => lambda {|n| @enable_use_internal_subnet_attributes = n.get_boolean_value() },
                "localIdentifier" => lambda {|n| @local_identifier = n.get_enum_value(MicrosoftGraphBeta::Models::VpnLocalIdentifier) },
                "mtuSizeInBytes" => lambda {|n| @mtu_size_in_bytes = n.get_number_value() },
                "remoteIdentifier" => lambda {|n| @remote_identifier = n.get_string_value() },
                "securityAssociationParameters" => lambda {|n| @security_association_parameters = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosVpnSecurityAssociationParameters.create_from_discriminator_value(pn) }) },
                "serverCertificateCommonName" => lambda {|n| @server_certificate_common_name = n.get_string_value() },
                "serverCertificateIssuerCommonName" => lambda {|n| @server_certificate_issuer_common_name = n.get_string_value() },
                "serverCertificateType" => lambda {|n| @server_certificate_type = n.get_enum_value(MicrosoftGraphBeta::Models::VpnServerCertificateType) },
                "sharedSecret" => lambda {|n| @shared_secret = n.get_string_value() },
                "tlsMaximumVersion" => lambda {|n| @tls_maximum_version = n.get_string_value() },
                "tlsMinimumVersion" => lambda {|n| @tls_minimum_version = n.get_string_value() },
            })
        end
        ## 
        ## Gets the localIdentifier property value. The type of VPN local identifier
        ## @return a vpn_local_identifier
        ## 
        def local_identifier
            return @local_identifier
        end
        ## 
        ## Sets the localIdentifier property value. The type of VPN local identifier
        ## @param value Value to set for the localIdentifier property.
        ## @return a void
        ## 
        def local_identifier=(value)
            @local_identifier = value
        end
        ## 
        ## Gets the mtuSizeInBytes property value. Maximum transmission unit. Valid values 1280 to 1400
        ## @return a integer
        ## 
        def mtu_size_in_bytes
            return @mtu_size_in_bytes
        end
        ## 
        ## Sets the mtuSizeInBytes property value. Maximum transmission unit. Valid values 1280 to 1400
        ## @param value Value to set for the mtuSizeInBytes property.
        ## @return a void
        ## 
        def mtu_size_in_bytes=(value)
            @mtu_size_in_bytes = value
        end
        ## 
        ## Gets the remoteIdentifier property value. Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN
        ## @return a string
        ## 
        def remote_identifier
            return @remote_identifier
        end
        ## 
        ## Sets the remoteIdentifier property value. Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN
        ## @param value Value to set for the remoteIdentifier property.
        ## @return a void
        ## 
        def remote_identifier=(value)
            @remote_identifier = value
        end
        ## 
        ## Gets the securityAssociationParameters property value. Security Association Parameters
        ## @return a ios_vpn_security_association_parameters
        ## 
        def security_association_parameters
            return @security_association_parameters
        end
        ## 
        ## Sets the securityAssociationParameters property value. Security Association Parameters
        ## @param value Value to set for the securityAssociationParameters property.
        ## @return a void
        ## 
        def security_association_parameters=(value)
            @security_association_parameters = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("allowDefaultChildSecurityAssociationParameters", @allow_default_child_security_association_parameters)
            writer.write_boolean_value("allowDefaultSecurityAssociationParameters", @allow_default_security_association_parameters)
            writer.write_object_value("alwaysOnConfiguration", @always_on_configuration)
            writer.write_object_value("childSecurityAssociationParameters", @child_security_association_parameters)
            writer.write_enum_value("clientAuthenticationType", @client_authentication_type)
            writer.write_enum_value("deadPeerDetectionRate", @dead_peer_detection_rate)
            writer.write_boolean_value("disableMobilityAndMultihoming", @disable_mobility_and_multihoming)
            writer.write_boolean_value("disableRedirect", @disable_redirect)
            writer.write_boolean_value("enableAlwaysOnConfiguration", @enable_always_on_configuration)
            writer.write_boolean_value("enableCertificateRevocationCheck", @enable_certificate_revocation_check)
            writer.write_boolean_value("enableEAP", @enable_e_a_p)
            writer.write_boolean_value("enablePerfectForwardSecrecy", @enable_perfect_forward_secrecy)
            writer.write_boolean_value("enableUseInternalSubnetAttributes", @enable_use_internal_subnet_attributes)
            writer.write_enum_value("localIdentifier", @local_identifier)
            writer.write_number_value("mtuSizeInBytes", @mtu_size_in_bytes)
            writer.write_string_value("remoteIdentifier", @remote_identifier)
            writer.write_object_value("securityAssociationParameters", @security_association_parameters)
            writer.write_string_value("serverCertificateCommonName", @server_certificate_common_name)
            writer.write_string_value("serverCertificateIssuerCommonName", @server_certificate_issuer_common_name)
            writer.write_enum_value("serverCertificateType", @server_certificate_type)
            writer.write_string_value("sharedSecret", @shared_secret)
            writer.write_string_value("tlsMaximumVersion", @tls_maximum_version)
            writer.write_string_value("tlsMinimumVersion", @tls_minimum_version)
        end
        ## 
        ## Gets the serverCertificateCommonName property value. Common name of the IKEv2 Server Certificate used in Server Authentication
        ## @return a string
        ## 
        def server_certificate_common_name
            return @server_certificate_common_name
        end
        ## 
        ## Sets the serverCertificateCommonName property value. Common name of the IKEv2 Server Certificate used in Server Authentication
        ## @param value Value to set for the serverCertificateCommonName property.
        ## @return a void
        ## 
        def server_certificate_common_name=(value)
            @server_certificate_common_name = value
        end
        ## 
        ## Gets the serverCertificateIssuerCommonName property value. Issuer Common name of the IKEv2 Server Certificate issuer used in Authentication
        ## @return a string
        ## 
        def server_certificate_issuer_common_name
            return @server_certificate_issuer_common_name
        end
        ## 
        ## Sets the serverCertificateIssuerCommonName property value. Issuer Common name of the IKEv2 Server Certificate issuer used in Authentication
        ## @param value Value to set for the serverCertificateIssuerCommonName property.
        ## @return a void
        ## 
        def server_certificate_issuer_common_name=(value)
            @server_certificate_issuer_common_name = value
        end
        ## 
        ## Gets the serverCertificateType property value. The type of certificate the VPN server will present to the VPN client for authentication. Possible values are: rsa, ecdsa256, ecdsa384, ecdsa521.
        ## @return a vpn_server_certificate_type
        ## 
        def server_certificate_type
            return @server_certificate_type
        end
        ## 
        ## Sets the serverCertificateType property value. The type of certificate the VPN server will present to the VPN client for authentication. Possible values are: rsa, ecdsa256, ecdsa384, ecdsa521.
        ## @param value Value to set for the serverCertificateType property.
        ## @return a void
        ## 
        def server_certificate_type=(value)
            @server_certificate_type = value
        end
        ## 
        ## Gets the sharedSecret property value. Used when Shared Secret Authentication is selected
        ## @return a string
        ## 
        def shared_secret
            return @shared_secret
        end
        ## 
        ## Sets the sharedSecret property value. Used when Shared Secret Authentication is selected
        ## @param value Value to set for the sharedSecret property.
        ## @return a void
        ## 
        def shared_secret=(value)
            @shared_secret = value
        end
        ## 
        ## Gets the tlsMaximumVersion property value. The maximum TLS version to be used with EAP-TLS authentication
        ## @return a string
        ## 
        def tls_maximum_version
            return @tls_maximum_version
        end
        ## 
        ## Sets the tlsMaximumVersion property value. The maximum TLS version to be used with EAP-TLS authentication
        ## @param value Value to set for the tlsMaximumVersion property.
        ## @return a void
        ## 
        def tls_maximum_version=(value)
            @tls_maximum_version = value
        end
        ## 
        ## Gets the tlsMinimumVersion property value. The minimum TLS version to be used with EAP-TLS authentication
        ## @return a string
        ## 
        def tls_minimum_version
            return @tls_minimum_version
        end
        ## 
        ## Sets the tlsMinimumVersion property value. The minimum TLS version to be used with EAP-TLS authentication
        ## @param value Value to set for the tlsMinimumVersion property.
        ## @return a void
        ## 
        def tls_minimum_version=(value)
            @tls_minimum_version = value
        end
    end
end
