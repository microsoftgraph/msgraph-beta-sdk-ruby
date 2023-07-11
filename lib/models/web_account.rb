require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebAccount < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains the description the user has provided for the account on the service being referenced.
            @description
            ## 
            # The service property
            @service
            ## 
            # Contains a status message from the cloud service if provided or synchronized.
            @status_message
            ## 
            # The thumbnailUrl property
            @thumbnail_url
            ## 
            # The user name  displayed for the webaccount.
            @user_id
            ## 
            # Contains a link to the user's profile on the cloud service if one exists.
            @web_url
            ## 
            ## Instantiates a new webAccount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.webAccount"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a web_account
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebAccount.new
            end
            ## 
            ## Gets the description property value. Contains the description the user has provided for the account on the service being referenced.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Contains the description the user has provided for the account on the service being referenced.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "service" => lambda {|n| @service = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServiceInformation.create_from_discriminator_value(pn) }) },
                    "statusMessage" => lambda {|n| @status_message = n.get_string_value() },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
                writer.write_string_value("description", @description)
                writer.write_object_value("service", @service)
                writer.write_string_value("statusMessage", @status_message)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the service property value. The service property
            ## @return a service_information
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. The service property
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
            ## 
            ## Gets the statusMessage property value. Contains a status message from the cloud service if provided or synchronized.
            ## @return a string
            ## 
            def status_message
                return @status_message
            end
            ## 
            ## Sets the statusMessage property value. Contains a status message from the cloud service if provided or synchronized.
            ## @param value Value to set for the status_message property.
            ## @return a void
            ## 
            def status_message=(value)
                @status_message = value
            end
            ## 
            ## Gets the thumbnailUrl property value. The thumbnailUrl property
            ## @return a string
            ## 
            def thumbnail_url
                return @thumbnail_url
            end
            ## 
            ## Sets the thumbnailUrl property value. The thumbnailUrl property
            ## @param value Value to set for the thumbnail_url property.
            ## @return a void
            ## 
            def thumbnail_url=(value)
                @thumbnail_url = value
            end
            ## 
            ## Gets the userId property value. The user name  displayed for the webaccount.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The user name  displayed for the webaccount.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the webUrl property value. Contains a link to the user's profile on the cloud service if one exists.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Contains a link to the user's profile on the cloud service if one exists.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
