require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ProtectGroup < MicrosoftGraphBeta::Models::LabelActionBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The allowEmailFromGuestUsers property
        @allow_email_from_guest_users
        ## 
        # The allowGuestUsers property
        @allow_guest_users
        ## 
        # The privacy property
        @privacy
        ## 
        ## Gets the allowEmailFromGuestUsers property value. The allowEmailFromGuestUsers property
        ## @return a boolean
        ## 
        def allow_email_from_guest_users
            return @allow_email_from_guest_users
        end
        ## 
        ## Sets the allowEmailFromGuestUsers property value. The allowEmailFromGuestUsers property
        ## @param value Value to set for the allow_email_from_guest_users property.
        ## @return a void
        ## 
        def allow_email_from_guest_users=(value)
            @allow_email_from_guest_users = value
        end
        ## 
        ## Gets the allowGuestUsers property value. The allowGuestUsers property
        ## @return a boolean
        ## 
        def allow_guest_users
            return @allow_guest_users
        end
        ## 
        ## Sets the allowGuestUsers property value. The allowGuestUsers property
        ## @param value Value to set for the allow_guest_users property.
        ## @return a void
        ## 
        def allow_guest_users=(value)
            @allow_guest_users = value
        end
        ## 
        ## Instantiates a new ProtectGroup and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.protectGroup"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a protect_group
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ProtectGroup.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowEmailFromGuestUsers" => lambda {|n| @allow_email_from_guest_users = n.get_boolean_value() },
                "allowGuestUsers" => lambda {|n| @allow_guest_users = n.get_boolean_value() },
                "privacy" => lambda {|n| @privacy = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPrivacy) },
            })
        end
        ## 
        ## Gets the privacy property value. The privacy property
        ## @return a group_privacy
        ## 
        def privacy
            return @privacy
        end
        ## 
        ## Sets the privacy property value. The privacy property
        ## @param value Value to set for the privacy property.
        ## @return a void
        ## 
        def privacy=(value)
            @privacy = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("allowEmailFromGuestUsers", @allow_email_from_guest_users)
            writer.write_boolean_value("allowGuestUsers", @allow_guest_users)
            writer.write_enum_value("privacy", @privacy)
        end
    end
end
