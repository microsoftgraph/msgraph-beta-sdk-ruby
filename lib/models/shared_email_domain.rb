require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SharedEmailDomain < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The provisioningStatus property
            @provisioning_status
            ## 
            ## Instantiates a new sharedEmailDomain and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a shared_email_domain
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharedEmailDomain.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "provisioningStatus" => lambda {|n| @provisioning_status = n.get_string_value() },
                })
            end
            ## 
            ## Gets the provisioningStatus property value. The provisioningStatus property
            ## @return a string
            ## 
            def provisioning_status
                return @provisioning_status
            end
            ## 
            ## Sets the provisioningStatus property value. The provisioningStatus property
            ## @param value Value to set for the provisioningStatus property.
            ## @return a void
            ## 
            def provisioning_status=(value)
                @provisioning_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("provisioningStatus", @provisioning_status)
            end
        end
    end
end
