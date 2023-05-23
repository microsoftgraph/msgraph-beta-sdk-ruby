require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidDeviceComplianceLocalActionBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647
            @grace_period_in_minutes
            ## 
            ## Instantiates a new AndroidDeviceComplianceLocalActionBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_compliance_local_action_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidDeviceComplianceLocalActionLockDevice"
                            return AndroidDeviceComplianceLocalActionLockDevice.new
                        when "#microsoft.graph.androidDeviceComplianceLocalActionLockDeviceWithPasscode"
                            return AndroidDeviceComplianceLocalActionLockDeviceWithPasscode.new
                    end
                end
                return AndroidDeviceComplianceLocalActionBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "gracePeriodInMinutes" => lambda {|n| @grace_period_in_minutes = n.get_number_value() },
                })
            end
            ## 
            ## Gets the gracePeriodInMinutes property value. Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def grace_period_in_minutes
                return @grace_period_in_minutes
            end
            ## 
            ## Sets the gracePeriodInMinutes property value. Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647
            ## @param value Value to set for the grace_period_in_minutes property.
            ## @return a void
            ## 
            def grace_period_in_minutes=(value)
                @grace_period_in_minutes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("gracePeriodInMinutes", @grace_period_in_minutes)
            end
        end
    end
end
