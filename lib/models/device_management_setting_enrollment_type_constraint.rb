require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementSettingEnrollmentTypeConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of enrollment types
            @enrollment_types
            ## 
            ## Instantiates a new DeviceManagementSettingEnrollmentTypeConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingEnrollmentTypeConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_enrollment_type_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingEnrollmentTypeConstraint.new
            end
            ## 
            ## Gets the enrollmentTypes property value. List of enrollment types
            ## @return a string
            ## 
            def enrollment_types
                return @enrollment_types
            end
            ## 
            ## Sets the enrollmentTypes property value. List of enrollment types
            ## @param value Value to set for the enrollment_types property.
            ## @return a void
            ## 
            def enrollment_types=(value)
                @enrollment_types = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enrollmentTypes" => lambda {|n| @enrollment_types = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("enrollmentTypes", @enrollment_types)
            end
        end
    end
end
