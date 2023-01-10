require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The importedDeviceIdentity resource represents a unique hardware identity of a device that has been pre-staged for pre-enrollment configuration.
    class ImportedDeviceIdentity < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Created Date Time of the device
        @created_date_time
        ## 
        # The description of the device
        @description
        ## 
        # The enrollmentState property
        @enrollment_state
        ## 
        # Imported Device Identifier
        @imported_device_identifier
        ## 
        # The importedDeviceIdentityType property
        @imported_device_identity_type
        ## 
        # Last Contacted Date Time of the device
        @last_contacted_date_time
        ## 
        # Last Modified DateTime of the description
        @last_modified_date_time
        ## 
        # The platform property
        @platform
        ## 
        ## Instantiates a new importedDeviceIdentity and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. Created Date Time of the device
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. Created Date Time of the device
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a imported_device_identity
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.importedDeviceIdentityResult"
                        return ImportedDeviceIdentityResult.new
                end
            end
            return ImportedDeviceIdentity.new
        end
        ## 
        ## Gets the description property value. The description of the device
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description of the device
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the enrollmentState property value. The enrollmentState property
        ## @return a enrollment_state
        ## 
        def enrollment_state
            return @enrollment_state
        end
        ## 
        ## Sets the enrollmentState property value. The enrollmentState property
        ## @param value Value to set for the enrollmentState property.
        ## @return a void
        ## 
        def enrollment_state=(value)
            @enrollment_state = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "enrollmentState" => lambda {|n| @enrollment_state = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentState) },
                "importedDeviceIdentifier" => lambda {|n| @imported_device_identifier = n.get_string_value() },
                "importedDeviceIdentityType" => lambda {|n| @imported_device_identity_type = n.get_enum_value(MicrosoftGraphBeta::Models::ImportedDeviceIdentityType) },
                "lastContactedDateTime" => lambda {|n| @last_contacted_date_time = n.get_date_time_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::Platform) },
            })
        end
        ## 
        ## Gets the importedDeviceIdentifier property value. Imported Device Identifier
        ## @return a string
        ## 
        def imported_device_identifier
            return @imported_device_identifier
        end
        ## 
        ## Sets the importedDeviceIdentifier property value. Imported Device Identifier
        ## @param value Value to set for the importedDeviceIdentifier property.
        ## @return a void
        ## 
        def imported_device_identifier=(value)
            @imported_device_identifier = value
        end
        ## 
        ## Gets the importedDeviceIdentityType property value. The importedDeviceIdentityType property
        ## @return a imported_device_identity_type
        ## 
        def imported_device_identity_type
            return @imported_device_identity_type
        end
        ## 
        ## Sets the importedDeviceIdentityType property value. The importedDeviceIdentityType property
        ## @param value Value to set for the importedDeviceIdentityType property.
        ## @return a void
        ## 
        def imported_device_identity_type=(value)
            @imported_device_identity_type = value
        end
        ## 
        ## Gets the lastContactedDateTime property value. Last Contacted Date Time of the device
        ## @return a date_time
        ## 
        def last_contacted_date_time
            return @last_contacted_date_time
        end
        ## 
        ## Sets the lastContactedDateTime property value. Last Contacted Date Time of the device
        ## @param value Value to set for the lastContactedDateTime property.
        ## @return a void
        ## 
        def last_contacted_date_time=(value)
            @last_contacted_date_time = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. Last Modified DateTime of the description
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. Last Modified DateTime of the description
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the platform property value. The platform property
        ## @return a platform
        ## 
        def platform
            return @platform
        end
        ## 
        ## Sets the platform property value. The platform property
        ## @param value Value to set for the platform property.
        ## @return a void
        ## 
        def platform=(value)
            @platform = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("description", @description)
            writer.write_enum_value("enrollmentState", @enrollment_state)
            writer.write_string_value("importedDeviceIdentifier", @imported_device_identifier)
            writer.write_enum_value("importedDeviceIdentityType", @imported_device_identity_type)
            writer.write_date_time_value("lastContactedDateTime", @last_contacted_date_time)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_enum_value("platform", @platform)
        end
    end
end
