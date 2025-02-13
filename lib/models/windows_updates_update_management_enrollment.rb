require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesUpdateManagementEnrollment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The driver property
            @driver
            ## 
            # The feature property
            @feature
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The quality property
            @quality
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
            ## Instantiates a new WindowsUpdatesUpdateManagementEnrollment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_update_management_enrollment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesUpdateManagementEnrollment.new
            end
            ## 
            ## Gets the driver property value. The driver property
            ## @return a windows_updates_update_category_enrollment_information
            ## 
            def driver
                return @driver
            end
            ## 
            ## Sets the driver property value. The driver property
            ## @param value Value to set for the driver property.
            ## @return a void
            ## 
            def driver=(value)
                @driver = value
            end
            ## 
            ## Gets the feature property value. The feature property
            ## @return a windows_updates_update_category_enrollment_information
            ## 
            def feature
                return @feature
            end
            ## 
            ## Sets the feature property value. The feature property
            ## @param value Value to set for the feature property.
            ## @return a void
            ## 
            def feature=(value)
                @feature = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "driver" => lambda {|n| @driver = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdateCategoryEnrollmentInformation.create_from_discriminator_value(pn) }) },
                    "feature" => lambda {|n| @feature = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdateCategoryEnrollmentInformation.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "quality" => lambda {|n| @quality = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdateCategoryEnrollmentInformation.create_from_discriminator_value(pn) }) },
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
            ## Gets the quality property value. The quality property
            ## @return a windows_updates_update_category_enrollment_information
            ## 
            def quality
                return @quality
            end
            ## 
            ## Sets the quality property value. The quality property
            ## @param value Value to set for the quality property.
            ## @return a void
            ## 
            def quality=(value)
                @quality = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("driver", @driver)
                writer.write_object_value("feature", @feature)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("quality", @quality)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
