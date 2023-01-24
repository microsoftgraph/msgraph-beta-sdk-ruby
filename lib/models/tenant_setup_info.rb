require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TenantSetupInfo < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The defaultRolesSettings property
        @default_roles_settings
        ## 
        # The firstTimeSetup property
        @first_time_setup
        ## 
        # The relevantRolesSettings property
        @relevant_roles_settings
        ## 
        # The setupStatus property
        @setup_status
        ## 
        # The skipSetup property
        @skip_setup
        ## 
        # The userRolesActions property
        @user_roles_actions
        ## 
        ## Instantiates a new TenantSetupInfo and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a tenant_setup_info
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TenantSetupInfo.new
        end
        ## 
        ## Gets the defaultRolesSettings property value. The defaultRolesSettings property
        ## @return a privileged_role_settings
        ## 
        def default_roles_settings
            return @default_roles_settings
        end
        ## 
        ## Sets the defaultRolesSettings property value. The defaultRolesSettings property
        ## @param value Value to set for the defaultRolesSettings property.
        ## @return a void
        ## 
        def default_roles_settings=(value)
            @default_roles_settings = value
        end
        ## 
        ## Gets the firstTimeSetup property value. The firstTimeSetup property
        ## @return a boolean
        ## 
        def first_time_setup
            return @first_time_setup
        end
        ## 
        ## Sets the firstTimeSetup property value. The firstTimeSetup property
        ## @param value Value to set for the firstTimeSetup property.
        ## @return a void
        ## 
        def first_time_setup=(value)
            @first_time_setup = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "defaultRolesSettings" => lambda {|n| @default_roles_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedRoleSettings.create_from_discriminator_value(pn) }) },
                "firstTimeSetup" => lambda {|n| @first_time_setup = n.get_boolean_value() },
                "relevantRolesSettings" => lambda {|n| @relevant_roles_settings = n.get_collection_of_primitive_values(String) },
                "setupStatus" => lambda {|n| @setup_status = n.get_enum_value(MicrosoftGraphBeta::Models::SetupStatus) },
                "skipSetup" => lambda {|n| @skip_setup = n.get_boolean_value() },
                "userRolesActions" => lambda {|n| @user_roles_actions = n.get_string_value() },
            })
        end
        ## 
        ## Gets the relevantRolesSettings property value. The relevantRolesSettings property
        ## @return a string
        ## 
        def relevant_roles_settings
            return @relevant_roles_settings
        end
        ## 
        ## Sets the relevantRolesSettings property value. The relevantRolesSettings property
        ## @param value Value to set for the relevantRolesSettings property.
        ## @return a void
        ## 
        def relevant_roles_settings=(value)
            @relevant_roles_settings = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("defaultRolesSettings", @default_roles_settings)
            writer.write_boolean_value("firstTimeSetup", @first_time_setup)
            writer.write_collection_of_primitive_values("relevantRolesSettings", @relevant_roles_settings)
            writer.write_enum_value("setupStatus", @setup_status)
            writer.write_boolean_value("skipSetup", @skip_setup)
            writer.write_string_value("userRolesActions", @user_roles_actions)
        end
        ## 
        ## Gets the setupStatus property value. The setupStatus property
        ## @return a setup_status
        ## 
        def setup_status
            return @setup_status
        end
        ## 
        ## Sets the setupStatus property value. The setupStatus property
        ## @param value Value to set for the setupStatus property.
        ## @return a void
        ## 
        def setup_status=(value)
            @setup_status = value
        end
        ## 
        ## Gets the skipSetup property value. The skipSetup property
        ## @return a boolean
        ## 
        def skip_setup
            return @skip_setup
        end
        ## 
        ## Sets the skipSetup property value. The skipSetup property
        ## @param value Value to set for the skipSetup property.
        ## @return a void
        ## 
        def skip_setup=(value)
            @skip_setup = value
        end
        ## 
        ## Gets the userRolesActions property value. The userRolesActions property
        ## @return a string
        ## 
        def user_roles_actions
            return @user_roles_actions
        end
        ## 
        ## Sets the userRolesActions property value. The userRolesActions property
        ## @param value Value to set for the userRolesActions property.
        ## @return a void
        ## 
        def user_roles_actions=(value)
            @user_roles_actions = value
        end
    end
end
