require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/teamwork_software_type'
require_relative '../../../teamwork'
require_relative '../../devices'
require_relative '../item'
require_relative './microsoft_graph_update_software'

module MicrosoftGraphBeta::Teamwork::Devices::Item::MicrosoftGraphUpdateSoftware
    class UpdateSoftwarePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The softwareType property
        @software_type
        ## 
        # The softwareVersion property
        @software_version
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
        ## Instantiates a new updateSoftwarePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a update_software_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdateSoftwarePostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "softwareType" => lambda {|n| @software_type = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkSoftwareType) },
                "softwareVersion" => lambda {|n| @software_version = n.get_string_value() },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("softwareType", @software_type)
            writer.write_string_value("softwareVersion", @software_version)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the softwareType property value. The softwareType property
        ## @return a teamwork_software_type
        ## 
        def software_type
            return @software_type
        end
        ## 
        ## Sets the softwareType property value. The softwareType property
        ## @param value Value to set for the software_type property.
        ## @return a void
        ## 
        def software_type=(value)
            @software_type = value
        end
        ## 
        ## Gets the softwareVersion property value. The softwareVersion property
        ## @return a string
        ## 
        def software_version
            return @software_version
        end
        ## 
        ## Sets the softwareVersion property value. The softwareVersion property
        ## @param value Value to set for the software_version property.
        ## @return a void
        ## 
        def software_version=(value)
            @software_version = value
        end
    end
end
