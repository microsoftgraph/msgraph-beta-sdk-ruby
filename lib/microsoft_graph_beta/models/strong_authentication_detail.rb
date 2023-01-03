require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class StrongAuthenticationDetail < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The encryptedPinHashHistory property
        @encrypted_pin_hash_history
        ## 
        # The proofupTime property
        @proofup_time
        ## 
        ## Instantiates a new StrongAuthenticationDetail and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a strong_authentication_detail
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return StrongAuthenticationDetail.new
        end
        ## 
        ## Gets the encryptedPinHashHistory property value. The encryptedPinHashHistory property
        ## @return a binary
        ## 
        def encrypted_pin_hash_history
            return @encrypted_pin_hash_history
        end
        ## 
        ## Sets the encryptedPinHashHistory property value. The encryptedPinHashHistory property
        ## @param value Value to set for the encryptedPinHashHistory property.
        ## @return a void
        ## 
        def encrypted_pin_hash_history=(value)
            @encrypted_pin_hash_history = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "encryptedPinHashHistory" => lambda {|n| @encrypted_pin_hash_history = n.get_string_value() },
                "proofupTime" => lambda {|n| @proofup_time = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the proofupTime property value. The proofupTime property
        ## @return a int64
        ## 
        def proofup_time
            return @proofup_time
        end
        ## 
        ## Sets the proofupTime property value. The proofupTime property
        ## @param value Value to set for the proofupTime property.
        ## @return a void
        ## 
        def proofup_time=(value)
            @proofup_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("encryptedPinHashHistory", @encrypted_pin_hash_history)
            writer.write_object_value("proofupTime", @proofup_time)
        end
    end
end
