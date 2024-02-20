require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDetonationObservables
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The contactedIps property
            @contacted_ips
            ## 
            # The contactedUrls property
            @contacted_urls
            ## 
            # The droppedfiles property
            @droppedfiles
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new SecurityDetonationObservables and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contactedIps property value. The contactedIps property
            ## @return a string
            ## 
            def contacted_ips
                return @contacted_ips
            end
            ## 
            ## Sets the contactedIps property value. The contactedIps property
            ## @param value Value to set for the contactedIps property.
            ## @return a void
            ## 
            def contacted_ips=(value)
                @contacted_ips = value
            end
            ## 
            ## Gets the contactedUrls property value. The contactedUrls property
            ## @return a string
            ## 
            def contacted_urls
                return @contacted_urls
            end
            ## 
            ## Sets the contactedUrls property value. The contactedUrls property
            ## @param value Value to set for the contactedUrls property.
            ## @return a void
            ## 
            def contacted_urls=(value)
                @contacted_urls = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_detonation_observables
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDetonationObservables.new
            end
            ## 
            ## Gets the droppedfiles property value. The droppedfiles property
            ## @return a string
            ## 
            def droppedfiles
                return @droppedfiles
            end
            ## 
            ## Sets the droppedfiles property value. The droppedfiles property
            ## @param value Value to set for the droppedfiles property.
            ## @return a void
            ## 
            def droppedfiles=(value)
                @droppedfiles = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "contactedIps" => lambda {|n| @contacted_ips = n.get_collection_of_primitive_values(String) },
                    "contactedUrls" => lambda {|n| @contacted_urls = n.get_collection_of_primitive_values(String) },
                    "droppedfiles" => lambda {|n| @droppedfiles = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("contactedIps", @contacted_ips)
                writer.write_collection_of_primitive_values("contactedUrls", @contacted_urls)
                writer.write_collection_of_primitive_values("droppedfiles", @droppedfiles)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
