require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Command < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appServiceName property
            @app_service_name
            ## 
            # The error property
            @error
            ## 
            # The packageFamilyName property
            @package_family_name
            ## 
            # The payload property
            @payload
            ## 
            # The permissionTicket property
            @permission_ticket
            ## 
            # The postBackUri property
            @post_back_uri
            ## 
            # The responsepayload property
            @responsepayload
            ## 
            # The status property
            @status
            ## 
            # The type property
            @type
            ## 
            ## Gets the appServiceName property value. The appServiceName property
            ## @return a string
            ## 
            def app_service_name
                return @app_service_name
            end
            ## 
            ## Sets the appServiceName property value. The appServiceName property
            ## @param value Value to set for the appServiceName property.
            ## @return a void
            ## 
            def app_service_name=(value)
                @app_service_name = value
            end
            ## 
            ## Instantiates a new Command and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a command
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Command.new
            end
            ## 
            ## Gets the error property value. The error property
            ## @return a string
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error property
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appServiceName" => lambda {|n| @app_service_name = n.get_string_value() },
                    "error" => lambda {|n| @error = n.get_string_value() },
                    "packageFamilyName" => lambda {|n| @package_family_name = n.get_string_value() },
                    "payload" => lambda {|n| @payload = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PayloadRequest.create_from_discriminator_value(pn) }) },
                    "permissionTicket" => lambda {|n| @permission_ticket = n.get_string_value() },
                    "postBackUri" => lambda {|n| @post_back_uri = n.get_string_value() },
                    "responsepayload" => lambda {|n| @responsepayload = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PayloadResponse.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the packageFamilyName property value. The packageFamilyName property
            ## @return a string
            ## 
            def package_family_name
                return @package_family_name
            end
            ## 
            ## Sets the packageFamilyName property value. The packageFamilyName property
            ## @param value Value to set for the packageFamilyName property.
            ## @return a void
            ## 
            def package_family_name=(value)
                @package_family_name = value
            end
            ## 
            ## Gets the payload property value. The payload property
            ## @return a payload_request
            ## 
            def payload
                return @payload
            end
            ## 
            ## Sets the payload property value. The payload property
            ## @param value Value to set for the payload property.
            ## @return a void
            ## 
            def payload=(value)
                @payload = value
            end
            ## 
            ## Gets the permissionTicket property value. The permissionTicket property
            ## @return a string
            ## 
            def permission_ticket
                return @permission_ticket
            end
            ## 
            ## Sets the permissionTicket property value. The permissionTicket property
            ## @param value Value to set for the permissionTicket property.
            ## @return a void
            ## 
            def permission_ticket=(value)
                @permission_ticket = value
            end
            ## 
            ## Gets the postBackUri property value. The postBackUri property
            ## @return a string
            ## 
            def post_back_uri
                return @post_back_uri
            end
            ## 
            ## Sets the postBackUri property value. The postBackUri property
            ## @param value Value to set for the postBackUri property.
            ## @return a void
            ## 
            def post_back_uri=(value)
                @post_back_uri = value
            end
            ## 
            ## Gets the responsepayload property value. The responsepayload property
            ## @return a payload_response
            ## 
            def responsepayload
                return @responsepayload
            end
            ## 
            ## Sets the responsepayload property value. The responsepayload property
            ## @param value Value to set for the responsepayload property.
            ## @return a void
            ## 
            def responsepayload=(value)
                @responsepayload = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appServiceName", @app_service_name)
                writer.write_string_value("error", @error)
                writer.write_string_value("packageFamilyName", @package_family_name)
                writer.write_object_value("payload", @payload)
                writer.write_string_value("permissionTicket", @permission_ticket)
                writer.write_string_value("postBackUri", @post_back_uri)
                writer.write_object_value("responsepayload", @responsepayload)
                writer.write_string_value("status", @status)
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
