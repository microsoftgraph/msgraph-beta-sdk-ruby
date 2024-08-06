require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Describes a supersedence relationship between two mobile apps.
        class MobileAppSupersedence < MicrosoftGraphBeta::Models::MobileAppRelationship
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The total number of apps directly or indirectly superseded by the child app. This property is read-only.
            @superseded_app_count
            ## 
            # Indicates the supersedence type associated with a relationship between two mobile apps.
            @supersedence_type
            ## 
            # The total number of apps directly or indirectly superseding the parent app. This property is read-only.
            @superseding_app_count
            ## 
            ## Instantiates a new MobileAppSupersedence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mobileAppSupersedence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_supersedence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppSupersedence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "supersededAppCount" => lambda {|n| @superseded_app_count = n.get_number_value() },
                    "supersedenceType" => lambda {|n| @supersedence_type = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppSupersedenceType) },
                    "supersedingAppCount" => lambda {|n| @superseding_app_count = n.get_number_value() },
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
                writer.write_enum_value("supersedenceType", @supersedence_type)
            end
            ## 
            ## Gets the supersededAppCount property value. The total number of apps directly or indirectly superseded by the child app. This property is read-only.
            ## @return a integer
            ## 
            def superseded_app_count
                return @superseded_app_count
            end
            ## 
            ## Sets the supersededAppCount property value. The total number of apps directly or indirectly superseded by the child app. This property is read-only.
            ## @param value Value to set for the supersededAppCount property.
            ## @return a void
            ## 
            def superseded_app_count=(value)
                @superseded_app_count = value
            end
            ## 
            ## Gets the supersedenceType property value. Indicates the supersedence type associated with a relationship between two mobile apps.
            ## @return a mobile_app_supersedence_type
            ## 
            def supersedence_type
                return @supersedence_type
            end
            ## 
            ## Sets the supersedenceType property value. Indicates the supersedence type associated with a relationship between two mobile apps.
            ## @param value Value to set for the supersedenceType property.
            ## @return a void
            ## 
            def supersedence_type=(value)
                @supersedence_type = value
            end
            ## 
            ## Gets the supersedingAppCount property value. The total number of apps directly or indirectly superseding the parent app. This property is read-only.
            ## @return a integer
            ## 
            def superseding_app_count
                return @superseding_app_count
            end
            ## 
            ## Sets the supersedingAppCount property value. The total number of apps directly or indirectly superseding the parent app. This property is read-only.
            ## @param value Value to set for the supersedingAppCount property.
            ## @return a void
            ## 
            def superseding_app_count=(value)
                @superseding_app_count = value
            end
        end
    end
end
