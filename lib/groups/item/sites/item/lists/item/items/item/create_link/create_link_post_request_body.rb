require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/drive_recipient'
require_relative '../../../../../../../../groups'
require_relative '../../../../../../../item'
require_relative '../../../../../../sites'
require_relative '../../../../../item'
require_relative '../../../../lists'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './create_link'

module MicrosoftGraphBeta
    module Groups
        module Item
            module Sites
                module Item
                    module Lists
                        module Item
                            module Items
                                module Item
                                    module CreateLink
                                        class CreateLinkPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The expirationDateTime property
                                            @expiration_date_time
                                            ## 
                                            # The password property
                                            @password
                                            ## 
                                            # The recipients property
                                            @recipients
                                            ## 
                                            # The retainInheritedPermissions property
                                            @retain_inherited_permissions
                                            ## 
                                            # The scope property
                                            @scope
                                            ## 
                                            # The sendNotification property
                                            @send_notification
                                            ## 
                                            # The type property
                                            @type
                                            ## 
                                            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            ## @return a i_dictionary
                                            ## 
                                            def additional_data
                                                return @additional_data
                                            end
                                            ## 
                                            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            ## @param value Value to set for the additionalData property.
                                            ## @return a void
                                            ## 
                                            def additional_data=(value)
                                                @additional_data = value
                                            end
                                            ## 
                                            ## Instantiates a new createLinkPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                                            ## @return a create_link_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return CreateLinkPostRequestBody.new
                                            end
                                            ## 
                                            ## Gets the expirationDateTime property value. The expirationDateTime property
                                            ## @return a date_time
                                            ## 
                                            def expiration_date_time
                                                return @expiration_date_time
                                            end
                                            ## 
                                            ## Sets the expirationDateTime property value. The expirationDateTime property
                                            ## @param value Value to set for the expirationDateTime property.
                                            ## @return a void
                                            ## 
                                            def expiration_date_time=(value)
                                                @expiration_date_time = value
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                                                    "password" => lambda {|n| @password = n.get_string_value() },
                                                    "recipients" => lambda {|n| @recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DriveRecipient.create_from_discriminator_value(pn) }) },
                                                    "retainInheritedPermissions" => lambda {|n| @retain_inherited_permissions = n.get_boolean_value() },
                                                    "scope" => lambda {|n| @scope = n.get_string_value() },
                                                    "sendNotification" => lambda {|n| @send_notification = n.get_boolean_value() },
                                                    "type" => lambda {|n| @type = n.get_string_value() },
                                                }
                                            end
                                            ## 
                                            ## Gets the password property value. The password property
                                            ## @return a string
                                            ## 
                                            def password
                                                return @password
                                            end
                                            ## 
                                            ## Sets the password property value. The password property
                                            ## @param value Value to set for the password property.
                                            ## @return a void
                                            ## 
                                            def password=(value)
                                                @password = value
                                            end
                                            ## 
                                            ## Gets the recipients property value. The recipients property
                                            ## @return a drive_recipient
                                            ## 
                                            def recipients
                                                return @recipients
                                            end
                                            ## 
                                            ## Sets the recipients property value. The recipients property
                                            ## @param value Value to set for the recipients property.
                                            ## @return a void
                                            ## 
                                            def recipients=(value)
                                                @recipients = value
                                            end
                                            ## 
                                            ## Gets the retainInheritedPermissions property value. The retainInheritedPermissions property
                                            ## @return a boolean
                                            ## 
                                            def retain_inherited_permissions
                                                return @retain_inherited_permissions
                                            end
                                            ## 
                                            ## Sets the retainInheritedPermissions property value. The retainInheritedPermissions property
                                            ## @param value Value to set for the retainInheritedPermissions property.
                                            ## @return a void
                                            ## 
                                            def retain_inherited_permissions=(value)
                                                @retain_inherited_permissions = value
                                            end
                                            ## 
                                            ## Gets the scope property value. The scope property
                                            ## @return a string
                                            ## 
                                            def scope
                                                return @scope
                                            end
                                            ## 
                                            ## Sets the scope property value. The scope property
                                            ## @param value Value to set for the scope property.
                                            ## @return a void
                                            ## 
                                            def scope=(value)
                                                @scope = value
                                            end
                                            ## 
                                            ## Gets the sendNotification property value. The sendNotification property
                                            ## @return a boolean
                                            ## 
                                            def send_notification
                                                return @send_notification
                                            end
                                            ## 
                                            ## Sets the sendNotification property value. The sendNotification property
                                            ## @param value Value to set for the sendNotification property.
                                            ## @return a void
                                            ## 
                                            def send_notification=(value)
                                                @send_notification = value
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                                                writer.write_string_value("password", @password)
                                                writer.write_collection_of_object_values("recipients", @recipients)
                                                writer.write_boolean_value("retainInheritedPermissions", @retain_inherited_permissions)
                                                writer.write_string_value("scope", @scope)
                                                writer.write_boolean_value("sendNotification", @send_notification)
                                                writer.write_string_value("type", @type)
                                                writer.write_additional_data(@additional_data)
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
                            end
                        end
                    end
                end
            end
        end
    end
end
