require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedThreatIntelligence < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The threatCount property
            @threat_count
            ## 
            ## Instantiates a new NetworkaccessRelatedThreatIntelligence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedThreatIntelligence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_threat_intelligence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedThreatIntelligence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "threatCount" => lambda {|n| @threat_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("threatCount", @threat_count)
            end
            ## 
            ## Gets the threatCount property value. The threatCount property
            ## @return a int64
            ## 
            def threat_count
                return @threat_count
            end
            ## 
            ## Sets the threatCount property value. The threatCount property
            ## @param value Value to set for the threatCount property.
            ## @return a void
            ## 
            def threat_count=(value)
                @threat_count = value
            end
        end
    end
end
