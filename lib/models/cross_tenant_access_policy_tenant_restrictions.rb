require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CrossTenantAccessPolicyTenantRestrictions < MicrosoftGraphBeta::Models::CrossTenantAccessPolicyB2BSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the rule for filtering devices and whether devices satisfying the rule should be allowed or blocked. Not implemented.
            @devices
            ## 
            ## Instantiates a new crossTenantAccessPolicyTenantRestrictions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy_tenant_restrictions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicyTenantRestrictions.new
            end
            ## 
            ## Gets the devices property value. Defines the rule for filtering devices and whether devices satisfying the rule should be allowed or blocked. Not implemented.
            ## @return a devices_filter
            ## 
            def devices
                return @devices
            end
            ## 
            ## Sets the devices property value. Defines the rule for filtering devices and whether devices satisfying the rule should be allowed or blocked. Not implemented.
            ## @param value Value to set for the devices property.
            ## @return a void
            ## 
            def devices=(value)
                @devices = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "devices" => lambda {|n| @devices = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DevicesFilter.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("devices", @devices)
            end
        end
    end
end
