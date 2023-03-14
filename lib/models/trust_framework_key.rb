require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrustFrameworkKey
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # RSA Key - private exponent. Field cannot be read back.
            @d
            ## 
            # RSA Key - first exponent. Field cannot be read back.
            @dp
            ## 
            # RSA Key - second exponent. Field cannot be read back.
            @dq
            ## 
            # RSA Key - public exponent
            @e
            ## 
            # This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)
            @exp
            ## 
            # Symmetric Key for oct key type. Field cannot be read back.
            @k
            ## 
            # The unique identifier for the key.
            @kid
            ## 
            # The kty (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are rsa, oct.
            @kty
            ## 
            # RSA Key - modulus
            @n
            ## 
            # This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)
            @nbf
            ## 
            # The OdataType property
            @odata_type
            ## 
            # RSA Key - first prime. Field cannot be read back.
            @p
            ## 
            # RSA Key - second prime. Field cannot be read back.
            @q
            ## 
            # RSA Key - Coefficient. Field cannot be read back.
            @qi
            ## 
            # The use (public key use) parameter identifies the intended use of the public key.  The use parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are: sig (signature), enc (encryption)
            @use
            ## 
            # The x5c (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates RFC 5280.
            @x5c
            ## 
            # The x5t (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of an X.509 certificate RFC 5280.
            @x5t
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new trustFrameworkKey and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a trust_framework_key
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrustFrameworkKey.new
            end
            ## 
            ## Gets the d property value. RSA Key - private exponent. Field cannot be read back.
            ## @return a string
            ## 
            def d
                return @d
            end
            ## 
            ## Sets the d property value. RSA Key - private exponent. Field cannot be read back.
            ## @param value Value to set for the d property.
            ## @return a void
            ## 
            def d=(value)
                @d = value
            end
            ## 
            ## Gets the dp property value. RSA Key - first exponent. Field cannot be read back.
            ## @return a string
            ## 
            def dp
                return @dp
            end
            ## 
            ## Sets the dp property value. RSA Key - first exponent. Field cannot be read back.
            ## @param value Value to set for the dp property.
            ## @return a void
            ## 
            def dp=(value)
                @dp = value
            end
            ## 
            ## Gets the dq property value. RSA Key - second exponent. Field cannot be read back.
            ## @return a string
            ## 
            def dq
                return @dq
            end
            ## 
            ## Sets the dq property value. RSA Key - second exponent. Field cannot be read back.
            ## @param value Value to set for the dq property.
            ## @return a void
            ## 
            def dq=(value)
                @dq = value
            end
            ## 
            ## Gets the e property value. RSA Key - public exponent
            ## @return a string
            ## 
            def e
                return @e
            end
            ## 
            ## Sets the e property value. RSA Key - public exponent
            ## @param value Value to set for the e property.
            ## @return a void
            ## 
            def e=(value)
                @e = value
            end
            ## 
            ## Gets the exp property value. This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)
            ## @return a int64
            ## 
            def exp
                return @exp
            end
            ## 
            ## Sets the exp property value. This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)
            ## @param value Value to set for the exp property.
            ## @return a void
            ## 
            def exp=(value)
                @exp = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "d" => lambda {|n| @d = n.get_string_value() },
                    "dp" => lambda {|n| @dp = n.get_string_value() },
                    "dq" => lambda {|n| @dq = n.get_string_value() },
                    "e" => lambda {|n| @e = n.get_string_value() },
                    "exp" => lambda {|n| @exp = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "k" => lambda {|n| @k = n.get_string_value() },
                    "kid" => lambda {|n| @kid = n.get_string_value() },
                    "kty" => lambda {|n| @kty = n.get_string_value() },
                    "n" => lambda {|n| @n = n.get_string_value() },
                    "nbf" => lambda {|n| @nbf = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "p" => lambda {|n| @p = n.get_string_value() },
                    "q" => lambda {|n| @q = n.get_string_value() },
                    "qi" => lambda {|n| @qi = n.get_string_value() },
                    "use" => lambda {|n| @use = n.get_string_value() },
                    "x5c" => lambda {|n| @x5c = n.get_collection_of_primitive_values(String) },
                    "x5t" => lambda {|n| @x5t = n.get_string_value() },
                }
            end
            ## 
            ## Gets the k property value. Symmetric Key for oct key type. Field cannot be read back.
            ## @return a string
            ## 
            def k
                return @k
            end
            ## 
            ## Sets the k property value. Symmetric Key for oct key type. Field cannot be read back.
            ## @param value Value to set for the k property.
            ## @return a void
            ## 
            def k=(value)
                @k = value
            end
            ## 
            ## Gets the kid property value. The unique identifier for the key.
            ## @return a string
            ## 
            def kid
                return @kid
            end
            ## 
            ## Sets the kid property value. The unique identifier for the key.
            ## @param value Value to set for the kid property.
            ## @return a void
            ## 
            def kid=(value)
                @kid = value
            end
            ## 
            ## Gets the kty property value. The kty (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are rsa, oct.
            ## @return a string
            ## 
            def kty
                return @kty
            end
            ## 
            ## Sets the kty property value. The kty (key type) parameter identifies the cryptographic algorithm family used with the key, The valid values are rsa, oct.
            ## @param value Value to set for the kty property.
            ## @return a void
            ## 
            def kty=(value)
                @kty = value
            end
            ## 
            ## Gets the n property value. RSA Key - modulus
            ## @return a string
            ## 
            def n
                return @n
            end
            ## 
            ## Sets the n property value. RSA Key - modulus
            ## @param value Value to set for the n property.
            ## @return a void
            ## 
            def n=(value)
                @n = value
            end
            ## 
            ## Gets the nbf property value. This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)
            ## @return a int64
            ## 
            def nbf
                return @nbf
            end
            ## 
            ## Sets the nbf property value. This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)
            ## @param value Value to set for the nbf property.
            ## @return a void
            ## 
            def nbf=(value)
                @nbf = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the p property value. RSA Key - first prime. Field cannot be read back.
            ## @return a string
            ## 
            def p
                return @p
            end
            ## 
            ## Sets the p property value. RSA Key - first prime. Field cannot be read back.
            ## @param value Value to set for the p property.
            ## @return a void
            ## 
            def p=(value)
                @p = value
            end
            ## 
            ## Gets the q property value. RSA Key - second prime. Field cannot be read back.
            ## @return a string
            ## 
            def q
                return @q
            end
            ## 
            ## Sets the q property value. RSA Key - second prime. Field cannot be read back.
            ## @param value Value to set for the q property.
            ## @return a void
            ## 
            def q=(value)
                @q = value
            end
            ## 
            ## Gets the qi property value. RSA Key - Coefficient. Field cannot be read back.
            ## @return a string
            ## 
            def qi
                return @qi
            end
            ## 
            ## Sets the qi property value. RSA Key - Coefficient. Field cannot be read back.
            ## @param value Value to set for the qi property.
            ## @return a void
            ## 
            def qi=(value)
                @qi = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("d", @d)
                writer.write_string_value("dp", @dp)
                writer.write_string_value("dq", @dq)
                writer.write_string_value("e", @e)
                writer.write_object_value("exp", @exp)
                writer.write_string_value("k", @k)
                writer.write_string_value("kid", @kid)
                writer.write_string_value("kty", @kty)
                writer.write_string_value("n", @n)
                writer.write_object_value("nbf", @nbf)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("p", @p)
                writer.write_string_value("q", @q)
                writer.write_string_value("qi", @qi)
                writer.write_string_value("use", @use)
                writer.write_collection_of_primitive_values("x5c", @x5c)
                writer.write_string_value("x5t", @x5t)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the use property value. The use (public key use) parameter identifies the intended use of the public key.  The use parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are: sig (signature), enc (encryption)
            ## @return a string
            ## 
            def use
                return @use
            end
            ## 
            ## Sets the use property value. The use (public key use) parameter identifies the intended use of the public key.  The use parameter is employed to indicate whether a public key is used for encrypting data or verifying the signature on data. Possible values are: sig (signature), enc (encryption)
            ## @param value Value to set for the use property.
            ## @return a void
            ## 
            def use=(value)
                @use = value
            end
            ## 
            ## Gets the x5c property value. The x5c (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates RFC 5280.
            ## @return a string
            ## 
            def x5c
                return @x5c
            end
            ## 
            ## Sets the x5c property value. The x5c (X.509 certificate chain) parameter contains a chain of one or more PKIX certificates RFC 5280.
            ## @param value Value to set for the x5c property.
            ## @return a void
            ## 
            def x5c=(value)
                @x5c = value
            end
            ## 
            ## Gets the x5t property value. The x5t (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of an X.509 certificate RFC 5280.
            ## @return a string
            ## 
            def x5t
                return @x5t
            end
            ## 
            ## Sets the x5t property value. The x5t (X.509 certificate SHA-1 thumbprint) parameter is a base64url-encoded SHA-1 thumbprint (a.k.a. digest) of the DER encoding of an X.509 certificate RFC 5280.
            ## @param value Value to set for the x5t property.
            ## @return a void
            ## 
            def x5t=(value)
                @x5t = value
            end
        end
    end
end
