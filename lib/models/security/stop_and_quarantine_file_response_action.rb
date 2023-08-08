require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class StopAndQuarantineFileResponseAction < MicrosoftGraphBeta::Models::Security::ResponseAction
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The identifier property
                @identifier
                ## 
                ## Instantiates a new stopAndQuarantineFileResponseAction and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.stopAndQuarantineFileResponseAction"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a stop_and_quarantine_file_response_action
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return StopAndQuarantineFileResponseAction.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "identifier" => lambda {|n| @identifier = n.get_enum_value(MicrosoftGraphBeta::Models::Security::StopAndQuarantineFileEntityIdentifier) },
                    })
                end
                ## 
                ## Gets the identifier property value. The identifier property
                ## @return a stop_and_quarantine_file_entity_identifier
                ## 
                def identifier
                    return @identifier
                end
                ## 
                ## Sets the identifier property value. The identifier property
                ## @param value Value to set for the identifier property.
                ## @return a void
                ## 
                def identifier=(value)
                    @identifier = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("identifier", @identifier)
                end
            end
        end
    end
end
