require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityEdiscoveryHoldPolicy < MicrosoftGraphBeta::Models::SecurityPolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # KQL query that specifies content to be held in the specified locations. To learn more, see Keyword queries and search conditions for Content Search and eDiscovery.  To hold all content in the specified locations, leave contentQuery blank.
            @content_query
            ## 
            # Lists any errors that happened while placing the hold.
            @errors
            ## 
            # Indicates whether the hold is enabled and actively holding content.
            @is_enabled
            ## 
            # Data sources that represent SharePoint sites.
            @site_sources
            ## 
            # Data sources that represent Exchange mailboxes.
            @user_sources
            ## 
            ## Instantiates a new securityEdiscoveryHoldPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.ediscoveryHoldPolicy"
            end
            ## 
            ## Gets the contentQuery property value. KQL query that specifies content to be held in the specified locations. To learn more, see Keyword queries and search conditions for Content Search and eDiscovery.  To hold all content in the specified locations, leave contentQuery blank.
            ## @return a string
            ## 
            def content_query
                return @content_query
            end
            ## 
            ## Sets the contentQuery property value. KQL query that specifies content to be held in the specified locations. To learn more, see Keyword queries and search conditions for Content Search and eDiscovery.  To hold all content in the specified locations, leave contentQuery blank.
            ## @param value Value to set for the contentQuery property.
            ## @return a void
            ## 
            def content_query=(value)
                @content_query = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ediscovery_hold_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityEdiscoveryHoldPolicy.new
            end
            ## 
            ## Gets the errors property value. Lists any errors that happened while placing the hold.
            ## @return a string
            ## 
            def errors
                return @errors
            end
            ## 
            ## Sets the errors property value. Lists any errors that happened while placing the hold.
            ## @param value Value to set for the errors property.
            ## @return a void
            ## 
            def errors=(value)
                @errors = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentQuery" => lambda {|n| @content_query = n.get_string_value() },
                    "errors" => lambda {|n| @errors = n.get_collection_of_primitive_values(String) },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "siteSources" => lambda {|n| @site_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySiteSource.create_from_discriminator_value(pn) }) },
                    "userSources" => lambda {|n| @user_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityUserSource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEnabled property value. Indicates whether the hold is enabled and actively holding content.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Indicates whether the hold is enabled and actively holding content.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("contentQuery", @content_query)
                writer.write_collection_of_primitive_values("errors", @errors)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_collection_of_object_values("siteSources", @site_sources)
                writer.write_collection_of_object_values("userSources", @user_sources)
            end
            ## 
            ## Gets the siteSources property value. Data sources that represent SharePoint sites.
            ## @return a security_site_source
            ## 
            def site_sources
                return @site_sources
            end
            ## 
            ## Sets the siteSources property value. Data sources that represent SharePoint sites.
            ## @param value Value to set for the siteSources property.
            ## @return a void
            ## 
            def site_sources=(value)
                @site_sources = value
            end
            ## 
            ## Gets the userSources property value. Data sources that represent Exchange mailboxes.
            ## @return a security_user_source
            ## 
            def user_sources
                return @user_sources
            end
            ## 
            ## Sets the userSources property value. Data sources that represent Exchange mailboxes.
            ## @param value Value to set for the userSources property.
            ## @return a void
            ## 
            def user_sources=(value)
                @user_sources = value
            end
        end
    end
end
