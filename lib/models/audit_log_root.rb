require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuditLogRoot
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents a custom security attribute audit log.
            @custom_security_attribute_audits
            ## 
            # The directoryAudits property
            @directory_audits
            ## 
            # The directoryProvisioning property
            @directory_provisioning
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents an action performed by the Microsoft Entra provisioning service and its associated properties.
            @provisioning
            ## 
            # The signIns property
            @sign_ins
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new AuditLogRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a audit_log_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuditLogRoot.new
            end
            ## 
            ## Gets the customSecurityAttributeAudits property value. Represents a custom security attribute audit log.
            ## @return a custom_security_attribute_audit
            ## 
            def custom_security_attribute_audits
                return @custom_security_attribute_audits
            end
            ## 
            ## Sets the customSecurityAttributeAudits property value. Represents a custom security attribute audit log.
            ## @param value Value to set for the customSecurityAttributeAudits property.
            ## @return a void
            ## 
            def custom_security_attribute_audits=(value)
                @custom_security_attribute_audits = value
            end
            ## 
            ## Gets the directoryAudits property value. The directoryAudits property
            ## @return a directory_audit
            ## 
            def directory_audits
                return @directory_audits
            end
            ## 
            ## Sets the directoryAudits property value. The directoryAudits property
            ## @param value Value to set for the directoryAudits property.
            ## @return a void
            ## 
            def directory_audits=(value)
                @directory_audits = value
            end
            ## 
            ## Gets the directoryProvisioning property value. The directoryProvisioning property
            ## @return a provisioning_object_summary
            ## 
            def directory_provisioning
                return @directory_provisioning
            end
            ## 
            ## Sets the directoryProvisioning property value. The directoryProvisioning property
            ## @param value Value to set for the directoryProvisioning property.
            ## @return a void
            ## 
            def directory_provisioning=(value)
                @directory_provisioning = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "customSecurityAttributeAudits" => lambda {|n| @custom_security_attribute_audits = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomSecurityAttributeAudit.create_from_discriminator_value(pn) }) },
                    "directoryAudits" => lambda {|n| @directory_audits = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryAudit.create_from_discriminator_value(pn) }) },
                    "directoryProvisioning" => lambda {|n| @directory_provisioning = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProvisioningObjectSummary.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "provisioning" => lambda {|n| @provisioning = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProvisioningObjectSummary.create_from_discriminator_value(pn) }) },
                    "signIns" => lambda {|n| @sign_ins = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SignIn.create_from_discriminator_value(pn) }) },
                }
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
            ## Gets the provisioning property value. Represents an action performed by the Microsoft Entra provisioning service and its associated properties.
            ## @return a provisioning_object_summary
            ## 
            def provisioning
                return @provisioning
            end
            ## 
            ## Sets the provisioning property value. Represents an action performed by the Microsoft Entra provisioning service and its associated properties.
            ## @param value Value to set for the provisioning property.
            ## @return a void
            ## 
            def provisioning=(value)
                @provisioning = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("customSecurityAttributeAudits", @custom_security_attribute_audits)
                writer.write_collection_of_object_values("directoryAudits", @directory_audits)
                writer.write_collection_of_object_values("directoryProvisioning", @directory_provisioning)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("provisioning", @provisioning)
                writer.write_collection_of_object_values("signIns", @sign_ins)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signIns property value. The signIns property
            ## @return a sign_in
            ## 
            def sign_ins
                return @sign_ins
            end
            ## 
            ## Sets the signIns property value. The signIns property
            ## @param value Value to set for the signIns property.
            ## @return a void
            ## 
            def sign_ins=(value)
                @sign_ins = value
            end
        end
    end
end
