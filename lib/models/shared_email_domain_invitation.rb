require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SharedEmailDomainInvitation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The expiryTime property
            @expiry_time
            ## 
            # The invitationDomain property
            @invitation_domain
            ## 
            # The invitationStatus property
            @invitation_status
            ## 
            ## Instantiates a new sharedEmailDomainInvitation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a shared_email_domain_invitation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedEmailDomainInvitation.new
            end
            ## 
            ## Gets the expiryTime property value. The expiryTime property
            ## @return a date_time
            ## 
            def expiry_time
                return @expiry_time
            end
            ## 
            ## Sets the expiryTime property value. The expiryTime property
            ## @param value Value to set for the expiryTime property.
            ## @return a void
            ## 
            def expiry_time=(value)
                @expiry_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expiryTime" => lambda {|n| @expiry_time = n.get_date_time_value() },
                    "invitationDomain" => lambda {|n| @invitation_domain = n.get_string_value() },
                    "invitationStatus" => lambda {|n| @invitation_status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the invitationDomain property value. The invitationDomain property
            ## @return a string
            ## 
            def invitation_domain
                return @invitation_domain
            end
            ## 
            ## Sets the invitationDomain property value. The invitationDomain property
            ## @param value Value to set for the invitationDomain property.
            ## @return a void
            ## 
            def invitation_domain=(value)
                @invitation_domain = value
            end
            ## 
            ## Gets the invitationStatus property value. The invitationStatus property
            ## @return a string
            ## 
            def invitation_status
                return @invitation_status
            end
            ## 
            ## Sets the invitationStatus property value. The invitationStatus property
            ## @param value Value to set for the invitationStatus property.
            ## @return a void
            ## 
            def invitation_status=(value)
                @invitation_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("expiryTime", @expiry_time)
                writer.write_string_value("invitationDomain", @invitation_domain)
                writer.write_string_value("invitationStatus", @invitation_status)
            end
        end
    end
end
