require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Warranty status entity for a given OEM
    class OemWarrantyInformationOnboarding < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies whether warranty API is available. This property is read-only.
        @available
        ## 
        # Specifies whether warranty query is enabled for given OEM. This property is read-only.
        @enabled
        ## 
        # OEM name. This property is read-only.
        @oem_name
        ## 
        ## Gets the available property value. Specifies whether warranty API is available. This property is read-only.
        ## @return a boolean
        ## 
        def available
            return @available
        end
        ## 
        ## Sets the available property value. Specifies whether warranty API is available. This property is read-only.
        ## @param value Value to set for the available property.
        ## @return a void
        ## 
        def available=(value)
            @available = value
        end
        ## 
        ## Instantiates a new oemWarrantyInformationOnboarding and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a oem_warranty_information_onboarding
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OemWarrantyInformationOnboarding.new
        end
        ## 
        ## Gets the enabled property value. Specifies whether warranty query is enabled for given OEM. This property is read-only.
        ## @return a boolean
        ## 
        def enabled
            return @enabled
        end
        ## 
        ## Sets the enabled property value. Specifies whether warranty query is enabled for given OEM. This property is read-only.
        ## @param value Value to set for the enabled property.
        ## @return a void
        ## 
        def enabled=(value)
            @enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "available" => lambda {|n| @available = n.get_boolean_value() },
                "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                "oemName" => lambda {|n| @oem_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the oemName property value. OEM name. This property is read-only.
        ## @return a string
        ## 
        def oem_name
            return @oem_name
        end
        ## 
        ## Sets the oemName property value. OEM name. This property is read-only.
        ## @param value Value to set for the oemName property.
        ## @return a void
        ## 
        def oem_name=(value)
            @oem_name = value
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
