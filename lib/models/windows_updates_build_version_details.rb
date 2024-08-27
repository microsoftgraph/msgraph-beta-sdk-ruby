require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesBuildVersionDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The build number of the product release. Read-only.
            @build_number
            ## 
            # The major version of the product release. Read-only.
            @major_version
            ## 
            # The minor version of the product release. Read-only.
            @minor_version
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The update build revision number of the product revision. Read-only.
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
            ## Gets the buildNumber property value. The build number of the product release. Read-only.
            ## @return a integer
            ## 
            def build_number
                return @build_number
            end
            ## 
            ## Sets the buildNumber property value. The build number of the product release. Read-only.
            ## @param value Value to set for the buildNumber property.
            ## @return a void
            ## 
            def build_number=(value)
                @build_number = value
            end
            ## 
            ## Instantiates a new WindowsUpdatesBuildVersionDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_build_version_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesBuildVersionDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "buildNumber" => lambda {|n| @build_number = n.get_number_value() },
                    "majorVersion" => lambda {|n| @major_version = n.get_number_value() },
                    "minorVersion" => lambda {|n| @minor_version = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "updateBuildRevision" => lambda {|n| @update_build_revision = n.get_number_value() },
                }
            end
            ## 
            ## Gets the majorVersion property value. The major version of the product release. Read-only.
            ## @return a integer
            ## 
            def major_version
                return @major_version
            end
            ## 
            ## Sets the majorVersion property value. The major version of the product release. Read-only.
            ## @param value Value to set for the majorVersion property.
            ## @return a void
            ## 
            def major_version=(value)
                @major_version = value
            end
            ## 
            ## Gets the minorVersion property value. The minor version of the product release. Read-only.
            ## @return a integer
            ## 
            def minor_version
                return @minor_version
            end
            ## 
            ## Sets the minorVersion property value. The minor version of the product release. Read-only.
            ## @param value Value to set for the minorVersion property.
            ## @return a void
            ## 
            def minor_version=(value)
                @minor_version = value
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
                writer.write_number_value("majorVersion", @major_version)
                writer.write_number_value("minorVersion", @minor_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("updateBuildRevision", @update_build_revision)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the updateBuildRevision property value. The update build revision number of the product revision. Read-only.
            ## @return a integer
            ## 
            def update_build_revision
                return @update_build_revision
            end
            ## 
            ## Sets the updateBuildRevision property value. The update build revision number of the product revision. Read-only.
            ## @param value Value to set for the updateBuildRevision property.
            ## @return a void
            ## 
            def update_build_revision=(value)
                @update_build_revision = value
            end
        end
    end
end
