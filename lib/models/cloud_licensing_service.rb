require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudLicensingService
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The assignableTo property
            @assignable_to
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier of the service plan that is equal to the servicePlanId property on the related servicePlanInfo objects.
            @plan_id
            ## 
            # The name of the service plan that is equal to the servicePlanName property on the related servicePlanInfo objects.
            @plan_name
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the assignableTo property value. The assignableTo property
            ## @return a cloud_licensing_assignee_types
            ## 
            def assignable_to
                return @assignable_to
            end
            ## 
            ## Sets the assignableTo property value. The assignableTo property
            ## @param value Value to set for the assignableTo property.
            ## @return a void
            ## 
            def assignable_to=(value)
                @assignable_to = value
            end
            ## 
            ## Instantiates a new CloudLicensingService and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_licensing_service
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudLicensingService.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignableTo" => lambda {|n| @assignable_to = n.get_enum_values(MicrosoftGraphBeta::Models::CloudLicensingAssigneeTypes) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "planId" => lambda {|n| @plan_id = n.get_guid_value() },
                    "planName" => lambda {|n| @plan_name = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the planId property value. The unique identifier of the service plan that is equal to the servicePlanId property on the related servicePlanInfo objects.
            ## @return a guid
            ## 
            def plan_id
                return @plan_id
            end
            ## 
            ## Sets the planId property value. The unique identifier of the service plan that is equal to the servicePlanId property on the related servicePlanInfo objects.
            ## @param value Value to set for the planId property.
            ## @return a void
            ## 
            def plan_id=(value)
                @plan_id = value
            end
            ## 
            ## Gets the planName property value. The name of the service plan that is equal to the servicePlanName property on the related servicePlanInfo objects.
            ## @return a string
            ## 
            def plan_name
                return @plan_name
            end
            ## 
            ## Sets the planName property value. The name of the service plan that is equal to the servicePlanName property on the related servicePlanInfo objects.
            ## @param value Value to set for the planName property.
            ## @return a void
            ## 
            def plan_name=(value)
                @plan_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("assignableTo", @assignable_to)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_guid_value("planId", @plan_id)
                writer.write_string_value("planName", @plan_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
