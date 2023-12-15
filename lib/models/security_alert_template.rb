require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAlertTemplate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The category property
            @category
            ## 
            # The description property
            @description
            ## 
            # The impactedAssets property
            @impacted_assets
            ## 
            # The mitreTechniques property
            @mitre_techniques
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recommendedActions property
            @recommended_actions
            ## 
            # The severity property
            @severity
            ## 
            # The title property
            @title
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new securityAlertTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_alert_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAlertTemplate.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "impactedAssets" => lambda {|n| @impacted_assets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityImpactedAsset.create_from_discriminator_value(pn) }) },
                    "mitreTechniques" => lambda {|n| @mitre_techniques = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommendedActions" => lambda {|n| @recommended_actions = n.get_string_value() },
                    "severity" => lambda {|n| @severity = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAlertSeverity) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                }
            end
            ## 
            ## Gets the impactedAssets property value. The impactedAssets property
            ## @return a security_impacted_asset
            ## 
            def impacted_assets
                return @impacted_assets
            end
            ## 
            ## Sets the impactedAssets property value. The impactedAssets property
            ## @param value Value to set for the impactedAssets property.
            ## @return a void
            ## 
            def impacted_assets=(value)
                @impacted_assets = value
            end
            ## 
            ## Gets the mitreTechniques property value. The mitreTechniques property
            ## @return a string
            ## 
            def mitre_techniques
                return @mitre_techniques
            end
            ## 
            ## Sets the mitreTechniques property value. The mitreTechniques property
            ## @param value Value to set for the mitreTechniques property.
            ## @return a void
            ## 
            def mitre_techniques=(value)
                @mitre_techniques = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the recommendedActions property value. The recommendedActions property
            ## @return a string
            ## 
            def recommended_actions
                return @recommended_actions
            end
            ## 
            ## Sets the recommendedActions property value. The recommendedActions property
            ## @param value Value to set for the recommendedActions property.
            ## @return a void
            ## 
            def recommended_actions=(value)
                @recommended_actions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("category", @category)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("impactedAssets", @impacted_assets)
                writer.write_collection_of_primitive_values("mitreTechniques", @mitre_techniques)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("recommendedActions", @recommended_actions)
                writer.write_enum_value("severity", @severity)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the severity property value. The severity property
            ## @return a security_alert_severity
            ## 
            def severity
                return @severity
            end
            ## 
            ## Sets the severity property value. The severity property
            ## @param value Value to set for the severity property.
            ## @return a void
            ## 
            def severity=(value)
                @severity = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
