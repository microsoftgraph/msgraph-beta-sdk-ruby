require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Local Action Lock Device Only Configuration
        class AndroidDeviceComplianceLocalActionLockDevice < MicrosoftGraphBeta::Models::AndroidDeviceComplianceLocalActionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new AndroidDeviceComplianceLocalActionLockDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceComplianceLocalActionLockDevice"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_compliance_local_action_lock_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceComplianceLocalActionLockDevice.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
            end
        end
    end
end
