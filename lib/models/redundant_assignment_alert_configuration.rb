require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RedundantAssignmentAlertConfiguration < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of days without activation to look back on from current timestamp.
            @duration
            ## 
            ## Instantiates a new redundantAssignmentAlertConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.redundantAssignmentAlertConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a redundant_assignment_alert_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RedundantAssignmentAlertConfiguration.new
            end
            ## 
            ## Gets the duration property value. The number of days without activation to look back on from current timestamp.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. The number of days without activation to look back on from current timestamp.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "duration" => lambda {|n| @duration = n.get_duration_value() },
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
                writer.write_duration_value("duration", @duration)
            end
        end
    end
end
