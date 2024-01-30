require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The importedAppleDeviceIdentity resource represents the imported device identity of an Apple device .
        class ImportedAppleDeviceIdentity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Created Date Time of the device
            @created_date_time
            ## 
            # The description of the device
            @description
            ## 
            # The discoverySource property
            @discovery_source
            ## 
            # The enrollmentState property
            @enrollment_state
            ## 
            # Indicates if the device is deleted from Apple Business Manager
            @is_deleted
            ## 
            # Indicates if the Apple device is supervised.
            @is_supervised
            ## 
            # Last Contacted Date Time of the device
            @last_contacted_date_time
            ## 
            # The platform property
            @platform
            ## 
            # The time enrollment profile was assigned to the device
            @requested_enrollment_profile_assignment_date_time
            ## 
            # Enrollment profile Id admin intends to apply to the device during next enrollment
            @requested_enrollment_profile_id
            ## 
            # Device serial number
            @serial_number
            ## 
            ## Instantiates a new importedAppleDeviceIdentity and sets the default values.
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
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a imported_apple_device_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.importedAppleDeviceIdentityResult"
                            return ImportedAppleDeviceIdentityResult.new
                    end
                end
                return ImportedAppleDeviceIdentity.new
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
            ## Gets the discoverySource property value. The discoverySource property
            ## @return a discovery_source
            ## 
            def discovery_source
                return @discovery_source
            end
            ## 
            ## Sets the discoverySource property value. The discoverySource property
            ## @param value Value to set for the discoverySource property.
            ## @return a void
            ## 
            def discovery_source=(value)
                @discovery_source = value
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
                    "discoverySource" => lambda {|n| @discovery_source = n.get_enum_value(MicrosoftGraphBeta::Models::DiscoverySource) },
                    "enrollmentState" => lambda {|n| @enrollment_state = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentState) },
                    "isDeleted" => lambda {|n| @is_deleted = n.get_boolean_value() },
                    "isSupervised" => lambda {|n| @is_supervised = n.get_boolean_value() },
                    "lastContactedDateTime" => lambda {|n| @last_contacted_date_time = n.get_date_time_value() },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::Platform) },
                    "requestedEnrollmentProfileAssignmentDateTime" => lambda {|n| @requested_enrollment_profile_assignment_date_time = n.get_date_time_value() },
                    "requestedEnrollmentProfileId" => lambda {|n| @requested_enrollment_profile_id = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDeleted property value. Indicates if the device is deleted from Apple Business Manager
            ## @return a boolean
            ## 
            def is_deleted
                return @is_deleted
            end
            ## 
            ## Sets the isDeleted property value. Indicates if the device is deleted from Apple Business Manager
            ## @param value Value to set for the isDeleted property.
            ## @return a void
            ## 
            def is_deleted=(value)
                @is_deleted = value
            end
            ## 
            ## Gets the isSupervised property value. Indicates if the Apple device is supervised.
            ## @return a boolean
            ## 
            def is_supervised
                return @is_supervised
            end
            ## 
            ## Sets the isSupervised property value. Indicates if the Apple device is supervised.
            ## @param value Value to set for the isSupervised property.
            ## @return a void
            ## 
            def is_supervised=(value)
                @is_supervised = value
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
            ## Gets the requestedEnrollmentProfileAssignmentDateTime property value. The time enrollment profile was assigned to the device
            ## @return a date_time
            ## 
            def requested_enrollment_profile_assignment_date_time
                return @requested_enrollment_profile_assignment_date_time
            end
            ## 
            ## Sets the requestedEnrollmentProfileAssignmentDateTime property value. The time enrollment profile was assigned to the device
            ## @param value Value to set for the requestedEnrollmentProfileAssignmentDateTime property.
            ## @return a void
            ## 
            def requested_enrollment_profile_assignment_date_time=(value)
                @requested_enrollment_profile_assignment_date_time = value
            end
            ## 
            ## Gets the requestedEnrollmentProfileId property value. Enrollment profile Id admin intends to apply to the device during next enrollment
            ## @return a string
            ## 
            def requested_enrollment_profile_id
                return @requested_enrollment_profile_id
            end
            ## 
            ## Sets the requestedEnrollmentProfileId property value. Enrollment profile Id admin intends to apply to the device during next enrollment
            ## @param value Value to set for the requestedEnrollmentProfileId property.
            ## @return a void
            ## 
            def requested_enrollment_profile_id=(value)
                @requested_enrollment_profile_id = value
            end
            ## 
            ## Gets the serialNumber property value. Device serial number
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Device serial number
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
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
                writer.write_enum_value("discoverySource", @discovery_source)
                writer.write_enum_value("enrollmentState", @enrollment_state)
                writer.write_boolean_value("isDeleted", @is_deleted)
                writer.write_boolean_value("isSupervised", @is_supervised)
                writer.write_date_time_value("lastContactedDateTime", @last_contacted_date_time)
                writer.write_enum_value("platform", @platform)
                writer.write_date_time_value("requestedEnrollmentProfileAssignmentDateTime", @requested_enrollment_profile_assignment_date_time)
                writer.write_string_value("requestedEnrollmentProfileId", @requested_enrollment_profile_id)
                writer.write_string_value("serialNumber", @serial_number)
            end
        end
    end
end
