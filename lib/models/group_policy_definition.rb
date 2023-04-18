require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The entity describes all of the information about a single group policy.
        class GroupPolicyDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The group policy category associated with the definition.
            @category
            ## 
            # The localized full category path for the policy.
            @category_path
            ## 
            # Group Policy Definition Class Type.
            @class_type
            ## 
            # The group policy file associated with the definition.
            @definition_file
            ## 
            # The localized policy name.
            @display_name
            ## 
            # The localized explanation or help text associated with the policy. The default value is empty.
            @explain_text
            ## 
            # The category id of the parent category
            @group_policy_category_id
            ## 
            # Signifies whether or not there are related definitions to this definition
            @has_related_definitions
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # Minimum required CSP version for device configuration in this definition
            @min_device_csp_version
            ## 
            # Minimum required CSP version for user configuration in this definition
            @min_user_csp_version
            ## 
            # Definition of the next version of this definition
            @next_version_definition
            ## 
            # Type of Group Policy File or Definition.
            @policy_type
            ## 
            # The group policy presentations associated with the definition.
            @presentations
            ## 
            # Definition of the previous version of this definition
            @previous_version_definition
            ## 
            # Localized string used to specify what operating system or application version is affected by the policy.
            @supported_on
            ## 
            # Setting definition version
            @version
            ## 
            ## Gets the category property value. The group policy category associated with the definition.
            ## @return a group_policy_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The group policy category associated with the definition.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Gets the categoryPath property value. The localized full category path for the policy.
            ## @return a string
            ## 
            def category_path
                return @category_path
            end
            ## 
            ## Sets the categoryPath property value. The localized full category path for the policy.
            ## @param value Value to set for the category_path property.
            ## @return a void
            ## 
            def category_path=(value)
                @category_path = value
            end
            ## 
            ## Gets the classType property value. Group Policy Definition Class Type.
            ## @return a group_policy_definition_class_type
            ## 
            def class_type
                return @class_type
            end
            ## 
            ## Sets the classType property value. Group Policy Definition Class Type.
            ## @param value Value to set for the class_type property.
            ## @return a void
            ## 
            def class_type=(value)
                @class_type = value
            end
            ## 
            ## Instantiates a new groupPolicyDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyDefinition.new
            end
            ## 
            ## Gets the definitionFile property value. The group policy file associated with the definition.
            ## @return a group_policy_definition_file
            ## 
            def definition_file
                return @definition_file
            end
            ## 
            ## Sets the definitionFile property value. The group policy file associated with the definition.
            ## @param value Value to set for the definition_file property.
            ## @return a void
            ## 
            def definition_file=(value)
                @definition_file = value
            end
            ## 
            ## Gets the displayName property value. The localized policy name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The localized policy name.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the explainText property value. The localized explanation or help text associated with the policy. The default value is empty.
            ## @return a string
            ## 
            def explain_text
                return @explain_text
            end
            ## 
            ## Sets the explainText property value. The localized explanation or help text associated with the policy. The default value is empty.
            ## @param value Value to set for the explain_text property.
            ## @return a void
            ## 
            def explain_text=(value)
                @explain_text = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "category" => lambda {|n| @category = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyCategory.create_from_discriminator_value(pn) }) },
                    "categoryPath" => lambda {|n| @category_path = n.get_string_value() },
                    "classType" => lambda {|n| @class_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyDefinitionClassType) },
                    "definitionFile" => lambda {|n| @definition_file = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionFile.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "explainText" => lambda {|n| @explain_text = n.get_string_value() },
                    "groupPolicyCategoryId" => lambda {|n| @group_policy_category_id = n.get_guid_value() },
                    "hasRelatedDefinitions" => lambda {|n| @has_related_definitions = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "minDeviceCspVersion" => lambda {|n| @min_device_csp_version = n.get_string_value() },
                    "minUserCspVersion" => lambda {|n| @min_user_csp_version = n.get_string_value() },
                    "nextVersionDefinition" => lambda {|n| @next_version_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                    "policyType" => lambda {|n| @policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyType) },
                    "presentations" => lambda {|n| @presentations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyPresentation.create_from_discriminator_value(pn) }) },
                    "previousVersionDefinition" => lambda {|n| @previous_version_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                    "supportedOn" => lambda {|n| @supported_on = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupPolicyCategoryId property value. The category id of the parent category
            ## @return a guid
            ## 
            def group_policy_category_id
                return @group_policy_category_id
            end
            ## 
            ## Sets the groupPolicyCategoryId property value. The category id of the parent category
            ## @param value Value to set for the group_policy_category_id property.
            ## @return a void
            ## 
            def group_policy_category_id=(value)
                @group_policy_category_id = value
            end
            ## 
            ## Gets the hasRelatedDefinitions property value. Signifies whether or not there are related definitions to this definition
            ## @return a boolean
            ## 
            def has_related_definitions
                return @has_related_definitions
            end
            ## 
            ## Sets the hasRelatedDefinitions property value. Signifies whether or not there are related definitions to this definition
            ## @param value Value to set for the has_related_definitions property.
            ## @return a void
            ## 
            def has_related_definitions=(value)
                @has_related_definitions = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the entity was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the minDeviceCspVersion property value. Minimum required CSP version for device configuration in this definition
            ## @return a string
            ## 
            def min_device_csp_version
                return @min_device_csp_version
            end
            ## 
            ## Sets the minDeviceCspVersion property value. Minimum required CSP version for device configuration in this definition
            ## @param value Value to set for the min_device_csp_version property.
            ## @return a void
            ## 
            def min_device_csp_version=(value)
                @min_device_csp_version = value
            end
            ## 
            ## Gets the minUserCspVersion property value. Minimum required CSP version for user configuration in this definition
            ## @return a string
            ## 
            def min_user_csp_version
                return @min_user_csp_version
            end
            ## 
            ## Sets the minUserCspVersion property value. Minimum required CSP version for user configuration in this definition
            ## @param value Value to set for the min_user_csp_version property.
            ## @return a void
            ## 
            def min_user_csp_version=(value)
                @min_user_csp_version = value
            end
            ## 
            ## Gets the nextVersionDefinition property value. Definition of the next version of this definition
            ## @return a group_policy_definition
            ## 
            def next_version_definition
                return @next_version_definition
            end
            ## 
            ## Sets the nextVersionDefinition property value. Definition of the next version of this definition
            ## @param value Value to set for the next_version_definition property.
            ## @return a void
            ## 
            def next_version_definition=(value)
                @next_version_definition = value
            end
            ## 
            ## Gets the policyType property value. Type of Group Policy File or Definition.
            ## @return a group_policy_type
            ## 
            def policy_type
                return @policy_type
            end
            ## 
            ## Sets the policyType property value. Type of Group Policy File or Definition.
            ## @param value Value to set for the policy_type property.
            ## @return a void
            ## 
            def policy_type=(value)
                @policy_type = value
            end
            ## 
            ## Gets the presentations property value. The group policy presentations associated with the definition.
            ## @return a group_policy_presentation
            ## 
            def presentations
                return @presentations
            end
            ## 
            ## Sets the presentations property value. The group policy presentations associated with the definition.
            ## @param value Value to set for the presentations property.
            ## @return a void
            ## 
            def presentations=(value)
                @presentations = value
            end
            ## 
            ## Gets the previousVersionDefinition property value. Definition of the previous version of this definition
            ## @return a group_policy_definition
            ## 
            def previous_version_definition
                return @previous_version_definition
            end
            ## 
            ## Sets the previousVersionDefinition property value. Definition of the previous version of this definition
            ## @param value Value to set for the previous_version_definition property.
            ## @return a void
            ## 
            def previous_version_definition=(value)
                @previous_version_definition = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("category", @category)
                writer.write_string_value("categoryPath", @category_path)
                writer.write_enum_value("classType", @class_type)
                writer.write_object_value("definitionFile", @definition_file)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("explainText", @explain_text)
                writer.write_guid_value("groupPolicyCategoryId", @group_policy_category_id)
                writer.write_boolean_value("hasRelatedDefinitions", @has_related_definitions)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("minDeviceCspVersion", @min_device_csp_version)
                writer.write_string_value("minUserCspVersion", @min_user_csp_version)
                writer.write_object_value("nextVersionDefinition", @next_version_definition)
                writer.write_enum_value("policyType", @policy_type)
                writer.write_collection_of_object_values("presentations", @presentations)
                writer.write_object_value("previousVersionDefinition", @previous_version_definition)
                writer.write_string_value("supportedOn", @supported_on)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the supportedOn property value. Localized string used to specify what operating system or application version is affected by the policy.
            ## @return a string
            ## 
            def supported_on
                return @supported_on
            end
            ## 
            ## Sets the supportedOn property value. Localized string used to specify what operating system or application version is affected by the policy.
            ## @param value Value to set for the supported_on property.
            ## @return a void
            ## 
            def supported_on=(value)
                @supported_on = value
            end
            ## 
            ## Gets the version property value. Setting definition version
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Setting definition version
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
