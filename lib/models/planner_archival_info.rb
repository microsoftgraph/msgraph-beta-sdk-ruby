require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerArchivalInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The justification property
            @justification
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The statusChangedBy property
            @status_changed_by
            ## 
            # The statusChangedDateTime property
            @status_changed_date_time
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
            ## Instantiates a new PlannerArchivalInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_archival_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerArchivalInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "statusChangedBy" => lambda {|n| @status_changed_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "statusChangedDateTime" => lambda {|n| @status_changed_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the justification property value. The justification property
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The justification property
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
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
                writer.write_string_value("justification", @justification)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("statusChangedBy", @status_changed_by)
                writer.write_date_time_value("statusChangedDateTime", @status_changed_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the statusChangedBy property value. The statusChangedBy property
            ## @return a identity_set
            ## 
            def status_changed_by
                return @status_changed_by
            end
            ## 
            ## Sets the statusChangedBy property value. The statusChangedBy property
            ## @param value Value to set for the statusChangedBy property.
            ## @return a void
            ## 
            def status_changed_by=(value)
                @status_changed_by = value
            end
            ## 
            ## Gets the statusChangedDateTime property value. The statusChangedDateTime property
            ## @return a date_time
            ## 
            def status_changed_date_time
                return @status_changed_date_time
            end
            ## 
            ## Sets the statusChangedDateTime property value. The statusChangedDateTime property
            ## @param value Value to set for the statusChangedDateTime property.
            ## @return a void
            ## 
            def status_changed_date_time=(value)
                @status_changed_date_time = value
            end
        end
    end
end
