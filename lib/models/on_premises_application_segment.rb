require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesApplicationSegment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If you're configuring a traffic manager in front of multiple App Proxy application segments, contains the user-friendly URL that will point to the traffic manager.
            @alternate_url
            ## 
            # CORS Rule definition for a particular application segment.
            @cors_configurations
            ## 
            # The published external URL for the application segment; for example, https://intranet.contoso.com./
            @external_url
            ## 
            # The internal URL of the application segment; for example, https://intranet/.
            @internal_url
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the alternateUrl property value. If you're configuring a traffic manager in front of multiple App Proxy application segments, contains the user-friendly URL that will point to the traffic manager.
            ## @return a string
            ## 
            def alternate_url
                return @alternate_url
            end
            ## 
            ## Sets the alternateUrl property value. If you're configuring a traffic manager in front of multiple App Proxy application segments, contains the user-friendly URL that will point to the traffic manager.
            ## @param value Value to set for the alternate_url property.
            ## @return a void
            ## 
            def alternate_url=(value)
                @alternate_url = value
            end
            ## 
            ## Instantiates a new onPremisesApplicationSegment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the corsConfigurations property value. CORS Rule definition for a particular application segment.
            ## @return a cors_configuration
            ## 
            def cors_configurations
                return @cors_configurations
            end
            ## 
            ## Sets the corsConfigurations property value. CORS Rule definition for a particular application segment.
            ## @param value Value to set for the cors_configurations property.
            ## @return a void
            ## 
            def cors_configurations=(value)
                @cors_configurations = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_application_segment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesApplicationSegment.new
            end
            ## 
            ## Gets the externalUrl property value. The published external URL for the application segment; for example, https://intranet.contoso.com./
            ## @return a string
            ## 
            def external_url
                return @external_url
            end
            ## 
            ## Sets the externalUrl property value. The published external URL for the application segment; for example, https://intranet.contoso.com./
            ## @param value Value to set for the external_url property.
            ## @return a void
            ## 
            def external_url=(value)
                @external_url = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alternateUrl" => lambda {|n| @alternate_url = n.get_string_value() },
                    "corsConfigurations" => lambda {|n| @cors_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CorsConfiguration.create_from_discriminator_value(pn) }) },
                    "externalUrl" => lambda {|n| @external_url = n.get_string_value() },
                    "internalUrl" => lambda {|n| @internal_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the internalUrl property value. The internal URL of the application segment; for example, https://intranet/.
            ## @return a string
            ## 
            def internal_url
                return @internal_url
            end
            ## 
            ## Sets the internalUrl property value. The internal URL of the application segment; for example, https://intranet/.
            ## @param value Value to set for the internal_url property.
            ## @return a void
            ## 
            def internal_url=(value)
                @internal_url = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_string_value("alternateUrl", @alternate_url)
                writer.write_collection_of_object_values("corsConfigurations", @cors_configurations)
                writer.write_string_value("externalUrl", @external_url)
                writer.write_string_value("internalUrl", @internal_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
