require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The group policy configuration entity contains the configured values for one or more group policy definitions.
        class GroupPolicyConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignments for the configuration.
            @assignments
            ## 
            # The date and time the object was created.
            @created_date_time
            ## 
            # The list of enabled or disabled group policy definition values for the configuration.
            @definition_values
            ## 
            # User provided description for the resource object.
            @description
            ## 
            # User provided name for the resource object.
            @display_name
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # Group Policy Configuration Ingestion Type
            @policy_configuration_ingestion_type
            ## 
            # The list of scope tags for the configuration.
            @role_scope_tag_ids
            ## 
            ## Gets the assignments property value. The list of group assignments for the configuration.
            ## @return a group_policy_configuration_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments for the configuration.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new groupPolicyConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the object was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the object was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupPolicyConfiguration.new
            end
            ## 
            ## Gets the definitionValues property value. The list of enabled or disabled group policy definition values for the configuration.
            ## @return a group_policy_definition_value
            ## 
            def definition_values
                return @definition_values
            end
            ## 
            ## Sets the definitionValues property value. The list of enabled or disabled group policy definition values for the configuration.
            ## @param value Value to set for the definition_values property.
            ## @return a void
            ## 
            def definition_values=(value)
                @definition_values = value
            end
            ## 
            ## Gets the description property value. User provided description for the resource object.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. User provided description for the resource object.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. User provided name for the resource object.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. User provided name for the resource object.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyConfigurationAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "definitionValues" => lambda {|n| @definition_values = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionValue.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "policyConfigurationIngestionType" => lambda {|n| @policy_configuration_ingestion_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyConfigurationIngestionType) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                })
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
            ## Gets the policyConfigurationIngestionType property value. Group Policy Configuration Ingestion Type
            ## @return a group_policy_configuration_ingestion_type
            ## 
            def policy_configuration_ingestion_type
                return @policy_configuration_ingestion_type
            end
            ## 
            ## Sets the policyConfigurationIngestionType property value. Group Policy Configuration Ingestion Type
            ## @param value Value to set for the policy_configuration_ingestion_type property.
            ## @return a void
            ## 
            def policy_configuration_ingestion_type=(value)
                @policy_configuration_ingestion_type = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. The list of scope tags for the configuration.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. The list of scope tags for the configuration.
            ## @param value Value to set for the role_scope_tag_ids property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("definitionValues", @definition_values)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("policyConfigurationIngestionType", @policy_configuration_ingestion_type)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            end
        end
    end
end
