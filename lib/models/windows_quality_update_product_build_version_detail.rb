require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents the build version details of a product revision that is associated with a quality update.
        class WindowsQualityUpdateProductBuildVersionDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The build number of the product release, Allowed range is 0 - 2,147,483,647. For example: 19045. Read-only.
            @build_number
            ## 
            # The major version of the product release, Allowed range is 0 - 2,147,483,647. For example: 10. Read-only.
            @major_version_number
            ## 
            # The minor version of the product release, Allowed range is 0 - 2,147,483,647. For example: 0. Read-only.
            @minor_version_number
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The update build revision number of the product revision for the corresponding patch, Allowed range is 0 - 2,147,483,647. For example: 4780. Read-only.
            @update_build_revision
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
            ## Gets the buildNumber property value. The build number of the product release, Allowed range is 0 - 2,147,483,647. For example: 19045. Read-only.
            ## @return a integer
            ## 
            def build_number
                return @build_number
            end
            ## 
            ## Sets the buildNumber property value. The build number of the product release, Allowed range is 0 - 2,147,483,647. For example: 19045. Read-only.
            ## @param value Value to set for the buildNumber property.
            ## @return a void
            ## 
            def build_number=(value)
                @build_number = value
            end
            ## 
            ## Instantiates a new WindowsQualityUpdateProductBuildVersionDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_quality_update_product_build_version_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsQualityUpdateProductBuildVersionDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "buildNumber" => lambda {|n| @build_number = n.get_number_value() },
                    "majorVersionNumber" => lambda {|n| @major_version_number = n.get_number_value() },
                    "minorVersionNumber" => lambda {|n| @minor_version_number = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "updateBuildRevision" => lambda {|n| @update_build_revision = n.get_number_value() },
                }
            end
            ## 
            ## Gets the majorVersionNumber property value. The major version of the product release, Allowed range is 0 - 2,147,483,647. For example: 10. Read-only.
            ## @return a integer
            ## 
            def major_version_number
                return @major_version_number
            end
            ## 
            ## Sets the majorVersionNumber property value. The major version of the product release, Allowed range is 0 - 2,147,483,647. For example: 10. Read-only.
            ## @param value Value to set for the majorVersionNumber property.
            ## @return a void
            ## 
            def major_version_number=(value)
                @major_version_number = value
            end
            ## 
            ## Gets the minorVersionNumber property value. The minor version of the product release, Allowed range is 0 - 2,147,483,647. For example: 0. Read-only.
            ## @return a integer
            ## 
            def minor_version_number
                return @minor_version_number
            end
            ## 
            ## Sets the minorVersionNumber property value. The minor version of the product release, Allowed range is 0 - 2,147,483,647. For example: 0. Read-only.
            ## @param value Value to set for the minorVersionNumber property.
            ## @return a void
            ## 
            def minor_version_number=(value)
                @minor_version_number = value
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
                writer.write_number_value("buildNumber", @build_number)
                writer.write_number_value("majorVersionNumber", @major_version_number)
                writer.write_number_value("minorVersionNumber", @minor_version_number)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("updateBuildRevision", @update_build_revision)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the updateBuildRevision property value. The update build revision number of the product revision for the corresponding patch, Allowed range is 0 - 2,147,483,647. For example: 4780. Read-only.
            ## @return a integer
            ## 
            def update_build_revision
                return @update_build_revision
            end
            ## 
            ## Sets the updateBuildRevision property value. The update build revision number of the product revision for the corresponding patch, Allowed range is 0 - 2,147,483,647. For example: 4780. Read-only.
            ## @param value Value to set for the updateBuildRevision property.
            ## @return a void
            ## 
            def update_build_revision=(value)
                @update_build_revision = value
            end
        end
    end
end
