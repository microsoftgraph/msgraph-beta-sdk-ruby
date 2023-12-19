require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GoalsExportJob < MicrosoftGraphBeta::Models::LongRunningOperation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The content of the goalsExportJob.
            @content
            ## 
            # The date and time of expiry of the result of the operation.
            @expiration_date_time
            ## 
            # The unique identifier of the explorer view to be exported.
            @explorer_view_id
            ## 
            # The unique identifier of the viva goals organization.
            @goals_organization_id
            ## 
            ## Instantiates a new goalsExportJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. The content of the goalsExportJob.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. The content of the goalsExportJob.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a goals_export_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GoalsExportJob.new
            end
            ## 
            ## Gets the expirationDateTime property value. The date and time of expiry of the result of the operation.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The date and time of expiry of the result of the operation.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the explorerViewId property value. The unique identifier of the explorer view to be exported.
            ## @return a string
            ## 
            def explorer_view_id
                return @explorer_view_id
            end
            ## 
            ## Sets the explorerViewId property value. The unique identifier of the explorer view to be exported.
            ## @param value Value to set for the explorerViewId property.
            ## @return a void
            ## 
            def explorer_view_id=(value)
                @explorer_view_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "explorerViewId" => lambda {|n| @explorer_view_id = n.get_string_value() },
                    "goalsOrganizationId" => lambda {|n| @goals_organization_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the goalsOrganizationId property value. The unique identifier of the viva goals organization.
            ## @return a string
            ## 
            def goals_organization_id
                return @goals_organization_id
            end
            ## 
            ## Sets the goalsOrganizationId property value. The unique identifier of the viva goals organization.
            ## @param value Value to set for the goalsOrganizationId property.
            ## @return a void
            ## 
            def goals_organization_id=(value)
                @goals_organization_id = value
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
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("explorerViewId", @explorer_view_id)
                writer.write_string_value("goalsOrganizationId", @goals_organization_id)
            end
        end
    end
end
