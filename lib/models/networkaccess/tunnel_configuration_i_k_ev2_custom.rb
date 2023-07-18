require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class TunnelConfigurationIKEv2Custom < MicrosoftGraphBeta::Models::Networkaccess::TunnelConfiguration
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The dhGroup property
                @dh_group
                ## 
                # The ikeEncryption property
                @ike_encryption
                ## 
                # The ikeIntegrity property
                @ike_integrity
                ## 
                # The ipSecEncryption property
                @ip_sec_encryption
                ## 
                # The ipSecIntegrity property
                @ip_sec_integrity
                ## 
                # The pfsGroup property
                @pfs_group
                ## 
                # a standard specifiying Security Association lifetime with recommended values from an RFC standard.
                @sa_life_time_seconds
                ## 
                ## Instantiates a new tunnelConfigurationIKEv2Custom and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Custom"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tunnel_configuration_i_k_ev2_custom
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TunnelConfigurationIKEv2Custom.new
                end
                ## 
                ## Gets the dhGroup property value. The dhGroup property
                ## @return a dh_group
                ## 
                def dh_group
                    return @dh_group
                end
                ## 
                ## Sets the dhGroup property value. The dhGroup property
                ## @param value Value to set for the dh_group property.
                ## @return a void
                ## 
                def dh_group=(value)
                    @dh_group = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "dhGroup" => lambda {|n| @dh_group = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::DhGroup) },
                        "ikeEncryption" => lambda {|n| @ike_encryption = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::IkeEncryption) },
                        "ikeIntegrity" => lambda {|n| @ike_integrity = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::IkeIntegrity) },
                        "ipSecEncryption" => lambda {|n| @ip_sec_encryption = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::IpSecEncryption) },
                        "ipSecIntegrity" => lambda {|n| @ip_sec_integrity = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::IpSecIntegrity) },
                        "pfsGroup" => lambda {|n| @pfs_group = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::PfsGroup) },
                        "saLifeTimeSeconds" => lambda {|n| @sa_life_time_seconds = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the ikeEncryption property value. The ikeEncryption property
                ## @return a ike_encryption
                ## 
                def ike_encryption
                    return @ike_encryption
                end
                ## 
                ## Sets the ikeEncryption property value. The ikeEncryption property
                ## @param value Value to set for the ike_encryption property.
                ## @return a void
                ## 
                def ike_encryption=(value)
                    @ike_encryption = value
                end
                ## 
                ## Gets the ikeIntegrity property value. The ikeIntegrity property
                ## @return a ike_integrity
                ## 
                def ike_integrity
                    return @ike_integrity
                end
                ## 
                ## Sets the ikeIntegrity property value. The ikeIntegrity property
                ## @param value Value to set for the ike_integrity property.
                ## @return a void
                ## 
                def ike_integrity=(value)
                    @ike_integrity = value
                end
                ## 
                ## Gets the ipSecEncryption property value. The ipSecEncryption property
                ## @return a ip_sec_encryption
                ## 
                def ip_sec_encryption
                    return @ip_sec_encryption
                end
                ## 
                ## Sets the ipSecEncryption property value. The ipSecEncryption property
                ## @param value Value to set for the ip_sec_encryption property.
                ## @return a void
                ## 
                def ip_sec_encryption=(value)
                    @ip_sec_encryption = value
                end
                ## 
                ## Gets the ipSecIntegrity property value. The ipSecIntegrity property
                ## @return a ip_sec_integrity
                ## 
                def ip_sec_integrity
                    return @ip_sec_integrity
                end
                ## 
                ## Sets the ipSecIntegrity property value. The ipSecIntegrity property
                ## @param value Value to set for the ip_sec_integrity property.
                ## @return a void
                ## 
                def ip_sec_integrity=(value)
                    @ip_sec_integrity = value
                end
                ## 
                ## Gets the pfsGroup property value. The pfsGroup property
                ## @return a pfs_group
                ## 
                def pfs_group
                    return @pfs_group
                end
                ## 
                ## Sets the pfsGroup property value. The pfsGroup property
                ## @param value Value to set for the pfs_group property.
                ## @return a void
                ## 
                def pfs_group=(value)
                    @pfs_group = value
                end
                ## 
                ## Gets the saLifeTimeSeconds property value. a standard specifiying Security Association lifetime with recommended values from an RFC standard.
                ## @return a int64
                ## 
                def sa_life_time_seconds
                    return @sa_life_time_seconds
                end
                ## 
                ## Sets the saLifeTimeSeconds property value. a standard specifiying Security Association lifetime with recommended values from an RFC standard.
                ## @param value Value to set for the sa_life_time_seconds property.
                ## @return a void
                ## 
                def sa_life_time_seconds=(value)
                    @sa_life_time_seconds = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_enum_value("dhGroup", @dh_group)
                    writer.write_enum_value("ikeEncryption", @ike_encryption)
                    writer.write_enum_value("ikeIntegrity", @ike_integrity)
                    writer.write_enum_value("ipSecEncryption", @ip_sec_encryption)
                    writer.write_enum_value("ipSecIntegrity", @ip_sec_integrity)
                    writer.write_enum_value("pfsGroup", @pfs_group)
                    writer.write_object_value("saLifeTimeSeconds", @sa_life_time_seconds)
                end
            end
        end
    end
end
