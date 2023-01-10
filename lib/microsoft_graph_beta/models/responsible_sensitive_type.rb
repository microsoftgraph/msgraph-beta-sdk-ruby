require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ResponsibleSensitiveType
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The description property
        @description
        ## 
        # The id property
        @id
        ## 
        # The name property
        @name
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new responsibleSensitiveType and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a responsible_sensitive_type
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ResponsibleSensitiveType.new
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
                "description" => lambda {|n| @description = n.get_string_value() },
                "id" => lambda {|n| @id = n.get_string_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
                "rulePackageId" => lambda {|n| @rule_package_id = n.get_string_value() },
                "rulePackageType" => lambda {|n| @rule_package_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the id property value. The id property
        ## @return a string
        ## 
        def id
            return @id
        end
        ## 
        ## Sets the id property value. The id property
        ## @param value Value to set for the id property.
        ## @return a void
        ## 
        def id=(value)
            @id = value
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
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("description", @description)
            writer.write_string_value("id", @id)
            writer.write_string_value("name", @name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("publisherName", @publisher_name)
            writer.write_string_value("rulePackageId", @rule_package_id)
            writer.write_string_value("rulePackageType", @rule_package_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
