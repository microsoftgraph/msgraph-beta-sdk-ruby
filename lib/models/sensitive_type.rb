require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SensitiveType < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The classificationMethod property
            @classification_method
            ## 
            # The description property
            @description
            ## 
            # The name property
            @name
            ## 
            # The publisherName property
            @publisher_name
            ## 
            # The rulePackageId property
            @rule_package_id
            ## 
            # The rulePackageType property
            @rule_package_type
            ## 
            # The scope property
            @scope
            ## 
            # The sensitiveTypeSource property
            @sensitive_type_source
            ## 
            # The state property
            @state
            ## 
            ## Gets the classificationMethod property value. The classificationMethod property
            ## @return a sensitive_type_classification_method
            ## 
            def classification_method
                return @classification_method
            end
            ## 
            ## Sets the classificationMethod property value. The classificationMethod property
            ## @param value Value to set for the classificationMethod property.
            ## @return a void
            ## 
            def classification_method=(value)
                @classification_method = value
            end
            ## 
            ## Instantiates a new sensitiveType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sensitive_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SensitiveType.new
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
                return super.merge({
                    "classificationMethod" => lambda {|n| @classification_method = n.get_enum_value(MicrosoftGraphBeta::Models::SensitiveTypeClassificationMethod) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
                    "rulePackageId" => lambda {|n| @rule_package_id = n.get_string_value() },
                    "rulePackageType" => lambda {|n| @rule_package_type = n.get_string_value() },
                    "scope" => lambda {|n| @scope = n.get_enum_value(MicrosoftGraphBeta::Models::SensitiveTypeScope) },
                    "sensitiveTypeSource" => lambda {|n| @sensitive_type_source = n.get_enum_value(MicrosoftGraphBeta::Models::SensitiveTypeSensitiveTypeSource) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                })
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the publisherName property value. The publisherName property
            ## @return a string
            ## 
            def publisher_name
                return @publisher_name
            end
            ## 
            ## Sets the publisherName property value. The publisherName property
            ## @param value Value to set for the publisherName property.
            ## @return a void
            ## 
            def publisher_name=(value)
                @publisher_name = value
            end
            ## 
            ## Gets the rulePackageId property value. The rulePackageId property
            ## @return a string
            ## 
            def rule_package_id
                return @rule_package_id
            end
            ## 
            ## Sets the rulePackageId property value. The rulePackageId property
            ## @param value Value to set for the rulePackageId property.
            ## @return a void
            ## 
            def rule_package_id=(value)
                @rule_package_id = value
            end
            ## 
            ## Gets the rulePackageType property value. The rulePackageType property
            ## @return a string
            ## 
            def rule_package_type
                return @rule_package_type
            end
            ## 
            ## Sets the rulePackageType property value. The rulePackageType property
            ## @param value Value to set for the rulePackageType property.
            ## @return a void
            ## 
            def rule_package_type=(value)
                @rule_package_type = value
            end
            ## 
            ## Gets the scope property value. The scope property
            ## @return a sensitive_type_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. The scope property
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Gets the sensitiveTypeSource property value. The sensitiveTypeSource property
            ## @return a sensitive_type_sensitive_type_source
            ## 
            def sensitive_type_source
                return @sensitive_type_source
            end
            ## 
            ## Sets the sensitiveTypeSource property value. The sensitiveTypeSource property
            ## @param value Value to set for the sensitiveTypeSource property.
            ## @return a void
            ## 
            def sensitive_type_source=(value)
                @sensitive_type_source = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("classificationMethod", @classification_method)
                writer.write_string_value("description", @description)
                writer.write_string_value("name", @name)
                writer.write_string_value("publisherName", @publisher_name)
                writer.write_string_value("rulePackageId", @rule_package_id)
                writer.write_string_value("rulePackageType", @rule_package_type)
                writer.write_enum_value("scope", @scope)
                writer.write_enum_value("sensitiveTypeSource", @sensitive_type_source)
                writer.write_string_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
