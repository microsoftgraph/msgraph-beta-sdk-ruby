require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Object containing detailed information about the error and its remediation.
        class DeviceManagementTroubleshootingErrorDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Not yet documented
            @context
            ## 
            # Not yet documented
            @failure
            ## 
            # The detailed description of what went wrong.
            @failure_details
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The detailed description of how to remediate this issue.
            @remediation
            ## 
            # Links to helpful documentation about this failure.
            @resources
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
            ## Instantiates a new deviceManagementTroubleshootingErrorDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the context property value. Not yet documented
            ## @return a string
            ## 
            def context
                return @context
            end
            ## 
            ## Sets the context property value. Not yet documented
            ## @param value Value to set for the context property.
            ## @return a void
            ## 
            def context=(value)
                @context = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_troubleshooting_error_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementTroubleshootingErrorDetails.new
            end
            ## 
            ## Gets the failure property value. Not yet documented
            ## @return a string
            ## 
            def failure
                return @failure
            end
            ## 
            ## Sets the failure property value. Not yet documented
            ## @param value Value to set for the failure property.
            ## @return a void
            ## 
            def failure=(value)
                @failure = value
            end
            ## 
            ## Gets the failureDetails property value. The detailed description of what went wrong.
            ## @return a string
            ## 
            def failure_details
                return @failure_details
            end
            ## 
            ## Sets the failureDetails property value. The detailed description of what went wrong.
            ## @param value Value to set for the failure_details property.
            ## @return a void
            ## 
            def failure_details=(value)
                @failure_details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "context" => lambda {|n| @context = n.get_string_value() },
                    "failure" => lambda {|n| @failure = n.get_string_value() },
                    "failureDetails" => lambda {|n| @failure_details = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remediation" => lambda {|n| @remediation = n.get_string_value() },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTroubleshootingErrorResource.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the remediation property value. The detailed description of how to remediate this issue.
            ## @return a string
            ## 
            def remediation
                return @remediation
            end
            ## 
            ## Sets the remediation property value. The detailed description of how to remediate this issue.
            ## @param value Value to set for the remediation property.
            ## @return a void
            ## 
            def remediation=(value)
                @remediation = value
            end
            ## 
            ## Gets the resources property value. Links to helpful documentation about this failure.
            ## @return a device_management_troubleshooting_error_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. Links to helpful documentation about this failure.
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("context", @context)
                writer.write_string_value("failure", @failure)
                writer.write_string_value("failureDetails", @failure_details)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("remediation", @remediation)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
