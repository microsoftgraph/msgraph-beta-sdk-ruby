require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomSecurityAttributeAudit < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activityDateTime property
            @activity_date_time
            ## 
            # The activityDisplayName property
            @activity_display_name
            ## 
            # The additionalDetails property
            @additional_details
            ## 
            # The category property
            @category
            ## 
            # The correlationId property
            @correlation_id
            ## 
            # The initiatedBy property
            @initiated_by
            ## 
            # The loggedByService property
            @logged_by_service
            ## 
            # The operationType property
            @operation_type
            ## 
            # The result property
            @result
            ## 
            # The resultReason property
            @result_reason
            ## 
            # The targetResources property
            @target_resources
            ## 
            # The userAgent property
            @user_agent
            ## 
            ## Gets the activityDateTime property value. The activityDateTime property
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. The activityDateTime property
            ## @param value Value to set for the activityDateTime property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the activityDisplayName property value. The activityDisplayName property
            ## @return a string
            ## 
            def activity_display_name
                return @activity_display_name
            end
            ## 
            ## Sets the activityDisplayName property value. The activityDisplayName property
            ## @param value Value to set for the activityDisplayName property.
            ## @return a void
            ## 
            def activity_display_name=(value)
                @activity_display_name = value
            end
            ## 
            ## Gets the additionalDetails property value. The additionalDetails property
            ## @return a key_value
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. The additionalDetails property
            ## @param value Value to set for the additionalDetails property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new CustomSecurityAttributeAudit and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. The correlationId property
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The correlationId property
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_security_attribute_audit
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomSecurityAttributeAudit.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "activityDisplayName" => lambda {|n| @activity_display_name = n.get_string_value() },
                    "additionalDetails" => lambda {|n| @additional_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "initiatedBy" => lambda {|n| @initiated_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuditActivityInitiator.create_from_discriminator_value(pn) }) },
                    "loggedByService" => lambda {|n| @logged_by_service = n.get_string_value() },
                    "operationType" => lambda {|n| @operation_type = n.get_string_value() },
                    "result" => lambda {|n| @result = n.get_enum_value(MicrosoftGraphBeta::Models::OperationResult) },
                    "resultReason" => lambda {|n| @result_reason = n.get_string_value() },
                    "targetResources" => lambda {|n| @target_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TargetResource.create_from_discriminator_value(pn) }) },
                    "userAgent" => lambda {|n| @user_agent = n.get_string_value() },
                })
            end
            ## 
            ## Gets the initiatedBy property value. The initiatedBy property
            ## @return a audit_activity_initiator
            ## 
            def initiated_by
                return @initiated_by
            end
            ## 
            ## Sets the initiatedBy property value. The initiatedBy property
            ## @param value Value to set for the initiatedBy property.
            ## @return a void
            ## 
            def initiated_by=(value)
                @initiated_by = value
            end
            ## 
            ## Gets the loggedByService property value. The loggedByService property
            ## @return a string
            ## 
            def logged_by_service
                return @logged_by_service
            end
            ## 
            ## Sets the loggedByService property value. The loggedByService property
            ## @param value Value to set for the loggedByService property.
            ## @return a void
            ## 
            def logged_by_service=(value)
                @logged_by_service = value
            end
            ## 
            ## Gets the operationType property value. The operationType property
            ## @return a string
            ## 
            def operation_type
                return @operation_type
            end
            ## 
            ## Sets the operationType property value. The operationType property
            ## @param value Value to set for the operationType property.
            ## @return a void
            ## 
            def operation_type=(value)
                @operation_type = value
            end
            ## 
            ## Gets the result property value. The result property
            ## @return a operation_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. The result property
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Gets the resultReason property value. The resultReason property
            ## @return a string
            ## 
            def result_reason
                return @result_reason
            end
            ## 
            ## Sets the resultReason property value. The resultReason property
            ## @param value Value to set for the resultReason property.
            ## @return a void
            ## 
            def result_reason=(value)
                @result_reason = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_string_value("activityDisplayName", @activity_display_name)
                writer.write_collection_of_object_values("additionalDetails", @additional_details)
                writer.write_string_value("category", @category)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_object_value("initiatedBy", @initiated_by)
                writer.write_string_value("loggedByService", @logged_by_service)
                writer.write_string_value("operationType", @operation_type)
                writer.write_enum_value("result", @result)
                writer.write_string_value("resultReason", @result_reason)
                writer.write_collection_of_object_values("targetResources", @target_resources)
                writer.write_string_value("userAgent", @user_agent)
            end
            ## 
            ## Gets the targetResources property value. The targetResources property
            ## @return a target_resource
            ## 
            def target_resources
                return @target_resources
            end
            ## 
            ## Sets the targetResources property value. The targetResources property
            ## @param value Value to set for the targetResources property.
            ## @return a void
            ## 
            def target_resources=(value)
                @target_resources = value
            end
            ## 
            ## Gets the userAgent property value. The userAgent property
            ## @return a string
            ## 
            def user_agent
                return @user_agent
            end
            ## 
            ## Sets the userAgent property value. The userAgent property
            ## @param value Value to set for the userAgent property.
            ## @return a void
            ## 
            def user_agent=(value)
                @user_agent = value
            end
        end
    end
end
