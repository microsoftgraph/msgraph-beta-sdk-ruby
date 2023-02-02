require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents a user rights setting.
    class DeviceManagementUserRightsSetting
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Representing a collection of local users or groups which will be set on device if the state of this setting is Allowed. This collection can contain a maximum of 500 elements.
        @local_users_or_groups
        ## 
        # The OdataType property
        @odata_type
        ## 
        # State Management Setting.
        @state
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new deviceManagementUserRightsSetting and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_user_rights_setting
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementUserRightsSetting.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "localUsersOrGroups" => lambda {|n| @local_users_or_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsLocalUserOrGroup.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
            }
        end
        ## 
        ## Gets the localUsersOrGroups property value. Representing a collection of local users or groups which will be set on device if the state of this setting is Allowed. This collection can contain a maximum of 500 elements.
        ## @return a device_management_user_rights_local_user_or_group
        ## 
        def local_users_or_groups
            return @local_users_or_groups
        end
        ## 
        ## Sets the localUsersOrGroups property value. Representing a collection of local users or groups which will be set on device if the state of this setting is Allowed. This collection can contain a maximum of 500 elements.
        ## @param value Value to set for the local_users_or_groups property.
        ## @return a void
        ## 
        def local_users_or_groups=(value)
            @local_users_or_groups = value
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_collection_of_object_values("localUsersOrGroups", @local_users_or_groups)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("state", @state)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the state property value. State Management Setting.
        ## @return a state_management_setting
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. State Management Setting.
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
    end
end
