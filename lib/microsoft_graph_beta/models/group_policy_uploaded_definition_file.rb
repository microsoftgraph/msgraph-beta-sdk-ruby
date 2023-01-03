require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class GroupPolicyUploadedDefinitionFile < MicrosoftGraphBeta::Models::GroupPolicyDefinitionFile
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The contents of the uploaded ADMX file.
        @content
        ## 
        # The default language of the uploaded ADMX file.
        @default_language_code
        ## 
        # The list of operations on the uploaded ADMX file.
        @group_policy_operations
        ## 
        # The list of ADML files associated with the uploaded ADMX file.
        @group_policy_uploaded_language_files
        ## 
        # Type of Group Policy uploaded definition file status.
        @status
        ## 
        # The uploaded time of the uploaded ADMX file.
        @upload_date_time
        ## 
        ## Instantiates a new GroupPolicyUploadedDefinitionFile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.groupPolicyUploadedDefinitionFile"
        end
        ## 
        ## Gets the content property value. The contents of the uploaded ADMX file.
        ## @return a binary
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. The contents of the uploaded ADMX file.
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_uploaded_definition_file
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GroupPolicyUploadedDefinitionFile.new
        end
        ## 
        ## Gets the defaultLanguageCode property value. The default language of the uploaded ADMX file.
        ## @return a string
        ## 
        def default_language_code
            return @default_language_code
        end
        ## 
        ## Sets the defaultLanguageCode property value. The default language of the uploaded ADMX file.
        ## @param value Value to set for the defaultLanguageCode property.
        ## @return a void
        ## 
        def default_language_code=(value)
            @default_language_code = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "content" => lambda {|n| @content = n.get_string_value() },
                "defaultLanguageCode" => lambda {|n| @default_language_code = n.get_string_value() },
                "groupPolicyOperations" => lambda {|n| @group_policy_operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyOperation.create_from_discriminator_value(pn) }) },
                "groupPolicyUploadedLanguageFiles" => lambda {|n| @group_policy_uploaded_language_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyUploadedLanguageFile.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyUploadedDefinitionFileStatus) },
                "uploadDateTime" => lambda {|n| @upload_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the groupPolicyOperations property value. The list of operations on the uploaded ADMX file.
        ## @return a group_policy_operation
        ## 
        def group_policy_operations
            return @group_policy_operations
        end
        ## 
        ## Sets the groupPolicyOperations property value. The list of operations on the uploaded ADMX file.
        ## @param value Value to set for the groupPolicyOperations property.
        ## @return a void
        ## 
        def group_policy_operations=(value)
            @group_policy_operations = value
        end
        ## 
        ## Gets the groupPolicyUploadedLanguageFiles property value. The list of ADML files associated with the uploaded ADMX file.
        ## @return a group_policy_uploaded_language_file
        ## 
        def group_policy_uploaded_language_files
            return @group_policy_uploaded_language_files
        end
        ## 
        ## Sets the groupPolicyUploadedLanguageFiles property value. The list of ADML files associated with the uploaded ADMX file.
        ## @param value Value to set for the groupPolicyUploadedLanguageFiles property.
        ## @return a void
        ## 
        def group_policy_uploaded_language_files=(value)
            @group_policy_uploaded_language_files = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("content", @content)
            writer.write_string_value("defaultLanguageCode", @default_language_code)
            writer.write_collection_of_object_values("groupPolicyOperations", @group_policy_operations)
            writer.write_collection_of_object_values("groupPolicyUploadedLanguageFiles", @group_policy_uploaded_language_files)
            writer.write_enum_value("status", @status)
            writer.write_date_time_value("uploadDateTime", @upload_date_time)
        end
        ## 
        ## Gets the status property value. Type of Group Policy uploaded definition file status.
        ## @return a group_policy_uploaded_definition_file_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Type of Group Policy uploaded definition file status.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the uploadDateTime property value. The uploaded time of the uploaded ADMX file.
        ## @return a date_time
        ## 
        def upload_date_time
            return @upload_date_time
        end
        ## 
        ## Sets the uploadDateTime property value. The uploaded time of the uploaded ADMX file.
        ## @param value Value to set for the uploadDateTime property.
        ## @return a void
        ## 
        def upload_date_time=(value)
            @upload_date_time = value
        end
    end
end
