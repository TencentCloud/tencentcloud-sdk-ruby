# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
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
      # 表示应用实例的软件授权，包含颁发信息、激活信息等内容。
      class License < TencentCloud::Common::AbstractModel
        # @param LicenseId: License ID
        # @type LicenseId: String
        # @param LicenseMode: 软件授权模式。<table><thead><tr><th>枚举值</th><th>说明</th></tr></thead><tbody><tr><td>Permanent</td><td>永久授权。该授权不受有效期限制。</td></tr><tr><td>Subscription</td><td>订阅授权。授权如果过了有效期，则会进入过期状态。</td></tr></tbody></table>
        # @type LicenseMode: String
        # @param LicenseStatus: 软件的授权状态。<table><thead><tr><th>枚举值</th><th>说明</th></tr></thead><tbody><tr><td>Issued</td><td>已颁发，等待激活。一般来说，如果软件已经在运行，不会出现该状态。</td></tr><tr><td>Active</td><td>授权在有效期内，这是软件运行期间最常见的状态。</td></tr><tr><td>Expired</td><td>授权已过期。订阅类的软件授权有有效期，如果服务器时间已晚于有效期，则会进入过期状态。</td></tr><tr><td>Isolated</td><td>授权已隔离。有截止日期的授权，当用户授权到期时，先进入此状态，用户可以去续费，超过7天不续费则授权进入Destroyed状态。</td></tr><tr><td>Destroyed</td><td>授权已失效/销毁。用户如果退货软件，则授权会自动失效。</td></tr></tbody></table>
        # @type LicenseStatus: String
        # @param ProviderId: 软件供应方 ID。
        # @type ProviderId: Integer
        # @param SoftwarePackageId: 软件包 ID。
        # @type SoftwarePackageId: String
        # @param SoftwarePackageVersion: 软件包版本。
        # @type SoftwarePackageVersion: String
        # @param AuthorizedUserUin: 被授权的用户 UIN。
        # @type AuthorizedUserUin: String
        # @param AuthorizedCloudappId: 被授权的应用实例 ID。
        # @type AuthorizedCloudappId: String
        # @param AuthorizedCloudappRoleId: 被授权的角色 ID。
        # @type AuthorizedCloudappRoleId: String
        # @param AuthorizedSpecification: 被授权的软件规格，具体字段请参考结构SaleParam
        # @type AuthorizedSpecification: Array
        # @param BillingMode: 被授权的软件的计费模式。<table><thead><tr><th>枚举值</th><th>说明</th></tr></thead><tbody><tr><td>1</td><td>线上计费，软件的授权从腾讯云线上购买，支持续费、退款等操作。</td></tr><tr><td>2</td><td>线下计费，软件的授权线下签订合同购买，定向客户交付，无法从线上续费和退款。</td></tr><tr><td>4</td><td>免费</td></tr></tbody></table>
        # @type BillingMode: Integer
        # @param LifeSpan: 授权时长（单位由LifeSpanUnit确定，枚举值有Y年/M月/D日三种）
        # @type LifeSpan: Integer
        # @param IssueDate: 授权颁发时间。
        # @type IssueDate: String
        # @param ActivationDate: 授权激活时间，如从未激活则返回 null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivationDate: String
        # @param ExpirationDate: 授权过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpirationDate: String
        # @param LifeSpanUnit: 授权时长单位，枚举值有Y年/M月/D日三种
        # @type LifeSpanUnit: String
        # @param LicenseType: 授权的类型：Standard正式版/Development开发版/Trial体验版
        # @type LicenseType: String

        attr_accessor :LicenseId, :LicenseMode, :LicenseStatus, :ProviderId, :SoftwarePackageId, :SoftwarePackageVersion, :AuthorizedUserUin, :AuthorizedCloudappId, :AuthorizedCloudappRoleId, :AuthorizedSpecification, :BillingMode, :LifeSpan, :IssueDate, :ActivationDate, :ExpirationDate, :LifeSpanUnit, :LicenseType

        def initialize(licenseid=nil, licensemode=nil, licensestatus=nil, providerid=nil, softwarepackageid=nil, softwarepackageversion=nil, authorizeduseruin=nil, authorizedcloudappid=nil, authorizedcloudapproleid=nil, authorizedspecification=nil, billingmode=nil, lifespan=nil, issuedate=nil, activationdate=nil, expirationdate=nil, lifespanunit=nil, licensetype=nil)
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
        end
      end

      # 表示商品 SKU 的单个售卖参数
      class SaleParam < TencentCloud::Common::AbstractModel
        # @param ParamKey: 售卖参数标识
        # @type ParamKey: String
        # @param ParamValue: 售卖参数值
        # @type ParamValue: String
        # @param ParamKeyName: 售卖参数的展示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKeyName: String
        # @param ParamValueName: 售卖参数值的展示名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValueName: String

        attr_accessor :ParamKey, :ParamValue, :ParamKeyName, :ParamValueName

        def initialize(paramkey=nil, paramvalue=nil, paramkeyname=nil, paramvaluename=nil)
          @ParamKey = paramkey
          @ParamValue = paramvalue
          @ParamKeyName = paramkeyname
          @ParamValueName = paramvaluename
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
          @ParamKeyName = params['ParamKeyName']
          @ParamValueName = params['ParamValueName']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :License, :RequestId

        def initialize(license=nil, requestid=nil)
          @License = license
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['License'].nil?
            @License = License.new
            @License.deserialize(params['License'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

