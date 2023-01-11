require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ExternalMeetingRegistrant < MicrosoftGraphBeta::Models::MeetingRegistrantBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The tenant ID of this registrant if in Azure Active Directory.
        @tenant_id
        ## 
        # The user ID of this registrant if in Azure Active Directory.
        @user_id
        ## 
        ## Instantiates a new ExternalMeetingRegistrant and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.externalMeetingRegistrant"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a external_meeting_registrant
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ExternalMeetingRegistrant.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("tenantId", @tenant_id)
            writer.write_string_value("userId", @user_id)
        end
        ## 
        ## Gets the tenantId property value. The tenant ID of this registrant if in Azure Active Directory.
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The tenant ID of this registrant if in Azure Active Directory.
        ## @param value Value to set for the tenantId property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
        ## 
        ## Gets the userId property value. The user ID of this registrant if in Azure Active Directory.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The user ID of this registrant if in Azure Active Directory.
        ## @param value Value to set for the userId property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
