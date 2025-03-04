require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDataDiscoveryReport < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of streams available for generating cloud discovery report.
            @uploaded_streams
            ## 
            ## Instantiates a new SecurityDataDiscoveryReport and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_data_discovery_report
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDataDiscoveryReport.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "uploadedStreams" => lambda {|n| @uploaded_streams = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityCloudAppDiscoveryReport.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("uploadedStreams", @uploaded_streams)
            end
            ## 
            ## Gets the uploadedStreams property value. A collection of streams available for generating cloud discovery report.
            ## @return a security_cloud_app_discovery_report
            ## 
            def uploaded_streams
                return @uploaded_streams
            end
            ## 
            ## Sets the uploadedStreams property value. A collection of streams available for generating cloud discovery report.
            ## @param value Value to set for the uploadedStreams property.
            ## @return a void
            ## 
            def uploaded_streams=(value)
                @uploaded_streams = value
            end
        end
    end
end
