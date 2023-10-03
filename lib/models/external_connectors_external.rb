require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternalConnectorsExternal
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The authorizationSystems property
            @authorization_systems
            ## 
            # The connections property
            @connections
            ## 
            # The industryData property
            @industry_data
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the authorizationSystems property value. The authorizationSystems property
            ## @return a authorization_system
            ## 
            def authorization_systems
                return @authorization_systems
            end
            ## 
            ## Sets the authorizationSystems property value. The authorizationSystems property
            ## @param value Value to set for the authorizationSystems property.
            ## @return a void
            ## 
            def authorization_systems=(value)
                @authorization_systems = value
            end
            ## 
            ## Gets the connections property value. The connections property
            ## @return a external_connectors_external_connection
            ## 
            def connections
                return @connections
            end
            ## 
            ## Sets the connections property value. The connections property
            ## @param value Value to set for the connections property.
            ## @return a void
            ## 
            def connections=(value)
                @connections = value
            end
            ## 
            ## Instantiates a new externalConnectorsExternal and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_connectors_external
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalConnectorsExternal.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authorizationSystems" => lambda {|n| @authorization_systems = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystem.create_from_discriminator_value(pn) }) },
                    "connections" => lambda {|n| @connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExternalConnectorsExternalConnection.create_from_discriminator_value(pn) }) },
                    "industryData" => lambda {|n| @industry_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataIndustryDataRoot.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the industryData property value. The industryData property
            ## @return a industry_data_industry_data_root
            ## 
            def industry_data
                return @industry_data
            end
            ## 
            ## Sets the industryData property value. The industryData property
            ## @param value Value to set for the industryData property.
            ## @return a void
            ## 
            def industry_data=(value)
                @industry_data = value
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
                writer.write_collection_of_object_values("authorizationSystems", @authorization_systems)
                writer.write_collection_of_object_values("connections", @connections)
                writer.write_object_value("industryData", @industry_data)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
