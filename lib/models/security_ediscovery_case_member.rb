require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityEdiscoveryCaseMember < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the eDiscovery case member. Allowed only for case members of type roleGroup.
            @display_name
            ## 
            # Specifies the recipient type of the eDiscovery case member. The possible values are: user, roleGroup, unknownFutureValue.
            @recipient_type
            ## 
            # The smtp address of the eDiscovery case member. Allowed only for case members of type user.
            @smtp_address
            ## 
            ## Instantiates a new SecurityEdiscoveryCaseMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ediscovery_case_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEdiscoveryCaseMember.new
            end
            ## 
            ## Gets the displayName property value. The display name of the eDiscovery case member. Allowed only for case members of type roleGroup.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the eDiscovery case member. Allowed only for case members of type roleGroup.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "recipientType" => lambda {|n| @recipient_type = n.get_enum_values(MicrosoftGraphBeta::Models::SecurityRecipientType) },
                    "smtpAddress" => lambda {|n| @smtp_address = n.get_string_value() },
                })
            end
            ## 
            ## Gets the recipientType property value. Specifies the recipient type of the eDiscovery case member. The possible values are: user, roleGroup, unknownFutureValue.
            ## @return a security_recipient_type
            ## 
            def recipient_type
                return @recipient_type
            end
            ## 
            ## Sets the recipientType property value. Specifies the recipient type of the eDiscovery case member. The possible values are: user, roleGroup, unknownFutureValue.
            ## @param value Value to set for the recipientType property.
            ## @return a void
            ## 
            def recipient_type=(value)
                @recipient_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("recipientType", @recipient_type)
                writer.write_string_value("smtpAddress", @smtp_address)
            end
            ## 
            ## Gets the smtpAddress property value. The smtp address of the eDiscovery case member. Allowed only for case members of type user.
            ## @return a string
            ## 
            def smtp_address
                return @smtp_address
            end
            ## 
            ## Sets the smtpAddress property value. The smtp address of the eDiscovery case member. Allowed only for case members of type user.
            ## @param value Value to set for the smtpAddress property.
            ## @return a void
            ## 
            def smtp_address=(value)
                @smtp_address = value
            end
        end
    end
end
