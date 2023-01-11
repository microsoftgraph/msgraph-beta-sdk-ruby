require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    class ManagementTemplateStepVersion < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The acceptedFor property
        @accepted_for
        ## 
        # The contentMarkdown property
        @content_markdown
        ## 
        # The createdByUserId property
        @created_by_user_id
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The deployments property
        @deployments
        ## 
        # The lastActionByUserId property
        @last_action_by_user_id
        ## 
        # The lastActionDateTime property
        @last_action_date_time
        ## 
        # The name property
        @name
        ## 
        # The templateStep property
        @template_step
        ## 
        # The version property
        @version
        ## 
        # The versionInformation property
        @version_information
        ## 
        ## Gets the acceptedFor property value. The acceptedFor property
        ## @return a management_template_step
        ## 
        def accepted_for
            return @accepted_for
        end
        ## 
        ## Sets the acceptedFor property value. The acceptedFor property
        ## @param value Value to set for the acceptedFor property.
        ## @return a void
        ## 
        def accepted_for=(value)
            @accepted_for = value
        end
        ## 
        ## Instantiates a new managementTemplateStepVersion and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the contentMarkdown property value. The contentMarkdown property
        ## @return a string
        ## 
        def content_markdown
            return @content_markdown
        end
        ## 
        ## Sets the contentMarkdown property value. The contentMarkdown property
        ## @param value Value to set for the contentMarkdown property.
        ## @return a void
        ## 
        def content_markdown=(value)
            @content_markdown = value
        end
        ## 
        ## Gets the createdByUserId property value. The createdByUserId property
        ## @return a string
        ## 
        def created_by_user_id
            return @created_by_user_id
        end
        ## 
        ## Sets the createdByUserId property value. The createdByUserId property
        ## @param value Value to set for the createdByUserId property.
        ## @return a void
        ## 
        def created_by_user_id=(value)
            @created_by_user_id = value
        end
        ## 
        ## Gets the createdDateTime property value. The createdDateTime property
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The createdDateTime property
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a management_template_step_version
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagementTemplateStepVersion.new
        end
        ## 
        ## Gets the deployments property value. The deployments property
        ## @return a management_template_step_deployment
        ## 
        def deployments
            return @deployments
        end
        ## 
        ## Sets the deployments property value. The deployments property
        ## @param value Value to set for the deployments property.
        ## @return a void
        ## 
        def deployments=(value)
            @deployments = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "acceptedFor" => lambda {|n| @accepted_for = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagementTemplateStep.create_from_discriminator_value(pn) }) },
                "contentMarkdown" => lambda {|n| @content_markdown = n.get_string_value() },
                "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "deployments" => lambda {|n| @deployments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagementTemplateStepDeployment.create_from_discriminator_value(pn) }) },
                "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "templateStep" => lambda {|n| @template_step = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagementTemplateStep.create_from_discriminator_value(pn) }) },
                "version" => lambda {|n| @version = n.get_number_value() },
                "versionInformation" => lambda {|n| @version_information = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastActionByUserId property value. The lastActionByUserId property
        ## @return a string
        ## 
        def last_action_by_user_id
            return @last_action_by_user_id
        end
        ## 
        ## Sets the lastActionByUserId property value. The lastActionByUserId property
        ## @param value Value to set for the lastActionByUserId property.
        ## @return a void
        ## 
        def last_action_by_user_id=(value)
            @last_action_by_user_id = value
        end
        ## 
        ## Gets the lastActionDateTime property value. The lastActionDateTime property
        ## @return a date_time
        ## 
        def last_action_date_time
            return @last_action_date_time
        end
        ## 
        ## Sets the lastActionDateTime property value. The lastActionDateTime property
        ## @param value Value to set for the lastActionDateTime property.
        ## @return a void
        ## 
        def last_action_date_time=(value)
            @last_action_date_time = value
        end
        ## 
        ## Gets the name property value. The name property
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name property
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("acceptedFor", @accepted_for)
            writer.write_string_value("contentMarkdown", @content_markdown)
            writer.write_string_value("createdByUserId", @created_by_user_id)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_collection_of_object_values("deployments", @deployments)
            writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
            writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
            writer.write_string_value("name", @name)
            writer.write_object_value("templateStep", @template_step)
            writer.write_number_value("version", @version)
            writer.write_string_value("versionInformation", @version_information)
        end
        ## 
        ## Gets the templateStep property value. The templateStep property
        ## @return a management_template_step
        ## 
        def template_step
            return @template_step
        end
        ## 
        ## Sets the templateStep property value. The templateStep property
        ## @param value Value to set for the templateStep property.
        ## @return a void
        ## 
        def template_step=(value)
            @template_step = value
        end
        ## 
        ## Gets the version property value. The version property
        ## @return a integer
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. The version property
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
        ## 
        ## Gets the versionInformation property value. The versionInformation property
        ## @return a string
        ## 
        def version_information
            return @version_information
        end
        ## 
        ## Sets the versionInformation property value. The versionInformation property
        ## @param value Value to set for the versionInformation property.
        ## @return a void
        ## 
        def version_information=(value)
            @version_information = value
        end
    end
end
