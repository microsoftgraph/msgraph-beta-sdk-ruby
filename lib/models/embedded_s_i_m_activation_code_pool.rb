require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A pool represents a group of embedded SIM activation codes.
        class EmbeddedSIMActivationCodePool < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The total count of activation codes which belong to this pool.
            @activation_code_count
            ## 
            # The activation codes which belong to this pool. This navigation property is used to post activation codes to Intune but cannot be used to read activation codes from Intune.
            @activation_codes
            ## 
            # Navigational property to a list of targets to which this pool is assigned.
            @assignments
            ## 
            # The time the embedded SIM activation code pool was created. Generated service side.
            @created_date_time
            ## 
            # Navigational property to a list of device states for this pool.
            @device_states
            ## 
            # The admin defined name of the embedded SIM activation code pool.
            @display_name
            ## 
            # The time the embedded SIM activation code pool was last modified. Updated service side.
            @modified_date_time
            ## 
            ## Gets the activationCodeCount property value. The total count of activation codes which belong to this pool.
            ## @return a integer
            ## 
            def activation_code_count
                return @activation_code_count
            end
            ## 
            ## Sets the activationCodeCount property value. The total count of activation codes which belong to this pool.
            ## @param value Value to set for the activationCodeCount property.
            ## @return a void
            ## 
            def activation_code_count=(value)
                @activation_code_count = value
            end
            ## 
            ## Gets the activationCodes property value. The activation codes which belong to this pool. This navigation property is used to post activation codes to Intune but cannot be used to read activation codes from Intune.
            ## @return a embedded_s_i_m_activation_code
            ## 
            def activation_codes
                return @activation_codes
            end
            ## 
            ## Sets the activationCodes property value. The activation codes which belong to this pool. This navigation property is used to post activation codes to Intune but cannot be used to read activation codes from Intune.
            ## @param value Value to set for the activationCodes property.
            ## @return a void
            ## 
            def activation_codes=(value)
                @activation_codes = value
            end
            ## 
            ## Gets the assignments property value. Navigational property to a list of targets to which this pool is assigned.
            ## @return a embedded_s_i_m_activation_code_pool_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Navigational property to a list of targets to which this pool is assigned.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new embeddedSIMActivationCodePool and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The time the embedded SIM activation code pool was created. Generated service side.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time the embedded SIM activation code pool was created. Generated service side.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a embedded_s_i_m_activation_code_pool
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmbeddedSIMActivationCodePool.new
            end
            ## 
            ## Gets the deviceStates property value. Navigational property to a list of device states for this pool.
            ## @return a embedded_s_i_m_device_state
            ## 
            def device_states
                return @device_states
            end
            ## 
            ## Sets the deviceStates property value. Navigational property to a list of device states for this pool.
            ## @param value Value to set for the deviceStates property.
            ## @return a void
            ## 
            def device_states=(value)
                @device_states = value
            end
            ## 
            ## Gets the displayName property value. The admin defined name of the embedded SIM activation code pool.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The admin defined name of the embedded SIM activation code pool.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activationCodeCount" => lambda {|n| @activation_code_count = n.get_number_value() },
                    "activationCodes" => lambda {|n| @activation_codes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EmbeddedSIMActivationCode.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EmbeddedSIMActivationCodePoolAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "deviceStates" => lambda {|n| @device_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EmbeddedSIMDeviceState.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the modifiedDateTime property value. The time the embedded SIM activation code pool was last modified. Updated service side.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The time the embedded SIM activation code pool was last modified. Updated service side.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activationCodeCount", @activation_code_count)
                writer.write_collection_of_object_values("activationCodes", @activation_codes)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("deviceStates", @device_states)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
            end
        end
    end
end
