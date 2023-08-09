require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MultiTenantOrganizationMemberTransitionDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The desiredRole property
            @desired_role
            ## 
            # The desiredState property
            @desired_state
            ## 
            # The details property
            @details
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status property
            @status
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new multiTenantOrganizationMemberTransitionDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_member_transition_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationMemberTransitionDetails.new
            end
            ## 
            ## Gets the desiredRole property value. The desiredRole property
            ## @return a multi_tenant_organization_member_role
            ## 
            def desired_role
                return @desired_role
            end
            ## 
            ## Sets the desiredRole property value. The desiredRole property
            ## @param value Value to set for the desiredRole property.
            ## @return a void
            ## 
            def desired_role=(value)
                @desired_role = value
            end
            ## 
            ## Gets the desiredState property value. The desiredState property
            ## @return a multi_tenant_organization_member_state
            ## 
            def desired_state
                return @desired_state
            end
            ## 
            ## Sets the desiredState property value. The desiredState property
            ## @param value Value to set for the desiredState property.
            ## @return a void
            ## 
            def desired_state=(value)
                @desired_state = value
            end
            ## 
            ## Gets the details property value. The details property
            ## @return a string
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. The details property
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "desiredRole" => lambda {|n| @desired_role = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberRole) },
                    "desiredState" => lambda {|n| @desired_state = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberState) },
                    "details" => lambda {|n| @details = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberProcessingStatus) },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("desiredRole", @desired_role)
                writer.write_enum_value("desiredState", @desired_state)
                writer.write_string_value("details", @details)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a multi_tenant_organization_member_processing_status
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
        end
    end
end
