require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SolutionsRoot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The businessScenarios property
            @business_scenarios
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The virtualEvents property
            @virtual_events
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
            ## Gets the businessScenarios property value. The businessScenarios property
            ## @return a business_scenario
            ## 
            def business_scenarios
                return @business_scenarios
            end
            ## 
            ## Sets the businessScenarios property value. The businessScenarios property
            ## @param value Value to set for the businessScenarios property.
            ## @return a void
            ## 
            def business_scenarios=(value)
                @business_scenarios = value
            end
            ## 
            ## Instantiates a new solutionsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a solutions_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SolutionsRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "businessScenarios" => lambda {|n| @business_scenarios = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenario.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "virtualEvents" => lambda {|n| @virtual_events = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEventsRoot.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("businessScenarios", @business_scenarios)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("virtualEvents", @virtual_events)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the virtualEvents property value. The virtualEvents property
            ## @return a virtual_events_root
            ## 
            def virtual_events
                return @virtual_events
            end
            ## 
            ## Sets the virtualEvents property value. The virtualEvents property
            ## @param value Value to set for the virtualEvents property.
            ## @return a void
            ## 
            def virtual_events=(value)
                @virtual_events = value
            end
        end
    end
end
