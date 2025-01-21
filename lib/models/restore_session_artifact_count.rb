require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RestoreSessionArtifactCount
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of artifacts whose restoration completed.
            @completed
            ## 
            # The number of artifacts whose restoration failed.
            @failed
            ## 
            # The number of artifacts whose restoration is in progress.
            @in_progress
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of artifacts present in the restore session.
            @total
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
            ## Gets the completed property value. The number of artifacts whose restoration completed.
            ## @return a integer
            ## 
            def completed
                return @completed
            end
            ## 
            ## Sets the completed property value. The number of artifacts whose restoration completed.
            ## @param value Value to set for the completed property.
            ## @return a void
            ## 
            def completed=(value)
                @completed = value
            end
            ## 
            ## Instantiates a new RestoreSessionArtifactCount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_session_artifact_count
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RestoreSessionArtifactCount.new
            end
            ## 
            ## Gets the failed property value. The number of artifacts whose restoration failed.
            ## @return a integer
            ## 
            def failed
                return @failed
            end
            ## 
            ## Sets the failed property value. The number of artifacts whose restoration failed.
            ## @param value Value to set for the failed property.
            ## @return a void
            ## 
            def failed=(value)
                @failed = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "completed" => lambda {|n| @completed = n.get_number_value() },
                    "failed" => lambda {|n| @failed = n.get_number_value() },
                    "inProgress" => lambda {|n| @in_progress = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "total" => lambda {|n| @total = n.get_number_value() },
                }
            end
            ## 
            ## Gets the inProgress property value. The number of artifacts whose restoration is in progress.
            ## @return a integer
            ## 
            def in_progress
                return @in_progress
            end
            ## 
            ## Sets the inProgress property value. The number of artifacts whose restoration is in progress.
            ## @param value Value to set for the inProgress property.
            ## @return a void
            ## 
            def in_progress=(value)
                @in_progress = value
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
                writer.write_number_value("completed", @completed)
                writer.write_number_value("failed", @failed)
                writer.write_number_value("inProgress", @in_progress)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("total", @total)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the total property value. The number of artifacts present in the restore session.
            ## @return a integer
            ## 
            def total
                return @total
            end
            ## 
            ## Sets the total property value. The number of artifacts present in the restore session.
            ## @param value Value to set for the total property.
            ## @return a void
            ## 
            def total=(value)
                @total = value
            end
        end
    end
end
