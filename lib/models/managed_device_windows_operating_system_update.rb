require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Updates for different Windows' versions are usually released on the Patch Tuesday or B-week  of each month. This complex type defines the Build-version and the release-date for a particular B-week update of the Windows' version.
        class ManagedDeviceWindowsOperatingSystemUpdate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the build version for associated windows update. Windows Operating System updates are usually released on the Patch Tuesday or B-week of each month. Read-only.
            @build_version
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the Month in which this B-week update was released. Read-only.
            @release_month
            ## 
            # Indicates the Year in which this B-week update was released. Read-only.
            @release_year
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
            ## Gets the buildVersion property value. Indicates the build version for associated windows update. Windows Operating System updates are usually released on the Patch Tuesday or B-week of each month. Read-only.
            ## @return a string
            ## 
            def build_version
                return @build_version
            end
            ## 
            ## Sets the buildVersion property value. Indicates the build version for associated windows update. Windows Operating System updates are usually released on the Patch Tuesday or B-week of each month. Read-only.
            ## @param value Value to set for the buildVersion property.
            ## @return a void
            ## 
            def build_version=(value)
                @build_version = value
            end
            ## 
            ## Instantiates a new ManagedDeviceWindowsOperatingSystemUpdate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_windows_operating_system_update
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceWindowsOperatingSystemUpdate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "buildVersion" => lambda {|n| @build_version = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "releaseMonth" => lambda {|n| @release_month = n.get_number_value() },
                    "releaseYear" => lambda {|n| @release_year = n.get_number_value() },
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
            ## Gets the releaseMonth property value. Indicates the Month in which this B-week update was released. Read-only.
            ## @return a integer
            ## 
            def release_month
                return @release_month
            end
            ## 
            ## Sets the releaseMonth property value. Indicates the Month in which this B-week update was released. Read-only.
            ## @param value Value to set for the releaseMonth property.
            ## @return a void
            ## 
            def release_month=(value)
                @release_month = value
            end
            ## 
            ## Gets the releaseYear property value. Indicates the Year in which this B-week update was released. Read-only.
            ## @return a integer
            ## 
            def release_year
                return @release_year
            end
            ## 
            ## Sets the releaseYear property value. Indicates the Year in which this B-week update was released. Read-only.
            ## @param value Value to set for the releaseYear property.
            ## @return a void
            ## 
            def release_year=(value)
                @release_year = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("buildVersion", @build_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("releaseMonth", @release_month)
                writer.write_number_value("releaseYear", @release_year)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
