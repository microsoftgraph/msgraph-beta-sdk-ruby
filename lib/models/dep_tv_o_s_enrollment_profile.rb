require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The depTvOSEnrollmentProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile specific to Apple TV device configuration. This type of profile must be assigned to Apple TV devices before the devices can enroll via DEP. However, This entity type will only be used as a navigation property to fetch the display name of the profile while getting the exitsing depOnboardingSetting entity, it won't support any operations, as the new entity is supported in device configuration(DCV2) graph calls
        class DepTvOSEnrollmentProfile < MicrosoftGraphBeta::Models::EnrollmentProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new DepTvOSEnrollmentProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.depTvOSEnrollmentProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a dep_tv_o_s_enrollment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DepTvOSEnrollmentProfile.new
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
