require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedProcess < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isSuspicious property
            @is_suspicious
            ## 
            # The processName property
            @process_name
            ## 
            ## Instantiates a new NetworkaccessRelatedProcess and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedProcess"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_process
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedProcess.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isSuspicious" => lambda {|n| @is_suspicious = n.get_boolean_value() },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isSuspicious property value. The isSuspicious property
            ## @return a boolean
            ## 
            def is_suspicious
                return @is_suspicious
            end
            ## 
            ## Sets the isSuspicious property value. The isSuspicious property
            ## @param value Value to set for the isSuspicious property.
            ## @return a void
            ## 
            def is_suspicious=(value)
                @is_suspicious = value
            end
            ## 
            ## Gets the processName property value. The processName property
            ## @return a string
            ## 
            def process_name
                return @process_name
            end
            ## 
            ## Sets the processName property value. The processName property
            ## @param value Value to set for the processName property.
            ## @return a void
            ## 
            def process_name=(value)
                @process_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isSuspicious", @is_suspicious)
                writer.write_string_value("processName", @process_name)
            end
        end
    end
end
