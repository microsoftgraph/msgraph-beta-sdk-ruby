require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class EventQuery
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The query property
        @query
        ## 
        # The queryType property
        @query_type
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
        ## Instantiates a new eventQuery and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a event_query
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EventQuery.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "query" => lambda {|n| @query = n.get_string_value() },
                "queryType" => lambda {|n| @query_type = n.get_enum_value(MicrosoftGraphBeta::Models::Security::QueryType) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the query property value. The query property
        ## @return a string
        ## 
        def query
            return @query
        end
        ## 
        ## Sets the query property value. The query property
        ## @param value Value to set for the query property.
        ## @return a void
        ## 
        def query=(value)
            @query = value
        end
        ## 
        ## Gets the queryType property value. The queryType property
        ## @return a query_type
        ## 
        def query_type
            return @query_type
        end
        ## 
        ## Sets the queryType property value. The queryType property
        ## @param value Value to set for the queryType property.
        ## @return a void
        ## 
        def query_type=(value)
            @query_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("query", @query)
            writer.write_enum_value("queryType", @query_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
