require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../models/driver_approval_action'
require_relative '../../../device_management'
require_relative '../../windows_driver_update_profiles'
require_relative '../item'
require_relative './execute_action'

module MicrosoftGraphBeta::DeviceManagement::WindowsDriverUpdateProfiles::Item::ExecuteAction
    ## 
    # Provides operations to call the executeAction method.
    class ExecuteActionPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # An enum type to represent approval actions of single or list of drivers.
        @action_name
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The deploymentDate property
        @deployment_date
        ## 
        # The driverIds property
        @driver_ids
        ## 
        ## Gets the actionName property value. An enum type to represent approval actions of single or list of drivers.
        ## @return a driver_approval_action
        ## 
        def action_name
            return @action_name
        end
        ## 
        ## Sets the actionName property value. An enum type to represent approval actions of single or list of drivers.
        ## @param value Value to set for the actionName property.
        ## @return a void
        ## 
        def action_name=(value)
            @action_name = value
        end
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
        ## Instantiates a new executeActionPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a execute_action_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ExecuteActionPostRequestBody.new
        end
        ## 
        ## Gets the deploymentDate property value. The deploymentDate property
        ## @return a date_time
        ## 
        def deployment_date
            return @deployment_date
        end
        ## 
        ## Sets the deploymentDate property value. The deploymentDate property
        ## @param value Value to set for the deploymentDate property.
        ## @return a void
        ## 
        def deployment_date=(value)
            @deployment_date = value
        end
        ## 
        ## Gets the driverIds property value. The driverIds property
        ## @return a string
        ## 
        def driver_ids
            return @driver_ids
        end
        ## 
        ## Sets the driverIds property value. The driverIds property
        ## @param value Value to set for the driverIds property.
        ## @return a void
        ## 
        def driver_ids=(value)
            @driver_ids = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "actionName" => lambda {|n| @action_name = n.get_enum_value(MicrosoftGraphBeta::Models::DriverApprovalAction) },
                "deploymentDate" => lambda {|n| @deployment_date = n.get_date_time_value() },
                "driverIds" => lambda {|n| @driver_ids = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("actionName", @action_name)
            writer.write_date_time_value("deploymentDate", @deployment_date)
            writer.write_collection_of_primitive_values("driverIds", @driver_ids)
            writer.write_additional_data(@additional_data)
        end
    end
end
