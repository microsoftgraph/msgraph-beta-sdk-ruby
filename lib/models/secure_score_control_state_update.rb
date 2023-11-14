require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecureScoreControlStateUpdate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The assignedTo property
            @assigned_to
            ## 
            # The comment property
            @comment
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
            ## 
            # The updatedBy property
            @updated_by
            ## 
            # The updatedDateTime property
            @updated_date_time
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
            ## Gets the assignedTo property value. The assignedTo property
            ## @return a string
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The assignedTo property
            ## @param value Value to set for the assignedTo property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Gets the comment property value. The comment property
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. The comment property
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Instantiates a new secureScoreControlStateUpdate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a secure_score_control_state_update
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecureScoreControlStateUpdate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignedTo" => lambda {|n| @assigned_to = n.get_string_value() },
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "updatedBy" => lambda {|n| @updated_by = n.get_string_value() },
                    "updatedDateTime" => lambda {|n| @updated_date_time = n.get_date_time_value() },
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
                writer.write_string_value("assignedTo", @assigned_to)
                writer.write_string_value("comment", @comment)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("state", @state)
                writer.write_string_value("updatedBy", @updated_by)
                writer.write_date_time_value("updatedDateTime", @updated_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the updatedBy property value. The updatedBy property
            ## @return a string
            ## 
            def updated_by
                return @updated_by
            end
            ## 
            ## Sets the updatedBy property value. The updatedBy property
            ## @param value Value to set for the updatedBy property.
            ## @return a void
            ## 
            def updated_by=(value)
                @updated_by = value
            end
            ## 
            ## Gets the updatedDateTime property value. The updatedDateTime property
            ## @return a date_time
            ## 
            def updated_date_time
                return @updated_date_time
            end
            ## 
            ## Sets the updatedDateTime property value. The updatedDateTime property
            ## @param value Value to set for the updatedDateTime property.
            ## @return a void
            ## 
            def updated_date_time=(value)
                @updated_date_time = value
            end
        end
    end
end
