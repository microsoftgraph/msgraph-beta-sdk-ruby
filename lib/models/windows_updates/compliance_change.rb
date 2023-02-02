require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class ComplianceChange < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The isRevoked property
        @is_revoked
        ## 
        # The revokedDateTime property
        @revoked_date_time
        ## 
        # The updatePolicy property
        @update_policy
        ## 
        ## Instantiates a new complianceChange and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
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
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a compliance_change
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsUpdates.contentApproval"
                        return ContentApproval.new
                end
            end
            return ComplianceChange.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "isRevoked" => lambda {|n| @is_revoked = n.get_boolean_value() },
                "revokedDateTime" => lambda {|n| @revoked_date_time = n.get_date_time_value() },
                "updatePolicy" => lambda {|n| @update_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatePolicy.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the isRevoked property value. The isRevoked property
        ## @return a boolean
        ## 
        def is_revoked
            return @is_revoked
        end
        ## 
        ## Sets the isRevoked property value. The isRevoked property
        ## @param value Value to set for the is_revoked property.
        ## @return a void
        ## 
        def is_revoked=(value)
            @is_revoked = value
        end
        ## 
        ## Gets the revokedDateTime property value. The revokedDateTime property
        ## @return a date_time
        ## 
        def revoked_date_time
            return @revoked_date_time
        end
        ## 
        ## Sets the revokedDateTime property value. The revokedDateTime property
        ## @param value Value to set for the revoked_date_time property.
        ## @return a void
        ## 
        def revoked_date_time=(value)
            @revoked_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_boolean_value("isRevoked", @is_revoked)
            writer.write_date_time_value("revokedDateTime", @revoked_date_time)
            writer.write_object_value("updatePolicy", @update_policy)
        end
        ## 
        ## Gets the updatePolicy property value. The updatePolicy property
        ## @return a update_policy
        ## 
        def update_policy
            return @update_policy
        end
        ## 
        ## Sets the updatePolicy property value. The updatePolicy property
        ## @param value Value to set for the update_policy property.
        ## @return a void
        ## 
        def update_policy=(value)
            @update_policy = value
        end
    end
end
