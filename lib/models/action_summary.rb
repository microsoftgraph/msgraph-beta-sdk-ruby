require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ActionSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # This is the number of authorization system actions that have been assigned to the identity.
            @assigned
            ## 
            # This is the number of authorization system actions that the identity has exercised in the last 90 days.
            @available
            ## 
            # This is the maximum number of actions that are available in the authorization system.
            @exercised
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
            ## Gets the assigned property value. This is the number of authorization system actions that have been assigned to the identity.
            ## @return a integer
            ## 
            def assigned
                return @assigned
            end
            ## 
            ## Sets the assigned property value. This is the number of authorization system actions that have been assigned to the identity.
            ## @param value Value to set for the assigned property.
            ## @return a void
            ## 
            def assigned=(value)
                @assigned = value
            end
            ## 
            ## Gets the available property value. This is the number of authorization system actions that the identity has exercised in the last 90 days.
            ## @return a integer
            ## 
            def available
                return @available
            end
            ## 
            ## Sets the available property value. This is the number of authorization system actions that the identity has exercised in the last 90 days.
            ## @param value Value to set for the available property.
            ## @return a void
            ## 
            def available=(value)
                @available = value
            end
            ## 
            ## Instantiates a new ActionSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a action_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ActionSummary.new
            end
            ## 
            ## Gets the exercised property value. This is the maximum number of actions that are available in the authorization system.
            ## @return a integer
            ## 
            def exercised
                return @exercised
            end
            ## 
            ## Sets the exercised property value. This is the maximum number of actions that are available in the authorization system.
            ## @param value Value to set for the exercised property.
            ## @return a void
            ## 
            def exercised=(value)
                @exercised = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assigned" => lambda {|n| @assigned = n.get_number_value() },
                    "available" => lambda {|n| @available = n.get_number_value() },
                    "exercised" => lambda {|n| @exercised = n.get_number_value() },
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
                writer.write_number_value("assigned", @assigned)
                writer.write_number_value("available", @available)
                writer.write_number_value("exercised", @exercised)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
