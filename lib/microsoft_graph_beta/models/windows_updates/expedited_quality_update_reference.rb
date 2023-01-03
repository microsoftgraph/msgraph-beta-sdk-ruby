require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class ExpeditedQualityUpdateReference < MicrosoftGraphBeta::Models::WindowsUpdates::QualityUpdateReference
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies other content to consider as equivalent. Supports a subset of the values for equivalentContentOption. Default value is latestSecurity. Possible values are: latestSecurity, unknownFutureValue.
        @equivalent_content
        ## 
        ## Instantiates a new ExpeditedQualityUpdateReference and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.expeditedQualityUpdateReference"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a expedited_quality_update_reference
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ExpeditedQualityUpdateReference.new
        end
        ## 
        ## Gets the equivalentContent property value. Specifies other content to consider as equivalent. Supports a subset of the values for equivalentContentOption. Default value is latestSecurity. Possible values are: latestSecurity, unknownFutureValue.
        ## @return a equivalent_content_option
        ## 
        def equivalent_content
            return @equivalent_content
        end
        ## 
        ## Sets the equivalentContent property value. Specifies other content to consider as equivalent. Supports a subset of the values for equivalentContentOption. Default value is latestSecurity. Possible values are: latestSecurity, unknownFutureValue.
        ## @param value Value to set for the equivalentContent property.
        ## @return a void
        ## 
        def equivalent_content=(value)
            @equivalent_content = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "equivalentContent" => lambda {|n| @equivalent_content = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::EquivalentContentOption) },
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
            writer.write_enum_value("equivalentContent", @equivalent_content)
        end
    end
end
