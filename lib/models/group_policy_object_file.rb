require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The Group Policy Object file uploaded by admin.
    class GroupPolicyObjectFile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Group Policy Object file content.
        @content
        ## 
        # The date and time at which the GroupPolicy was first uploaded.
        @created_date_time
        ## 
        # The Group Policy Object GUID from GPO Xml content
        @group_policy_object_id
        ## 
        # The date and time at which the GroupPolicyObjectFile was last modified.
        @last_modified_date_time
        ## 
        # The distinguished name of the OU.
        @ou_distinguished_name
        ## 
        # The list of scope tags for the configuration.
        @role_scope_tag_ids
        ## 
        ## Instantiates a new groupPolicyObjectFile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the content property value. The Group Policy Object file content.
        ## @return a string
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. The Group Policy Object file content.
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Gets the createdDateTime property value. The date and time at which the GroupPolicy was first uploaded.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time at which the GroupPolicy was first uploaded.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_object_file
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GroupPolicyObjectFile.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "content" => lambda {|n| @content = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "groupPolicyObjectId" => lambda {|n| @group_policy_object_id = n.get_guid_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "ouDistinguishedName" => lambda {|n| @ou_distinguished_name = n.get_string_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
            })
        end
        ## 
        ## Gets the groupPolicyObjectId property value. The Group Policy Object GUID from GPO Xml content
        ## @return a guid
        ## 
        def group_policy_object_id
            return @group_policy_object_id
        end
        ## 
        ## Sets the groupPolicyObjectId property value. The Group Policy Object GUID from GPO Xml content
        ## @param value Value to set for the groupPolicyObjectId property.
        ## @return a void
        ## 
        def group_policy_object_id=(value)
            @group_policy_object_id = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time at which the GroupPolicyObjectFile was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time at which the GroupPolicyObjectFile was last modified.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the ouDistinguishedName property value. The distinguished name of the OU.
        ## @return a string
        ## 
        def ou_distinguished_name
            return @ou_distinguished_name
        end
        ## 
        ## Sets the ouDistinguishedName property value. The distinguished name of the OU.
        ## @param value Value to set for the ouDistinguishedName property.
        ## @return a void
        ## 
        def ou_distinguished_name=(value)
            @ou_distinguished_name = value
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
            writer.write_string_value("content", @content)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_guid_value("groupPolicyObjectId", @group_policy_object_id)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("ouDistinguishedName", @ou_distinguished_name)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
        end
    end
end
