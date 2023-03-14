require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GroupPolicyDefinitionFile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The group policy definitions associated with the file.
            @definitions
            ## 
            # The localized description of the policy settings in the ADMX file. The default value is empty.
            @description
            ## 
            # The localized friendly name of the ADMX file.
            @display_name
            ## 
            # The file name of the ADMX file without the path. For example: edge.admx
            @file_name
            ## 
            # The supported language codes for the ADMX file.
            @language_codes
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # Type of Group Policy File or Definition.
            @policy_type
            ## 
            # The revision version associated with the file.
            @revision
            ## 
            # Specifies the URI used to identify the namespace within the ADMX file.
            @target_namespace
            ## 
            # Specifies the logical name that refers to the namespace within the ADMX file.
            @target_prefix
            ## 
            ## Instantiates a new groupPolicyDefinitionFile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a group_policy_definition_file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.groupPolicyUploadedDefinitionFile"
                            return GroupPolicyUploadedDefinitionFile.new
                    end
                end
                return GroupPolicyDefinitionFile.new
            end
            ## 
            ## Gets the definitions property value. The group policy definitions associated with the file.
            ## @return a group_policy_definition
            ## 
            def definitions
                return @definitions
            end
            ## 
            ## Sets the definitions property value. The group policy definitions associated with the file.
            ## @param value Value to set for the definitions property.
            ## @return a void
            ## 
            def definitions=(value)
                @definitions = value
            end
            ## 
            ## Gets the description property value. The localized description of the policy settings in the ADMX file. The default value is empty.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The localized description of the policy settings in the ADMX file. The default value is empty.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The localized friendly name of the ADMX file.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The localized friendly name of the ADMX file.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fileName property value. The file name of the ADMX file without the path. For example: edge.admx
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The file name of the ADMX file without the path. For example: edge.admx
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "definitions" => lambda {|n| @definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "languageCodes" => lambda {|n| @language_codes = n.get_collection_of_primitive_values(String) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "policyType" => lambda {|n| @policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyType) },
                    "revision" => lambda {|n| @revision = n.get_string_value() },
                    "targetNamespace" => lambda {|n| @target_namespace = n.get_string_value() },
                    "targetPrefix" => lambda {|n| @target_prefix = n.get_string_value() },
                })
            end
            ## 
            ## Gets the languageCodes property value. The supported language codes for the ADMX file.
            ## @return a string
            ## 
            def language_codes
                return @language_codes
            end
            ## 
            ## Sets the languageCodes property value. The supported language codes for the ADMX file.
            ## @param value Value to set for the language_codes property.
            ## @return a void
            ## 
            def language_codes=(value)
                @language_codes = value
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
            ## Gets the revision property value. The revision version associated with the file.
            ## @return a string
            ## 
            def revision
                return @revision
            end
            ## 
            ## Sets the revision property value. The revision version associated with the file.
            ## @param value Value to set for the revision property.
            ## @return a void
            ## 
            def revision=(value)
                @revision = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("definitions", @definitions)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("fileName", @file_name)
                writer.write_collection_of_primitive_values("languageCodes", @language_codes)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("policyType", @policy_type)
                writer.write_string_value("revision", @revision)
                writer.write_string_value("targetNamespace", @target_namespace)
                writer.write_string_value("targetPrefix", @target_prefix)
            end
            ## 
            ## Gets the targetNamespace property value. Specifies the URI used to identify the namespace within the ADMX file.
            ## @return a string
            ## 
            def target_namespace
                return @target_namespace
            end
            ## 
            ## Sets the targetNamespace property value. Specifies the URI used to identify the namespace within the ADMX file.
            ## @param value Value to set for the target_namespace property.
            ## @return a void
            ## 
            def target_namespace=(value)
                @target_namespace = value
            end
            ## 
            ## Gets the targetPrefix property value. Specifies the logical name that refers to the namespace within the ADMX file.
            ## @return a string
            ## 
            def target_prefix
                return @target_prefix
            end
            ## 
            ## Sets the targetPrefix property value. Specifies the logical name that refers to the namespace within the ADMX file.
            ## @param value Value to set for the target_prefix property.
            ## @return a void
            ## 
            def target_prefix=(value)
                @target_prefix = value
            end
        end
    end
end
