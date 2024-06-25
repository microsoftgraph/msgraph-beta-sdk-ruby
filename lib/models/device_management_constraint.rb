require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base entity for a constraint
        class DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
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
            ## Instantiates a new DeviceManagementConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementEnumConstraint"
                            return DeviceManagementEnumConstraint.new
                        when "#microsoft.graph.deviceManagementIntentSettingSecretConstraint"
                            return DeviceManagementIntentSettingSecretConstraint.new
                        when "#microsoft.graph.deviceManagementSettingAbstractImplementationConstraint"
                            return DeviceManagementSettingAbstractImplementationConstraint.new
                        when "#microsoft.graph.deviceManagementSettingAppConstraint"
                            return DeviceManagementSettingAppConstraint.new
                        when "#microsoft.graph.deviceManagementSettingBooleanConstraint"
                            return DeviceManagementSettingBooleanConstraint.new
                        when "#microsoft.graph.deviceManagementSettingCollectionConstraint"
                            return DeviceManagementSettingCollectionConstraint.new
                        when "#microsoft.graph.deviceManagementSettingEnrollmentTypeConstraint"
                            return DeviceManagementSettingEnrollmentTypeConstraint.new
                        when "#microsoft.graph.deviceManagementSettingFileConstraint"
                            return DeviceManagementSettingFileConstraint.new
                        when "#microsoft.graph.deviceManagementSettingIntegerConstraint"
                            return DeviceManagementSettingIntegerConstraint.new
                        when "#microsoft.graph.deviceManagementSettingProfileConstraint"
                            return DeviceManagementSettingProfileConstraint.new
                        when "#microsoft.graph.deviceManagementSettingRegexConstraint"
                            return DeviceManagementSettingRegexConstraint.new
                        when "#microsoft.graph.deviceManagementSettingRequiredConstraint"
                            return DeviceManagementSettingRequiredConstraint.new
                        when "#microsoft.graph.deviceManagementSettingSddlConstraint"
                            return DeviceManagementSettingSddlConstraint.new
                        when "#microsoft.graph.deviceManagementSettingStringLengthConstraint"
                            return DeviceManagementSettingStringLengthConstraint.new
                        when "#microsoft.graph.deviceManagementSettingXmlConstraint"
                            return DeviceManagementSettingXmlConstraint.new
                    end
                end
                return DeviceManagementConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
