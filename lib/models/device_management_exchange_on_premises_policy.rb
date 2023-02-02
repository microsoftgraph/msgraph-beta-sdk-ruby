require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Singleton entity which represents the Exchange OnPremises policy configured for a tenant.
    class DeviceManagementExchangeOnPremisesPolicy < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The list of device access rules in Exchange. The access rules apply globally to the entire Exchange organization
        @access_rules
        ## 
        # The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
        @conditional_access_settings
        ## 
        # Access Level in Exchange.
        @default_access_level
        ## 
        # The list of device classes known to Exchange
        @known_device_classes
        ## 
        # Notification text that will be sent to users quarantined by this policy. This is UTF8 encoded byte array HTML.
        @notification_content
        ## 
        ## Gets the accessRules property value. The list of device access rules in Exchange. The access rules apply globally to the entire Exchange organization
        ## @return a device_management_exchange_access_rule
        ## 
        def access_rules
            return @access_rules
        end
        ## 
        ## Sets the accessRules property value. The list of device access rules in Exchange. The access rules apply globally to the entire Exchange organization
        ## @param value Value to set for the access_rules property.
        ## @return a void
        ## 
        def access_rules=(value)
            @access_rules = value
        end
        ## 
        ## Gets the conditionalAccessSettings property value. The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
        ## @return a on_premises_conditional_access_settings
        ## 
        def conditional_access_settings
            return @conditional_access_settings
        end
        ## 
        ## Sets the conditionalAccessSettings property value. The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
        ## @param value Value to set for the conditional_access_settings property.
        ## @return a void
        ## 
        def conditional_access_settings=(value)
            @conditional_access_settings = value
        end
        ## 
        ## Instantiates a new deviceManagementExchangeOnPremisesPolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_exchange_on_premises_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementExchangeOnPremisesPolicy.new
        end
        ## 
        ## Gets the defaultAccessLevel property value. Access Level in Exchange.
        ## @return a device_management_exchange_access_level
        ## 
        def default_access_level
            return @default_access_level
        end
        ## 
        ## Sets the defaultAccessLevel property value. Access Level in Exchange.
        ## @param value Value to set for the default_access_level property.
        ## @return a void
        ## 
        def default_access_level=(value)
            @default_access_level = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "accessRules" => lambda {|n| @access_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExchangeAccessRule.create_from_discriminator_value(pn) }) },
                "conditionalAccessSettings" => lambda {|n| @conditional_access_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesConditionalAccessSettings.create_from_discriminator_value(pn) }) },
                "defaultAccessLevel" => lambda {|n| @default_access_level = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementExchangeAccessLevel) },
                "knownDeviceClasses" => lambda {|n| @known_device_classes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExchangeDeviceClass.create_from_discriminator_value(pn) }) },
                "notificationContent" => lambda {|n| @notification_content = n.get_string_value() },
            })
        end
        ## 
        ## Gets the knownDeviceClasses property value. The list of device classes known to Exchange
        ## @return a device_management_exchange_device_class
        ## 
        def known_device_classes
            return @known_device_classes
        end
        ## 
        ## Sets the knownDeviceClasses property value. The list of device classes known to Exchange
        ## @param value Value to set for the known_device_classes property.
        ## @return a void
        ## 
        def known_device_classes=(value)
            @known_device_classes = value
        end
        ## 
        ## Gets the notificationContent property value. Notification text that will be sent to users quarantined by this policy. This is UTF8 encoded byte array HTML.
        ## @return a binary
        ## 
        def notification_content
            return @notification_content
        end
        ## 
        ## Sets the notificationContent property value. Notification text that will be sent to users quarantined by this policy. This is UTF8 encoded byte array HTML.
        ## @param value Value to set for the notification_content property.
        ## @return a void
        ## 
        def notification_content=(value)
            @notification_content = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("accessRules", @access_rules)
            writer.write_object_value("conditionalAccessSettings", @conditional_access_settings)
            writer.write_enum_value("defaultAccessLevel", @default_access_level)
            writer.write_collection_of_object_values("knownDeviceClasses", @known_device_classes)
            writer.write_object_value("notificationContent", @notification_content)
        end
    end
end
