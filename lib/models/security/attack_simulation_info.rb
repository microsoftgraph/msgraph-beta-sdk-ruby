require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class AttackSimulationInfo
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The date and time of the attack simulation.
        @attack_sim_date_time
        ## 
        # The duration (in time) for the attack simulation.
        @attack_sim_duration_time
        ## 
        # The activity ID for the attack simulation.
        @attack_sim_id
        ## 
        # The unique identifier for the user who got the attack simulation email.
        @attack_sim_user_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the attackSimDateTime property value. The date and time of the attack simulation.
        ## @return a date_time
        ## 
        def attack_sim_date_time
            return @attack_sim_date_time
        end
        ## 
        ## Sets the attackSimDateTime property value. The date and time of the attack simulation.
        ## @param value Value to set for the attackSimDateTime property.
        ## @return a void
        ## 
        def attack_sim_date_time=(value)
            @attack_sim_date_time = value
        end
        ## 
        ## Gets the attackSimDurationTime property value. The duration (in time) for the attack simulation.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def attack_sim_duration_time
            return @attack_sim_duration_time
        end
        ## 
        ## Sets the attackSimDurationTime property value. The duration (in time) for the attack simulation.
        ## @param value Value to set for the attackSimDurationTime property.
        ## @return a void
        ## 
        def attack_sim_duration_time=(value)
            @attack_sim_duration_time = value
        end
        ## 
        ## Gets the attackSimId property value. The activity ID for the attack simulation.
        ## @return a guid
        ## 
        def attack_sim_id
            return @attack_sim_id
        end
        ## 
        ## Sets the attackSimId property value. The activity ID for the attack simulation.
        ## @param value Value to set for the attackSimId property.
        ## @return a void
        ## 
        def attack_sim_id=(value)
            @attack_sim_id = value
        end
        ## 
        ## Gets the attackSimUserId property value. The unique identifier for the user who got the attack simulation email.
        ## @return a string
        ## 
        def attack_sim_user_id
            return @attack_sim_user_id
        end
        ## 
        ## Sets the attackSimUserId property value. The unique identifier for the user who got the attack simulation email.
        ## @param value Value to set for the attackSimUserId property.
        ## @return a void
        ## 
        def attack_sim_user_id=(value)
            @attack_sim_user_id = value
        end
        ## 
        ## Instantiates a new attackSimulationInfo and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a attack_simulation_info
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AttackSimulationInfo.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "attackSimDateTime" => lambda {|n| @attack_sim_date_time = n.get_date_time_value() },
                "attackSimDurationTime" => lambda {|n| @attack_sim_duration_time = n.get_duration_value() },
                "attackSimId" => lambda {|n| @attack_sim_id = n.get_guid_value() },
                "attackSimUserId" => lambda {|n| @attack_sim_user_id = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_date_time_value("attackSimDateTime", @attack_sim_date_time)
            writer.write_duration_value("attackSimDurationTime", @attack_sim_duration_time)
            writer.write_guid_value("attackSimId", @attack_sim_id)
            writer.write_string_value("attackSimUserId", @attack_sim_user_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
