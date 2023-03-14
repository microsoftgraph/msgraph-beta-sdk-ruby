require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedRoleAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The UTC DateTime when the temporary privileged role assignment will be expired. For permanent role assignment, the value is null.
            @expiration_date_time
            ## 
            # true if the role assignment is activated. false if the role assignment is deactivated.
            @is_elevated
            ## 
            # Result message set by the service.
            @result_message
            ## 
            # Role identifier. In GUID string format.
            @role_id
            ## 
            # Read-only. Nullable. The associated role information.
            @role_info
            ## 
            # User identifier. In GUID string format.
            @user_id
            ## 
            ## Instantiates a new privilegedRoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a privileged_role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedRoleAssignment.new
            end
            ## 
            ## Gets the expirationDateTime property value. The UTC DateTime when the temporary privileged role assignment will be expired. For permanent role assignment, the value is null.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The UTC DateTime when the temporary privileged role assignment will be expired. For permanent role assignment, the value is null.
            ## @param value Value to set for the expiration_date_time property.
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
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "isElevated" => lambda {|n| @is_elevated = n.get_boolean_value() },
                    "resultMessage" => lambda {|n| @result_message = n.get_string_value() },
                    "roleId" => lambda {|n| @role_id = n.get_string_value() },
                    "roleInfo" => lambda {|n| @role_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegedRole.create_from_discriminator_value(pn) }) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isElevated property value. true if the role assignment is activated. false if the role assignment is deactivated.
            ## @return a boolean
            ## 
            def is_elevated
                return @is_elevated
            end
            ## 
            ## Sets the isElevated property value. true if the role assignment is activated. false if the role assignment is deactivated.
            ## @param value Value to set for the is_elevated property.
            ## @return a void
            ## 
            def is_elevated=(value)
                @is_elevated = value
            end
            ## 
            ## Gets the resultMessage property value. Result message set by the service.
            ## @return a string
            ## 
            def result_message
                return @result_message
            end
            ## 
            ## Sets the resultMessage property value. Result message set by the service.
            ## @param value Value to set for the result_message property.
            ## @return a void
            ## 
            def result_message=(value)
                @result_message = value
            end
            ## 
            ## Gets the roleId property value. Role identifier. In GUID string format.
            ## @return a string
            ## 
            def role_id
                return @role_id
            end
            ## 
            ## Sets the roleId property value. Role identifier. In GUID string format.
            ## @param value Value to set for the role_id property.
            ## @return a void
            ## 
            def role_id=(value)
                @role_id = value
            end
            ## 
            ## Gets the roleInfo property value. Read-only. Nullable. The associated role information.
            ## @return a privileged_role
            ## 
            def role_info
                return @role_info
            end
            ## 
            ## Sets the roleInfo property value. Read-only. Nullable. The associated role information.
            ## @param value Value to set for the role_info property.
            ## @return a void
            ## 
            def role_info=(value)
                @role_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_boolean_value("isElevated", @is_elevated)
                writer.write_string_value("resultMessage", @result_message)
                writer.write_string_value("roleId", @role_id)
                writer.write_object_value("roleInfo", @role_info)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. User identifier. In GUID string format.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. User identifier. In GUID string format.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
