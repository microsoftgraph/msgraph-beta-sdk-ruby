require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityFilePlanDescriptorTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the user who created the filePlanDescriptorTemplate column.
            @created_by
            ## 
            # Represents the date and time in which the filePlanDescriptorTemplate is created.
            @created_date_time
            ## 
            # Unique string that defines a filePlanDescriptorTemplate name.
            @display_name
            ## 
            ## Instantiates a new securityFilePlanDescriptorTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Represents the user who created the filePlanDescriptorTemplate column.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Represents the user who created the filePlanDescriptorTemplate column.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Represents the date and time in which the filePlanDescriptorTemplate is created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Represents the date and time in which the filePlanDescriptorTemplate is created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_file_plan_descriptor_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.authorityTemplate"
                            return SecurityAuthorityTemplate.new
                        when "#microsoft.graph.security.categoryTemplate"
                            return SecurityCategoryTemplate.new
                        when "#microsoft.graph.security.citationTemplate"
                            return SecurityCitationTemplate.new
                        when "#microsoft.graph.security.departmentTemplate"
                            return SecurityDepartmentTemplate.new
                        when "#microsoft.graph.security.filePlanReferenceTemplate"
                            return SecurityFilePlanReferenceTemplate.new
                        when "#microsoft.graph.security.subCategoryTemplate"
                            return SecuritySubCategoryTemplate.new
                    end
                end
                return SecurityFilePlanDescriptorTemplate.new
            end
            ## 
            ## Gets the displayName property value. Unique string that defines a filePlanDescriptorTemplate name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Unique string that defines a filePlanDescriptorTemplate name.
            ## @param value Value to set for the displayName property.
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
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
