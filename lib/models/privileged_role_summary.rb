require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrivilegedRoleSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The elevatedCount property
            @elevated_count
            ## 
            # The managedCount property
            @managed_count
            ## 
            # The mfaEnabled property
            @mfa_enabled
            ## 
            # The status property
            @status
            ## 
            # The usersCount property
            @users_count
            ## 
            ## Instantiates a new PrivilegedRoleSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privileged_role_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegedRoleSummary.new
            end
            ## 
            ## Gets the elevatedCount property value. The elevatedCount property
            ## @return a integer
            ## 
            def elevated_count
                return @elevated_count
            end
            ## 
            ## Sets the elevatedCount property value. The elevatedCount property
            ## @param value Value to set for the elevatedCount property.
            ## @return a void
            ## 
            def elevated_count=(value)
                @elevated_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "elevatedCount" => lambda {|n| @elevated_count = n.get_number_value() },
                    "managedCount" => lambda {|n| @managed_count = n.get_number_value() },
                    "mfaEnabled" => lambda {|n| @mfa_enabled = n.get_boolean_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::RoleSummaryStatus) },
                    "usersCount" => lambda {|n| @users_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the managedCount property value. The managedCount property
            ## @return a integer
            ## 
            def managed_count
                return @managed_count
            end
            ## 
            ## Sets the managedCount property value. The managedCount property
            ## @param value Value to set for the managedCount property.
            ## @return a void
            ## 
            def managed_count=(value)
                @managed_count = value
            end
            ## 
            ## Gets the mfaEnabled property value. The mfaEnabled property
            ## @return a boolean
            ## 
            def mfa_enabled
                return @mfa_enabled
            end
            ## 
            ## Sets the mfaEnabled property value. The mfaEnabled property
            ## @param value Value to set for the mfaEnabled property.
            ## @return a void
            ## 
            def mfa_enabled=(value)
                @mfa_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("elevatedCount", @elevated_count)
                writer.write_number_value("managedCount", @managed_count)
                writer.write_boolean_value("mfaEnabled", @mfa_enabled)
                writer.write_enum_value("status", @status)
                writer.write_number_value("usersCount", @users_count)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a role_summary_status
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
            ## Gets the usersCount property value. The usersCount property
            ## @return a integer
            ## 
            def users_count
                return @users_count
            end
            ## 
            ## Sets the usersCount property value. The usersCount property
            ## @param value Value to set for the usersCount property.
            ## @return a void
            ## 
            def users_count=(value)
                @users_count = value
            end
        end
    end
end
