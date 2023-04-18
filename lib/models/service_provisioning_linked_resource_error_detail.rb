require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceProvisioningLinkedResourceErrorDetail < MicrosoftGraphBeta::Models::ServiceProvisioningResourceErrorDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The propertyName property
            @property_name
            ## 
            # The target property
            @target
            ## 
            ## Instantiates a new ServiceProvisioningLinkedResourceErrorDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_provisioning_linked_resource_error_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceProvisioningLinkedResourceErrorDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "propertyName" => lambda {|n| @property_name = n.get_string_value() },
                    "target" => lambda {|n| @target = n.get_string_value() },
                })
            end
            ## 
            ## Gets the propertyName property value. The propertyName property
            ## @return a string
            ## 
            def property_name
                return @property_name
            end
            ## 
            ## Sets the propertyName property value. The propertyName property
            ## @param value Value to set for the property_name property.
            ## @return a void
            ## 
            def property_name=(value)
                @property_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("propertyName", @property_name)
                writer.write_string_value("target", @target)
            end
            ## 
            ## Gets the target property value. The target property
            ## @return a string
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The target property
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
