# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module TencentCloud
  module Cloudapp
    module V20220530
      # DescribeLicense请求参数结构体
      class DescribeLicenseRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 可选过滤器
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeLicense返回参数结构体
      class DescribeLicenseResponse < TencentCloud::Common::AbstractModel
        # @param Token: 针对上面raw的签名
        # @type Token: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Token, :RequestId

        def initialize(token=nil, requestid=nil)
          @Token = token
          @RequestId = requestid
        end

        def deserialize(params)
          @Token = params['Token']
          @RequestId = params['RequestId']
        end
      end

      # 元数据展示信息
      class DisplayMetadata < TencentCloud::Common::AbstractModel
        # @param Name: <p>展示的名称</p>
        # @type Name: String
        # @param Value: <p>展示的值</p>
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤 ID、名称、状态等

      # - 若存在多个 Filter 时，Filter间的关系为逻辑与（AND）关系。
      # - 若同一个 Filter 存在多个 Values，同一 Filter 下 Values 间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段
        # @type Name: String
        # @param Values: 字段的过滤值
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 表示应用实例的软件授权，包含颁发信息、激活信息等内容。
      class License < TencentCloud::Common::AbstractModel
        # @param LicenseId: <p>License ID</p>
        # @type LicenseId: String
        # @param LicenseMode: <p>软件授权模式。<table><thead><tr><th>枚举值</th><th>说明</th></tr></thead><tbody><tr><td>Permanent</td><td>永久授权。该授权不受有效期限制。</td></tr><tr><td>Subscription</td><td>订阅授权。授权如果过了有效期，则会进入过期状态。</td></tr><tr><td>Accept</td><td>验收期授权。用于需要验收的软件处于验收期间的授权，授权如果过了验收有效期，则会进入过期状态。</td></tr></tbody></table></p>
        # @type LicenseMode: String
        # @param LicenseStatus: <p>软件的授权状态。<table><thead><tr><th>枚举值</th><th>说明</th></tr></thead><tbody><tr><td>Issued</td><td>已颁发，等待激活。一般来说，如果软件已经在运行，不会出现该状态。</td></tr><tr><td>Active</td><td>授权在有效期内，这是软件运行期间最常见的状态。</td></tr><tr><td>Expired</td><td>授权已过期。订阅类的软件授权有有效期，如果服务器时间已晚于有效期，则会进入过期状态。</td></tr><tr><td>Isolated</td><td>授权已隔离。有截止日期的授权，当用户授权到期时，先进入此状态，用户可以去续费，超过7天不续费则授权进入Destroyed状态。</td></tr><tr><td>Destroyed</td><td>授权已失效/销毁。用户如果退货软件，则授权会自动失效。</td></tr></tbody></table></p>
        # @type LicenseStatus: String
        # @param ProviderId: <p>软件供应方 ID。</p>
        # @type ProviderId: Integer
        # @param SoftwarePackageId: <p>软件包 ID。</p>
        # @type SoftwarePackageId: String
        # @param SoftwarePackageVersion: <p>软件包版本。</p>
        # @type SoftwarePackageVersion: String
        # @param AuthorizedUserUin: <p>被授权的用户 UIN。</p>
        # @type AuthorizedUserUin: String
        # @param AuthorizedCloudappId: <p>被授权的应用实例 ID。</p>
        # @type AuthorizedCloudappId: String
        # @param AuthorizedCloudappRoleId: <p>被授权的角色 ID。</p>
        # @type AuthorizedCloudappRoleId: String
        # @param AuthorizedSpecification: <p>被授权的软件规格，具体字段请参考结构SaleParam</p>
        # @type AuthorizedSpecification: Array
        # @param BillingMode: <p>被授权的软件的计费模式。<table><thead><tr><th>枚举值</th><th>说明</th></tr></thead><tbody><tr><td>1</td><td>线上计费，软件的授权从腾讯云线上购买，支持续费、退款等操作。</td></tr><tr><td>2</td><td>线下计费，软件的授权线下签订合同购买，定向客户交付，无法从线上续费和退款。</td></tr><tr><td>4</td><td>免费</td></tr></tbody></table></p>
        # @type BillingMode: Integer
        # @param LifeSpan: <p>授权时长（单位由LifeSpanUnit确定，枚举值有Y年/M月/D日三种）</p>
        # @type LifeSpan: Integer
        # @param IssueDate: <p>授权颁发时间。</p>
        # @type IssueDate: String
        # @param ActivationDate: <p>授权激活时间，如从未激活则返回 null。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivationDate: String
        # @param ExpirationDate: <p>授权过期时间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpirationDate: String
        # @param LifeSpanUnit: <p>授权时长单位，枚举值有Y年/M月/D日三种</p>
        # @type LifeSpanUnit: String
        # @param LicenseType: <p>授权的类型：Standard正式版/Development开发版/Trial体验版</p>
        # @type LicenseType: String
        # @param LicenseLevel: <p>授权的层级：Master 主授权；Child 子授权/增强型授权</p>
        # @type LicenseLevel: String
        # @param LicenseData: <p>License 内容信息</p>
        # @type LicenseData: :class:`Tencentcloud::Cloudapp.v20220530.models.LicenseData`
        # @param IssueURL: <p>License 颁发地址</p>
        # @type IssueURL: String
        # @param ProviderUin: <p>商品供应商 UIN</p>
        # @type ProviderUin: String
        # @param CreateSource: <p>License 创建来源 ID</p>
        # @type CreateSource: String

        attr_accessor :LicenseId, :LicenseMode, :LicenseStatus, :ProviderId, :SoftwarePackageId, :SoftwarePackageVersion, :AuthorizedUserUin, :AuthorizedCloudappId, :AuthorizedCloudappRoleId, :AuthorizedSpecification, :BillingMode, :LifeSpan, :IssueDate, :ActivationDate, :ExpirationDate, :LifeSpanUnit, :LicenseType, :LicenseLevel, :LicenseData, :IssueURL, :ProviderUin, :CreateSource

        def initialize(licenseid=nil, licensemode=nil, licensestatus=nil, providerid=nil, softwarepackageid=nil, softwarepackageversion=nil, authorizeduseruin=nil, authorizedcloudappid=nil, authorizedcloudapproleid=nil, authorizedspecification=nil, billingmode=nil, lifespan=nil, issuedate=nil, activationdate=nil, expirationdate=nil, lifespanunit=nil, licensetype=nil, licenselevel=nil, licensedata=nil, issueurl=nil, provideruin=nil, createsource=nil)
          @LicenseId = licenseid
          @LicenseMode = licensemode
          @LicenseStatus = licensestatus
          @ProviderId = providerid
          @SoftwarePackageId = softwarepackageid
          @SoftwarePackageVersion = softwarepackageversion
          @AuthorizedUserUin = authorizeduseruin
          @AuthorizedCloudappId = authorizedcloudappid
          @AuthorizedCloudappRoleId = authorizedcloudapproleid
          @AuthorizedSpecification = authorizedspecification
          @BillingMode = billingmode
          @LifeSpan = lifespan
          @IssueDate = issuedate
          @ActivationDate = activationdate
          @ExpirationDate = expirationdate
          @LifeSpanUnit = lifespanunit
          @LicenseType = licensetype
          @LicenseLevel = licenselevel
          @LicenseData = licensedata
          @IssueURL = issueurl
          @ProviderUin = provideruin
          @CreateSource = createsource
        end

        def deserialize(params)
          @LicenseId = params['LicenseId']
          @LicenseMode = params['LicenseMode']
          @LicenseStatus = params['LicenseStatus']
          @ProviderId = params['ProviderId']
          @SoftwarePackageId = params['SoftwarePackageId']
          @SoftwarePackageVersion = params['SoftwarePackageVersion']
          @AuthorizedUserUin = params['AuthorizedUserUin']
          @AuthorizedCloudappId = params['AuthorizedCloudappId']
          @AuthorizedCloudappRoleId = params['AuthorizedCloudappRoleId']
          unless params['AuthorizedSpecification'].nil?
            @AuthorizedSpecification = []
            params['AuthorizedSpecification'].each do |i|
              saleparam_tmp = SaleParam.new
              saleparam_tmp.deserialize(i)
              @AuthorizedSpecification << saleparam_tmp
            end
          end
          @BillingMode = params['BillingMode']
          @LifeSpan = params['LifeSpan']
          @IssueDate = params['IssueDate']
          @ActivationDate = params['ActivationDate']
          @ExpirationDate = params['ExpirationDate']
          @LifeSpanUnit = params['LifeSpanUnit']
          @LicenseType = params['LicenseType']
          @LicenseLevel = params['LicenseLevel']
          unless params['LicenseData'].nil?
            @LicenseData = LicenseData.new
            @LicenseData.deserialize(params['LicenseData'])
          end
          @IssueURL = params['IssueURL']
          @ProviderUin = params['ProviderUin']
          @CreateSource = params['CreateSource']
        end
      end

      # License 内容信息
      class LicenseData < TencentCloud::Common::AbstractModel
        # @param Text: <p>License 文本内容。支持密钥、证书等文本形式，二进制的密钥需要伙伴进行 base64 转码</p>
        # @type Text: String
        # @param DeploymentOutput: <p>部署服务输出信息，基于部署签发 License 时需要该参数。</p>
        # @type DeploymentOutput: String
        # @param Metadata: <p>License 前端展示信息。key、value 形式，比如可传入，颁发机构：XXXX 有限公司</p>
        # @type Metadata: Array

        attr_accessor :Text, :DeploymentOutput, :Metadata

        def initialize(text=nil, deploymentoutput=nil, metadata=nil)
          @Text = text
          @DeploymentOutput = deploymentoutput
          @Metadata = metadata
        end

        def deserialize(params)
          @Text = params['Text']
          @DeploymentOutput = params['DeploymentOutput']
          unless params['Metadata'].nil?
            @Metadata = []
            params['Metadata'].each do |i|
              displaymetadata_tmp = DisplayMetadata.new
              displaymetadata_tmp.deserialize(i)
              @Metadata << displaymetadata_tmp
            end
          end
        end
      end

      # 表示商品 SKU 的单个售卖参数
      class SaleParam < TencentCloud::Common::AbstractModel
        # @param ParamKey: 售卖参数标识
        # @type ParamKey: String
        # @param ParamKeyName: 售卖参数的展示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKeyName: String
        # @param ParamId: 参数 Id
        # @type ParamId: String
        # @param ParamValueId: 参数值 Id
        # @type ParamValueId: String
        # @param ParamValue: 售卖参数值，当ParamType=Quant时，该值有可能为Null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValue: String
        # @param ParamValueName: 售卖参数值的展示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValueName: String
        # @param ParamType: 售卖参数的类型，目前支持枚举类Enum/数量类Quant
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamType: String
        # @param ModuleId: 模块ID
        # @type ModuleId: String
        # @param ModuleKey: 模块key
        # @type ModuleKey: String
        # @param ModuleName: 模块名称
        # @type ModuleName: String

        attr_accessor :ParamKey, :ParamKeyName, :ParamId, :ParamValueId, :ParamValue, :ParamValueName, :ParamType, :ModuleId, :ModuleKey, :ModuleName

        def initialize(paramkey=nil, paramkeyname=nil, paramid=nil, paramvalueid=nil, paramvalue=nil, paramvaluename=nil, paramtype=nil, moduleid=nil, modulekey=nil, modulename=nil)
          @ParamKey = paramkey
          @ParamKeyName = paramkeyname
          @ParamId = paramid
          @ParamValueId = paramvalueid
          @ParamValue = paramvalue
          @ParamValueName = paramvaluename
          @ParamType = paramtype
          @ModuleId = moduleid
          @ModuleKey = modulekey
          @ModuleName = modulename
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamKeyName = params['ParamKeyName']
          @ParamId = params['ParamId']
          @ParamValueId = params['ParamValueId']
          @ParamValue = params['ParamValue']
          @ParamValueName = params['ParamValueName']
          @ParamType = params['ParamType']
          @ModuleId = params['ModuleId']
          @ModuleKey = params['ModuleKey']
          @ModuleName = params['ModuleName']
        end
      end

      # VerifyLicense请求参数结构体
      class VerifyLicenseRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # VerifyLicense返回参数结构体
      class VerifyLicenseResponse < TencentCloud::Common::AbstractModel
        # @param License: 软件的详细授权信息。
        # @type License: :class:`Tencentcloud::Cloudapp.v20220530.models.License`
        # @param Timestamp: 当前请求服务端的时间戳，格式为RFC3339
        # @type Timestamp: String
        # @param Signature: 对License字段对应的json数据的签名
        # @type Signature: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :License, :Timestamp, :Signature, :RequestId

        def initialize(license=nil, timestamp=nil, signature=nil, requestid=nil)
          @License = license
          @Timestamp = timestamp
          @Signature = signature
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['License'].nil?
            @License = License.new
            @License.deserialize(params['License'])
          end
          @Timestamp = params['Timestamp']
          @Signature = params['Signature']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

