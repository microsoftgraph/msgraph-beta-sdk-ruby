require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GroupWritebackConfiguration < MicrosoftGraphBeta::Models::WritebackConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the target on-premises group type the cloud object is written back as. Nullable. The possible values are: universalDistributionGroup, universalSecurityGroup, universalMailEnabledSecurityGroup.If the cloud group is a unified (Microsoft 365) group, this property can be one of the following: universalDistributionGroup, universalSecurityGroup, universalMailEnabledSecurityGroup. Microsoft Entra security groups can be written back as universalSecurityGroup. If isEnabled or the NewUnifiedGroupWritebackDefault group setting is true but this property isn't explicitly configured: Microsoft 365 groups are written back as universalDistributionGroup by defaultSecurity groups are written back as universalSecurityGroup by default
            @on_premises_group_type
            ## 
            ## Instantiates a new groupWritebackConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a group_writeback_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GroupWritebackConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "onPremisesGroupType" => lambda {|n| @on_premises_group_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the onPremisesGroupType property value. Indicates the target on-premises group type the cloud object is written back as. Nullable. The possible values are: universalDistributionGroup, universalSecurityGroup, universalMailEnabledSecurityGroup.If the cloud group is a unified (Microsoft 365) group, this property can be one of the following: universalDistributionGroup, universalSecurityGroup, universalMailEnabledSecurityGroup. Microsoft Entra security groups can be written back as universalSecurityGroup. If isEnabled or the NewUnifiedGroupWritebackDefault group setting is true but this property isn't explicitly configured: Microsoft 365 groups are written back as universalDistributionGroup by defaultSecurity groups are written back as universalSecurityGroup by default
            ## @return a string
            ## 
            def on_premises_group_type
                return @on_premises_group_type
            end
            ## 
            ## Sets the onPremisesGroupType property value. Indicates the target on-premises group type the cloud object is written back as. Nullable. The possible values are: universalDistributionGroup, universalSecurityGroup, universalMailEnabledSecurityGroup.If the cloud group is a unified (Microsoft 365) group, this property can be one of the following: universalDistributionGroup, universalSecurityGroup, universalMailEnabledSecurityGroup. Microsoft Entra security groups can be written back as universalSecurityGroup. If isEnabled or the NewUnifiedGroupWritebackDefault group setting is true but this property isn't explicitly configured: Microsoft 365 groups are written back as universalDistributionGroup by defaultSecurity groups are written back as universalSecurityGroup by default
            ## @param value Value to set for the onPremisesGroupType property.
            ## @return a void
            ## 
            def on_premises_group_type=(value)
                @on_premises_group_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("onPremisesGroupType", @on_premises_group_type)
            end
        end
    end
end
