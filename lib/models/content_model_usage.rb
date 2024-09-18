require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ContentModelUsage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identity of the user, device, or application that first applied the contentModel to the library.
            @created_by
            ## 
            # Date and time of the contentModel is first applied.
            @created_date_time
            ## 
            # The ID of the drive where the contentModel is applied.
            @drive_id
            ## 
            # Identity of the user, device, or application that last applied the contentModel to the library.
            @last_modified_by
            ## 
            # Date and time of the contentModel is last applied.
            @last_modified_date_time
            ## 
            # The ID of the contentModel.
            @model_id
            ## 
            # The version of the current applied contentModel.
            @model_version
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
            ## Instantiates a new ContentModelUsage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdBy property value. Identity of the user, device, or application that first applied the contentModel to the library.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user, device, or application that first applied the contentModel to the library.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of the contentModel is first applied.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of the contentModel is first applied.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a content_model_usage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContentModelUsage.new
            end
            ## 
            ## Gets the driveId property value. The ID of the drive where the contentModel is applied.
            ## @return a string
            ## 
            def drive_id
                return @drive_id
            end
            ## 
            ## Sets the driveId property value. The ID of the drive where the contentModel is applied.
            ## @param value Value to set for the driveId property.
            ## @return a void
            ## 
            def drive_id=(value)
                @drive_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "driveId" => lambda {|n| @drive_id = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "modelId" => lambda {|n| @model_id = n.get_string_value() },
                    "modelVersion" => lambda {|n| @model_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user, device, or application that last applied the contentModel to the library.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user, device, or application that last applied the contentModel to the library.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time of the contentModel is last applied.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time of the contentModel is last applied.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the modelId property value. The ID of the contentModel.
            ## @return a string
            ## 
            def model_id
                return @model_id
            end
            ## 
            ## Sets the modelId property value. The ID of the contentModel.
            ## @param value Value to set for the modelId property.
            ## @return a void
            ## 
            def model_id=(value)
                @model_id = value
            end
            ## 
            ## Gets the modelVersion property value. The version of the current applied contentModel.
            ## @return a string
            ## 
            def model_version
                return @model_version
            end
            ## 
            ## Sets the modelVersion property value. The version of the current applied contentModel.
            ## @param value Value to set for the modelVersion property.
            ## @return a void
            ## 
            def model_version=(value)
                @model_version = value
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
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("driveId", @drive_id)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("modelId", @model_id)
                writer.write_string_value("modelVersion", @model_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
