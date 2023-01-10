require 'microsoft_kiota_abstractions'
require_relative '../../office_configuration'
require_relative '../client_configurations'
require_relative './update_priorities'

module MicrosoftGraphBeta::OfficeConfiguration::ClientConfigurations::UpdatePriorities
    class UpdatePrioritiesPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The officeConfigurationPolicyIds property
        @office_configuration_policy_ids
        ## 
        # The officeConfigurationPriorities property
        @office_configuration_priorities
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
        ## Instantiates a new updatePrioritiesPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a update_priorities_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdatePrioritiesPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "officeConfigurationPolicyIds" => lambda {|n| @office_configuration_policy_ids = n.get_collection_of_primitive_values(String) },
                "officeConfigurationPriorities" => lambda {|n| @office_configuration_priorities = n.get_collection_of_primitive_values(Integer) },
            }
        end
        ## 
        ## Gets the officeConfigurationPolicyIds property value. The officeConfigurationPolicyIds property
        ## @return a string
        ## 
        def office_configuration_policy_ids
            return @office_configuration_policy_ids
        end
        ## 
        ## Sets the officeConfigurationPolicyIds property value. The officeConfigurationPolicyIds property
        ## @param value Value to set for the officeConfigurationPolicyIds property.
        ## @return a void
        ## 
        def office_configuration_policy_ids=(value)
            @office_configuration_policy_ids = value
        end
        ## 
        ## Gets the officeConfigurationPriorities property value. The officeConfigurationPriorities property
        ## @return a integer
        ## 
        def office_configuration_priorities
            return @office_configuration_priorities
        end
        ## 
        ## Sets the officeConfigurationPriorities property value. The officeConfigurationPriorities property
        ## @param value Value to set for the officeConfigurationPriorities property.
        ## @return a void
        ## 
        def office_configuration_priorities=(value)
            @office_configuration_priorities = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("officeConfigurationPolicyIds", @office_configuration_policy_ids)
            writer.write_collection_of_primitive_values("officeConfigurationPriorities", @office_configuration_priorities)
            writer.write_additional_data(@additional_data)
        end
    end
end
