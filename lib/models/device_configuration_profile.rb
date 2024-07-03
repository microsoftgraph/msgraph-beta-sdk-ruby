require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The listing service profile entity contains the meta data of an Intune configuration profile 
        class DeviceConfigurationProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Account Id.
            @account_id
            ## 
            # Configuration Technologies for Settins Catalog Policies
            @configuration_technologies
            ## 
            # The date and time the object was created.
            @created_date_time
            ## 
            # The date and time the entity was last modified.
            @last_modified_date_time
            ## 
            # Platform Type
            @platform_type
            ## 
            # Profile name
            @profile_name
            ## 
            # Profile Type
            @profile_type
            ## 
            # The list of scope tags for the configuration.
            @role_scope_tag_ids
            ## 
            # TemplateId for Settings Catalog Policies
            @template_id
            ## 
            ## Gets the accountId property value. Account Id.
            ## @return a string
            ## 
            def account_id
                return @account_id
            end
            ## 
            ## Sets the accountId property value. Account Id.
            ## @param value Value to set for the accountId property.
            ## @return a void
            ## 
            def account_id=(value)
                @account_id = value
            end
            ## 
            ## Gets the configurationTechnologies property value. Configuration Technologies for Settins Catalog Policies
            ## @return a integer
            ## 
            def configuration_technologies
                return @configuration_technologies
            end
            ## 
            ## Sets the configurationTechnologies property value. Configuration Technologies for Settins Catalog Policies
            ## @param value Value to set for the configurationTechnologies property.
            ## @return a void
            ## 
            def configuration_technologies=(value)
                @configuration_technologies = value
            end
            ## 
            ## Instantiates a new DeviceConfigurationProfile and sets the default values.
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
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_configuration_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceConfigurationProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountId" => lambda {|n| @account_id = n.get_string_value() },
                    "configurationTechnologies" => lambda {|n| @configuration_technologies = n.get_number_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraphBeta::Models::PlatformType) },
                    "profileName" => lambda {|n| @profile_name = n.get_string_value() },
                    "profileType" => lambda {|n| @profile_type = n.get_enum_value(MicrosoftGraphBeta::Models::ProfileType) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
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
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the platformType property value. Platform Type
            ## @return a platform_type
            ## 
            def platform_type
                return @platform_type
            end
            ## 
            ## Sets the platformType property value. Platform Type
            ## @param value Value to set for the platformType property.
            ## @return a void
            ## 
            def platform_type=(value)
                @platform_type = value
            end
            ## 
            ## Gets the profileName property value. Profile name
            ## @return a string
            ## 
            def profile_name
                return @profile_name
            end
            ## 
            ## Sets the profileName property value. Profile name
            ## @param value Value to set for the profileName property.
            ## @return a void
            ## 
            def profile_name=(value)
                @profile_name = value
            end
            ## 
            ## Gets the profileType property value. Profile Type
            ## @return a profile_type
            ## 
            def profile_type
                return @profile_type
            end
            ## 
            ## Sets the profileType property value. Profile Type
            ## @param value Value to set for the profileType property.
            ## @return a void
            ## 
            def profile_type=(value)
                @profile_type = value
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
            ## @param value Value to set for the roleScopeTagIds property.
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
                writer.write_string_value("accountId", @account_id)
                writer.write_number_value("configurationTechnologies", @configuration_technologies)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("platformType", @platform_type)
                writer.write_string_value("profileName", @profile_name)
                writer.write_enum_value("profileType", @profile_type)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_string_value("templateId", @template_id)
            end
            ## 
            ## Gets the templateId property value. TemplateId for Settings Catalog Policies
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. TemplateId for Settings Catalog Policies
            ## @param value Value to set for the templateId property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
        end
    end
end
