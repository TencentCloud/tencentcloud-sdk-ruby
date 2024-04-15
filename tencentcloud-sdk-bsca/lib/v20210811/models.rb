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
  module Bsca
    module V20210811
      # 受漏洞影响的组件信息。
      class AffectedComponent < TencentCloud::Common::AbstractModel
        # @param Name: 受漏洞影响的组件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param AffectedVersionList: 受漏洞影响的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedVersionList: Array
        # @param FixedVersionList: 修复此漏洞的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FixedVersionList: Array

        attr_accessor :Name, :AffectedVersionList, :FixedVersionList

        def initialize(name=nil, affectedversionlist=nil, fixedversionlist=nil)
          @Name = name
          @AffectedVersionList = affectedversionlist
          @FixedVersionList = fixedversionlist
        end

        def deserialize(params)
          @Name = params['Name']
          @AffectedVersionList = params['AffectedVersionList']
          @FixedVersionList = params['FixedVersionList']
        end
      end

      # CVSSv2.0详细信息。
      class CVSSV2Info < TencentCloud::Common::AbstractModel
        # @param CVSS: CVE评分。
        # @type CVSS: Float
        # @param AccessVector: AccessVector 攻击途径。
        # 取值范围：
        # <li>NETWORK 远程</li>
        # <li>ADJACENT_NETWORK 近邻</li>
        # <li>LOCAL 本地</li>
        # @type AccessVector: String
        # @param AccessComplexity: AccessComplexity 攻击复杂度。
        # 取值范围：
        # <li>HIGH 高</li>
        # <li>MEDIUM 中</li>
        # <li>LOW 低</li>
        # @type AccessComplexity: String
        # @param Authentication: Authentication 身份验证。
        # 取值范围：
        # <li>MULTIPLE 多系统认证</li>
        # <li>SINGLE 单系统认证</li>
        # <li>NONE 无</li>
        # @type Authentication: String
        # @param ConImpact: ConfidentialityImpact 机密性影响。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>PARTIAL 部分</li>
        # <li>COMPLETE 完整</li>
        # @type ConImpact: String
        # @param IntegrityImpact: IntegrityImpact 完整性影响。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>PARTIAL 部分</li>
        # <li>COMPLETE 完整</li>
        # @type IntegrityImpact: String
        # @param AvailabilityImpact: AvailabilityImpact 可用性影响。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>PARTIAL 部分</li>
        # <li>COMPLETE 完整</li>
        # @type AvailabilityImpact: String

        attr_accessor :CVSS, :AccessVector, :AccessComplexity, :Authentication, :ConImpact, :IntegrityImpact, :AvailabilityImpact

        def initialize(cvss=nil, accessvector=nil, accesscomplexity=nil, authentication=nil, conimpact=nil, integrityimpact=nil, availabilityimpact=nil)
          @CVSS = cvss
          @AccessVector = accessvector
          @AccessComplexity = accesscomplexity
          @Authentication = authentication
          @ConImpact = conimpact
          @IntegrityImpact = integrityimpact
          @AvailabilityImpact = availabilityimpact
        end

        def deserialize(params)
          @CVSS = params['CVSS']
          @AccessVector = params['AccessVector']
          @AccessComplexity = params['AccessComplexity']
          @Authentication = params['Authentication']
          @ConImpact = params['ConImpact']
          @IntegrityImpact = params['IntegrityImpact']
          @AvailabilityImpact = params['AvailabilityImpact']
        end
      end

      # Cvssv3.0详细信息。
      class CVSSV3Info < TencentCloud::Common::AbstractModel
        # @param CVSS: CVE评分。
        # @type CVSS: Float
        # @param AttackVector: AttackVector 攻击途径。
        # 取值范围：
        # <li>NETWORK 远程</li>
        # <li>ADJACENT_NETWORK 近邻</li>
        # <li>LOCAL 本地</li>
        # <li>PHYSICAL 物理</li>
        # @type AttackVector: String
        # @param AttackComplexity: AttackComplexity 攻击复杂度。
        # 取值范围：
        # <li>HIGH 高</li>
        # <li>LOW 低</li>
        # @type AttackComplexity: String
        # @param PrivilegesRequired: PrivilegesRequired 触发特权。
        # 取值范围：
        # <li>HIGH 高</li>
        # <li>LOW 低</li>
        # <li>NONE 无</li>
        # @type PrivilegesRequired: String
        # @param UserInteraction: UserInteraction 交互必要性。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>REQUIRED 需要</li>
        # @type UserInteraction: String
        # @param Scope: Scope 绕过安全边界。
        # 取值范围：
        # <li>UNCHANGED 否</li>
        # <li>CHANGED 能</li>
        # @type Scope: String
        # @param ConImpact: ConfidentialityImpact 机密性影响。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>LOW 低</li>
        # <li>HIGH 高</li>
        # @type ConImpact: String
        # @param IntegrityImpact: IntegrityImpact 完整性影响。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>LOW 低</li>
        # <li>HIGH 高</li>
        # @type IntegrityImpact: String
        # @param AvailabilityImpact: AvailabilityImpact 可用性影响。
        # 取值范围：
        # <li>NONE 无</li>
        # <li>LOW 低</li>
        # <li>HIGH 高</li>
        # @type AvailabilityImpact: String

        attr_accessor :CVSS, :AttackVector, :AttackComplexity, :PrivilegesRequired, :UserInteraction, :Scope, :ConImpact, :IntegrityImpact, :AvailabilityImpact

        def initialize(cvss=nil, attackvector=nil, attackcomplexity=nil, privilegesrequired=nil, userinteraction=nil, scope=nil, conimpact=nil, integrityimpact=nil, availabilityimpact=nil)
          @CVSS = cvss
          @AttackVector = attackvector
          @AttackComplexity = attackcomplexity
          @PrivilegesRequired = privilegesrequired
          @UserInteraction = userinteraction
          @Scope = scope
          @ConImpact = conimpact
          @IntegrityImpact = integrityimpact
          @AvailabilityImpact = availabilityimpact
        end

        def deserialize(params)
          @CVSS = params['CVSS']
          @AttackVector = params['AttackVector']
          @AttackComplexity = params['AttackComplexity']
          @PrivilegesRequired = params['PrivilegesRequired']
          @UserInteraction = params['UserInteraction']
          @Scope = params['Scope']
          @ConImpact = params['ConImpact']
          @IntegrityImpact = params['IntegrityImpact']
          @AvailabilityImpact = params['AvailabilityImpact']
        end
      end

      # 描述一个第三方组件的源信息。
      class Component < TencentCloud::Common::AbstractModel
        # @param PURL: 第三方组件的PURL
        # @type PURL: :class:`Tencentcloud::Bsca.v20210811.models.PURL`
        # @param Homepage: 第三方组件的主页
        # @type Homepage: String
        # @param Summary: 第三方组件的简介
        # @type Summary: String
        # @param NicknameList: 第三方组件的别名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NicknameList: Array
        # @param CodeLocationList: 第三方组件的代码位置列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeLocationList: Array
        # @param LicenseExpression: 第三方组件的许可证表达式
        # @type LicenseExpression: String

        attr_accessor :PURL, :Homepage, :Summary, :NicknameList, :CodeLocationList, :LicenseExpression

        def initialize(purl=nil, homepage=nil, summary=nil, nicknamelist=nil, codelocationlist=nil, licenseexpression=nil)
          @PURL = purl
          @Homepage = homepage
          @Summary = summary
          @NicknameList = nicknamelist
          @CodeLocationList = codelocationlist
          @LicenseExpression = licenseexpression
        end

        def deserialize(params)
          unless params['PURL'].nil?
            @PURL = PURL.new
            @PURL.deserialize(params['PURL'])
          end
          @Homepage = params['Homepage']
          @Summary = params['Summary']
          @NicknameList = params['NicknameList']
          @CodeLocationList = params['CodeLocationList']
          @LicenseExpression = params['LicenseExpression']
        end
      end

      # 描述组件的一条版本信息。
      class ComponentVersion < TencentCloud::Common::AbstractModel
        # @param PURL: 该组件的PURL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PURL: :class:`Tencentcloud::Bsca.v20210811.models.PURL`
        # @param LicenseExpression: 该组件版本的许可证表达式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseExpression: String

        attr_accessor :PURL, :LicenseExpression

        def initialize(purl=nil, licenseexpression=nil)
          @PURL = purl
          @LicenseExpression = licenseexpression
        end

        def deserialize(params)
          unless params['PURL'].nil?
            @PURL = PURL.new
            @PURL.deserialize(params['PURL'])
          end
          @LicenseExpression = params['LicenseExpression']
        end
      end

      # 与输入组件相关的漏洞信息摘要信息。
      class ComponentVulnerabilitySummary < TencentCloud::Common::AbstractModel
        # @param PURL: 用于匹配漏洞的PURL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PURL: :class:`Tencentcloud::Bsca.v20210811.models.PURL`
        # @param CanBeFixed: 该组件是否包含修复漏洞的官方补丁
        # @type CanBeFixed: Boolean
        # @param FixedVersion: 修复漏洞的组件版本号
        # @type FixedVersion: String
        # @param AffectedVersion: 漏洞影响的组件版本号
        # @type AffectedVersion: String
        # @param AffectedComponent: 漏洞影响组件
        # @type AffectedComponent: String
        # @param RiskLevel: 漏洞在该产品中的风险等级
        # <li>Critical</li>
        # <li>High</li>
        # <li>Medium</li>
        # <li>Low</li>
        # @type RiskLevel: String

        attr_accessor :PURL, :CanBeFixed, :FixedVersion, :AffectedVersion, :AffectedComponent, :RiskLevel

        def initialize(purl=nil, canbefixed=nil, fixedversion=nil, affectedversion=nil, affectedcomponent=nil, risklevel=nil)
          @PURL = purl
          @CanBeFixed = canbefixed
          @FixedVersion = fixedversion
          @AffectedVersion = affectedversion
          @AffectedComponent = affectedcomponent
          @RiskLevel = risklevel
        end

        def deserialize(params)
          unless params['PURL'].nil?
            @PURL = PURL.new
            @PURL.deserialize(params['PURL'])
          end
          @CanBeFixed = params['CanBeFixed']
          @FixedVersion = params['FixedVersion']
          @AffectedVersion = params['AffectedVersion']
          @AffectedComponent = params['AffectedComponent']
          @RiskLevel = params['RiskLevel']
        end
      end

      # 描述组件漏洞相关概览信息。
      class ComponentVulnerabilityUnion < TencentCloud::Common::AbstractModel
        # @param Summary: 漏洞概览信息
        # @type Summary: :class:`Tencentcloud::Bsca.v20210811.models.VulnerabilitySummary`
        # @param SummaryInComponent: 与组件相关的漏洞概览信息
        # @type SummaryInComponent: :class:`Tencentcloud::Bsca.v20210811.models.ComponentVulnerabilitySummary`

        attr_accessor :Summary, :SummaryInComponent

        def initialize(summary=nil, summaryincomponent=nil)
          @Summary = summary
          @SummaryInComponent = summaryincomponent
        end

        def deserialize(params)
          unless params['Summary'].nil?
            @Summary = VulnerabilitySummary.new
            @Summary.deserialize(params['Summary'])
          end
          unless params['SummaryInComponent'].nil?
            @SummaryInComponent = ComponentVulnerabilitySummary.new
            @SummaryInComponent.deserialize(params['SummaryInComponent'])
          end
        end
      end

      # DescribeKBComponent请求参数结构体
      class DescribeKBComponentRequest < TencentCloud::Common::AbstractModel
        # @param PURL: 组件的PURL
        # @type PURL: :class:`Tencentcloud::Bsca.v20210811.models.PURL`

        attr_accessor :PURL

        def initialize(purl=nil)
          @PURL = purl
        end

        def deserialize(params)
          unless params['PURL'].nil?
            @PURL = PURL.new
            @PURL.deserialize(params['PURL'])
          end
        end
      end

      # DescribeKBComponent返回参数结构体
      class DescribeKBComponentResponse < TencentCloud::Common::AbstractModel
        # @param Component: 匹配的组件信息
        # @type Component: :class:`Tencentcloud::Bsca.v20210811.models.Component`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Component, :RequestId

        def initialize(component=nil, requestid=nil)
          @Component = component
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Component'].nil?
            @Component = Component.new
            @Component.deserialize(params['Component'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKBComponentVersionList请求参数结构体
      class DescribeKBComponentVersionListRequest < TencentCloud::Common::AbstractModel
        # @param PURL: 要查询的组件 PURL
        # @type PURL: :class:`Tencentcloud::Bsca.v20210811.models.PURL`

        attr_accessor :PURL

        def initialize(purl=nil)
          @PURL = purl
        end

        def deserialize(params)
          unless params['PURL'].nil?
            @PURL = PURL.new
            @PURL.deserialize(params['PURL'])
          end
        end
      end

      # DescribeKBComponentVersionList返回参数结构体
      class DescribeKBComponentVersionListResponse < TencentCloud::Common::AbstractModel
        # @param VersionList: 该组件的版本列表信息
        # @type VersionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionList, :RequestId

        def initialize(versionlist=nil, requestid=nil)
          @VersionList = versionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VersionList'].nil?
            @VersionList = []
            params['VersionList'].each do |i|
              componentversion_tmp = ComponentVersion.new
              componentversion_tmp.deserialize(i)
              @VersionList << componentversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKBComponentVulnerability请求参数结构体
      class DescribeKBComponentVulnerabilityRequest < TencentCloud::Common::AbstractModel
        # @param PURL: 组件的PURL，其中Name和Version为必填字段
        # @type PURL: :class:`Tencentcloud::Bsca.v20210811.models.PURL`
        # @param Language: 语言，ZH或EN
        # @type Language: String

        attr_accessor :PURL, :Language

        def initialize(purl=nil, language=nil)
          @PURL = purl
          @Language = language
        end

        def deserialize(params)
          unless params['PURL'].nil?
            @PURL = PURL.new
            @PURL.deserialize(params['PURL'])
          end
          @Language = params['Language']
        end
      end

      # DescribeKBComponentVulnerability返回参数结构体
      class DescribeKBComponentVulnerabilityResponse < TencentCloud::Common::AbstractModel
        # @param VulnerabilityList: 漏洞信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulnerabilityList, :RequestId

        def initialize(vulnerabilitylist=nil, requestid=nil)
          @VulnerabilityList = vulnerabilitylist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulnerabilityList'].nil?
            @VulnerabilityList = []
            params['VulnerabilityList'].each do |i|
              componentvulnerabilityunion_tmp = ComponentVulnerabilityUnion.new
              componentvulnerabilityunion_tmp.deserialize(i)
              @VulnerabilityList << componentvulnerabilityunion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKBLicense请求参数结构体
      class DescribeKBLicenseRequest < TencentCloud::Common::AbstractModel
        # @param LicenseExpression: License表达式
        # @type LicenseExpression: String

        attr_accessor :LicenseExpression

        def initialize(licenseexpression=nil)
          @LicenseExpression = licenseexpression
        end

        def deserialize(params)
          @LicenseExpression = params['LicenseExpression']
        end
      end

      # DescribeKBLicense返回参数结构体
      class DescribeKBLicenseResponse < TencentCloud::Common::AbstractModel
        # @param LicenseList: 许可证列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LicenseList: Array
        # @param NormalizedLicenseExpression: 用于匹配的License表达式
        # @type NormalizedLicenseExpression: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LicenseList, :NormalizedLicenseExpression, :RequestId

        def initialize(licenselist=nil, normalizedlicenseexpression=nil, requestid=nil)
          @LicenseList = licenselist
          @NormalizedLicenseExpression = normalizedlicenseexpression
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LicenseList'].nil?
            @LicenseList = []
            params['LicenseList'].each do |i|
              licenseunion_tmp = LicenseUnion.new
              licenseunion_tmp.deserialize(i)
              @LicenseList << licenseunion_tmp
            end
          end
          @NormalizedLicenseExpression = params['NormalizedLicenseExpression']
          @RequestId = params['RequestId']
        end
      end

      # DescribeKBVulnerability请求参数结构体
      class DescribeKBVulnerabilityRequest < TencentCloud::Common::AbstractModel
        # @param CVEID: 根据CVE ID查询（不能与其他参数同时存在）
        # @type CVEID: Array
        # @param VulID: 根据Vul ID查询（不能与其他参数同时存在）
        # @type VulID: Array
        # @param CNVDID: 根据CNVD ID查询（不能与其他参数同时存在）
        # @type CNVDID: Array
        # @param CNNVDID: 根据CNNVD ID查询（不能与其他参数同时存在）
        # @type CNNVDID: Array
        # @param Language: 语言，ZH或EN
        # @type Language: String

        attr_accessor :CVEID, :VulID, :CNVDID, :CNNVDID, :Language

        def initialize(cveid=nil, vulid=nil, cnvdid=nil, cnnvdid=nil, language=nil)
          @CVEID = cveid
          @VulID = vulid
          @CNVDID = cnvdid
          @CNNVDID = cnnvdid
          @Language = language
        end

        def deserialize(params)
          @CVEID = params['CVEID']
          @VulID = params['VulID']
          @CNVDID = params['CNVDID']
          @CNNVDID = params['CNNVDID']
          @Language = params['Language']
        end
      end

      # DescribeKBVulnerability返回参数结构体
      class DescribeKBVulnerabilityResponse < TencentCloud::Common::AbstractModel
        # @param VulnerabilityDetailList: 漏洞详细信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityDetailList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VulnerabilityDetailList, :RequestId

        def initialize(vulnerabilitydetaillist=nil, requestid=nil)
          @VulnerabilityDetailList = vulnerabilitydetaillist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VulnerabilityDetailList'].nil?
            @VulnerabilityDetailList = []
            params['VulnerabilityDetailList'].each do |i|
              vulnerabilityunion_tmp = VulnerabilityUnion.new
              vulnerabilityunion_tmp.deserialize(i)
              @VulnerabilityDetailList << vulnerabilityunion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述许可证的详细信息。
      class LicenseDetail < TencentCloud::Common::AbstractModel
        # @param Content: 许可证内容
        # @type Content: String
        # @param ConditionSet: 许可证允许信息列表
        # @type ConditionSet: Array
        # @param ForbiddenSet: 许可证要求信息列表
        # @type ForbiddenSet: Array
        # @param PermissionSet: 许可证禁止信息列表
        # @type PermissionSet: Array

        attr_accessor :Content, :ConditionSet, :ForbiddenSet, :PermissionSet

        def initialize(content=nil, conditionset=nil, forbiddenset=nil, permissionset=nil)
          @Content = content
          @ConditionSet = conditionset
          @ForbiddenSet = forbiddenset
          @PermissionSet = permissionset
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['ConditionSet'].nil?
            @ConditionSet = []
            params['ConditionSet'].each do |i|
              licenserestriction_tmp = LicenseRestriction.new
              licenserestriction_tmp.deserialize(i)
              @ConditionSet << licenserestriction_tmp
            end
          end
          unless params['ForbiddenSet'].nil?
            @ForbiddenSet = []
            params['ForbiddenSet'].each do |i|
              licenserestriction_tmp = LicenseRestriction.new
              licenserestriction_tmp.deserialize(i)
              @ForbiddenSet << licenserestriction_tmp
            end
          end
          unless params['PermissionSet'].nil?
            @PermissionSet = []
            params['PermissionSet'].each do |i|
              licenserestriction_tmp = LicenseRestriction.new
              licenserestriction_tmp.deserialize(i)
              @PermissionSet << licenserestriction_tmp
            end
          end
        end
      end

      # License约束信息。
      class LicenseRestriction < TencentCloud::Common::AbstractModel
        # @param Name: license约束的名称。
        # @type Name: String
        # @param Description: license约束的描述。
        # @type Description: String

        attr_accessor :Name, :Description

        def initialize(name=nil, description=nil)
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # 描述许可证的概览信息。
      class LicenseSummary < TencentCloud::Common::AbstractModel
        # @param Key: 许可证标识符
        # @type Key: String
        # @param SPDXKey: 许可证的SPDX标识符，见 https://spdx.org/licenses/
        # @type SPDXKey: String
        # @param ShortName: 许可证短名称
        # @type ShortName: String
        # @param Name: 许可证完整名称
        # @type Name: String
        # @param Risk: License风险等级
        # <li>NotDefined</li>
        # <li>LowRisk</li>
        # <li>MediumRisk</li>
        # <li>HighRisk</li>
        # @type Risk: String
        # @param Source: 许可证来源URL
        # @type Source: String

        attr_accessor :Key, :SPDXKey, :ShortName, :Name, :Risk, :Source

        def initialize(key=nil, spdxkey=nil, shortname=nil, name=nil, risk=nil, source=nil)
          @Key = key
          @SPDXKey = spdxkey
          @ShortName = shortname
          @Name = name
          @Risk = risk
          @Source = source
        end

        def deserialize(params)
          @Key = params['Key']
          @SPDXKey = params['SPDXKey']
          @ShortName = params['ShortName']
          @Name = params['Name']
          @Risk = params['Risk']
          @Source = params['Source']
        end
      end

      # 许可证详细信息。
      class LicenseUnion < TencentCloud::Common::AbstractModel
        # @param LicenseSummary: 许可证概览信息
        # @type LicenseSummary: :class:`Tencentcloud::Bsca.v20210811.models.LicenseSummary`
        # @param LicenseDetail: 许可证详细信息
        # @type LicenseDetail: :class:`Tencentcloud::Bsca.v20210811.models.LicenseDetail`

        attr_accessor :LicenseSummary, :LicenseDetail

        def initialize(licensesummary=nil, licensedetail=nil)
          @LicenseSummary = licensesummary
          @LicenseDetail = licensedetail
        end

        def deserialize(params)
          unless params['LicenseSummary'].nil?
            @LicenseSummary = LicenseSummary.new
            @LicenseSummary.deserialize(params['LicenseSummary'])
          end
          unless params['LicenseDetail'].nil?
            @LicenseDetail = LicenseDetail.new
            @LicenseDetail.deserialize(params['LicenseDetail'])
          end
        end
      end

      # MatchKBPURLList请求参数结构体
      class MatchKBPURLListRequest < TencentCloud::Common::AbstractModel
        # @param SHA1: SHA1。
        # @type SHA1: String

        attr_accessor :SHA1

        def initialize(sha1=nil)
          @SHA1 = sha1
        end

        def deserialize(params)
          @SHA1 = params['SHA1']
        end
      end

      # MatchKBPURLList返回参数结构体
      class MatchKBPURLListResponse < TencentCloud::Common::AbstractModel
        # @param PURLList: 组件列表。
        # @type PURLList: Array
        # @param Hit: 是否命中数据库。
        # @type Hit: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PURLList, :Hit, :RequestId

        def initialize(purllist=nil, hit=nil, requestid=nil)
          @PURLList = purllist
          @Hit = hit
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PURLList'].nil?
            @PURLList = []
            params['PURLList'].each do |i|
              purl_tmp = PURL.new
              purl_tmp.deserialize(i)
              @PURLList << purl_tmp
            end
          end
          @Hit = params['Hit']
          @RequestId = params['RequestId']
        end
      end

      # PURL(Package URL)用于定位一个产品或组件，见 https://github.com/package-url/purl-spec。
      class PURL < TencentCloud::Common::AbstractModel
        # @param Name: 组件名称
        # @type Name: String
        # @param Protocol: 组件所属的类型，如：github, gitlab, generic, deb, rpm, maven 等
        # @type Protocol: String
        # @param Namespace: 组件名的前缀名，如github和gitlab的用户名，deb的操作系统，maven包的group id等
        # @type Namespace: String
        # @param Qualifiers: 修饰组件的额外属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Qualifiers: Array
        # @param Subpath: 相对于组件包根位置的子目录
        # @type Subpath: String
        # @param Version: 组件版本号
        # @type Version: String

        attr_accessor :Name, :Protocol, :Namespace, :Qualifiers, :Subpath, :Version

        def initialize(name=nil, protocol=nil, namespace=nil, qualifiers=nil, subpath=nil, version=nil)
          @Name = name
          @Protocol = protocol
          @Namespace = namespace
          @Qualifiers = qualifiers
          @Subpath = subpath
          @Version = version
        end

        def deserialize(params)
          @Name = params['Name']
          @Protocol = params['Protocol']
          @Namespace = params['Namespace']
          unless params['Qualifiers'].nil?
            @Qualifiers = []
            params['Qualifiers'].each do |i|
              qualifier_tmp = Qualifier.new
              qualifier_tmp.deserialize(i)
              @Qualifiers << qualifier_tmp
            end
          end
          @Subpath = params['Subpath']
          @Version = params['Version']
        end
      end

      # PURL下的Qualifier属性类型，用于定义第三方组件的额外属性，见 https://github.com/package-url/purl-spec。
      class Qualifier < TencentCloud::Common::AbstractModel
        # @param Key: 额外属性的名称。
        # @type Key: String
        # @param Value: 额外属性的值。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # SearchKBComponent请求参数结构体
      class SearchKBComponentRequest < TencentCloud::Common::AbstractModel
        # @param Query: 需要搜索的组件名
        # @type Query: String
        # @param Protocol: 需要搜索的组件类型
        # @type Protocol: String
        # @param PageNumber: 分页参数，从 0 开始
        # @type PageNumber: Integer
        # @param PageSize: 分页参数，设置每页返回的结果数量
        # @type PageSize: Integer

        attr_accessor :Query, :Protocol, :PageNumber, :PageSize

        def initialize(query=nil, protocol=nil, pagenumber=nil, pagesize=nil)
          @Query = query
          @Protocol = protocol
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @Query = params['Query']
          @Protocol = params['Protocol']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # SearchKBComponent返回参数结构体
      class SearchKBComponentResponse < TencentCloud::Common::AbstractModel
        # @param ComponentList: 满足搜索条件的组件列表
        # @type ComponentList: Array
        # @param Total: 满足搜索条件的总个数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ComponentList, :Total, :RequestId

        def initialize(componentlist=nil, total=nil, requestid=nil)
          @ComponentList = componentlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ComponentList'].nil?
            @ComponentList = []
            params['ComponentList'].each do |i|
              component_tmp = Component.new
              component_tmp.deserialize(i)
              @ComponentList << component_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # 描述漏洞详细信息。
      class VulnerabilityDetail < TencentCloud::Common::AbstractModel
        # @param Category: 漏洞类别
        # @type Category: String
        # @param CategoryType: 漏洞分类
        # @type CategoryType: String
        # @param Description: 漏洞描述
        # @type Description: String
        # @param OfficialSolution: 漏洞官方解决方案
        # @type OfficialSolution: String
        # @param ReferenceList: 漏洞信息参考列表
        # @type ReferenceList: Array
        # @param DefenseSolution: 漏洞防御方案
        # @type DefenseSolution: String
        # @param CVSSv2Info: 漏洞CVSSv2信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSSv2Info: :class:`Tencentcloud::Bsca.v20210811.models.CVSSV2Info`
        # @param CVSSv3Info: 漏洞CVSSv3信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CVSSv3Info: :class:`Tencentcloud::Bsca.v20210811.models.CVSSV3Info`
        # @param SubmitTime: 漏洞提交时间
        # @type SubmitTime: String
        # @param CWEID: CWE编号
        # @type CWEID: String
        # @param CVSSv2Vector: 漏洞CVSSv2向量
        # @type CVSSv2Vector: String
        # @param CVSSv3Vector: 漏洞CVSSv3向量
        # @type CVSSv3Vector: String
        # @param AffectedComponentList: 漏洞影响的组件列表，仅当查询单个漏洞时有效
        # @type AffectedComponentList: Array

        attr_accessor :Category, :CategoryType, :Description, :OfficialSolution, :ReferenceList, :DefenseSolution, :CVSSv2Info, :CVSSv3Info, :SubmitTime, :CWEID, :CVSSv2Vector, :CVSSv3Vector, :AffectedComponentList

        def initialize(category=nil, categorytype=nil, description=nil, officialsolution=nil, referencelist=nil, defensesolution=nil, cvssv2info=nil, cvssv3info=nil, submittime=nil, cweid=nil, cvssv2vector=nil, cvssv3vector=nil, affectedcomponentlist=nil)
          @Category = category
          @CategoryType = categorytype
          @Description = description
          @OfficialSolution = officialsolution
          @ReferenceList = referencelist
          @DefenseSolution = defensesolution
          @CVSSv2Info = cvssv2info
          @CVSSv3Info = cvssv3info
          @SubmitTime = submittime
          @CWEID = cweid
          @CVSSv2Vector = cvssv2vector
          @CVSSv3Vector = cvssv3vector
          @AffectedComponentList = affectedcomponentlist
        end

        def deserialize(params)
          @Category = params['Category']
          @CategoryType = params['CategoryType']
          @Description = params['Description']
          @OfficialSolution = params['OfficialSolution']
          @ReferenceList = params['ReferenceList']
          @DefenseSolution = params['DefenseSolution']
          unless params['CVSSv2Info'].nil?
            @CVSSv2Info = CVSSV2Info.new
            @CVSSv2Info.deserialize(params['CVSSv2Info'])
          end
          unless params['CVSSv3Info'].nil?
            @CVSSv3Info = CVSSV3Info.new
            @CVSSv3Info.deserialize(params['CVSSv3Info'])
          end
          @SubmitTime = params['SubmitTime']
          @CWEID = params['CWEID']
          @CVSSv2Vector = params['CVSSv2Vector']
          @CVSSv3Vector = params['CVSSv3Vector']
          unless params['AffectedComponentList'].nil?
            @AffectedComponentList = []
            params['AffectedComponentList'].each do |i|
              affectedcomponent_tmp = AffectedComponent.new
              affectedcomponent_tmp.deserialize(i)
              @AffectedComponentList << affectedcomponent_tmp
            end
          end
        end
      end

      # 描述漏洞的摘要信息。
      class VulnerabilitySummary < TencentCloud::Common::AbstractModel
        # @param VulID: 漏洞ID
        # @type VulID: String
        # @param CVEID: 漏洞所属CVE编号
        # @type CVEID: String
        # @param CNVDID: 漏洞所属CNVD编号
        # @type CNVDID: String
        # @param CNNVDID: 漏洞所属CNNVD编号
        # @type CNNVDID: String
        # @param Name: 漏洞名称
        # @type Name: String
        # @param IsSuggest: 该漏洞是否是需重点关注的漏洞
        # @type IsSuggest: Boolean
        # @param Severity: 漏洞风险等级
        # <li>Critical</li>
        # <li>High</li>
        # <li>Medium</li>
        # <li>Low</li>
        # @type Severity: String

        attr_accessor :VulID, :CVEID, :CNVDID, :CNNVDID, :Name, :IsSuggest, :Severity

        def initialize(vulid=nil, cveid=nil, cnvdid=nil, cnnvdid=nil, name=nil, issuggest=nil, severity=nil)
          @VulID = vulid
          @CVEID = cveid
          @CNVDID = cnvdid
          @CNNVDID = cnnvdid
          @Name = name
          @IsSuggest = issuggest
          @Severity = severity
        end

        def deserialize(params)
          @VulID = params['VulID']
          @CVEID = params['CVEID']
          @CNVDID = params['CNVDID']
          @CNNVDID = params['CNNVDID']
          @Name = params['Name']
          @IsSuggest = params['IsSuggest']
          @Severity = params['Severity']
        end
      end

      # 描述漏洞的详细信息。
      class VulnerabilityUnion < TencentCloud::Common::AbstractModel
        # @param Summary: 漏洞概览信息
        # @type Summary: :class:`Tencentcloud::Bsca.v20210811.models.VulnerabilitySummary`
        # @param Detail: 漏洞详细信息
        # @type Detail: :class:`Tencentcloud::Bsca.v20210811.models.VulnerabilityDetail`

        attr_accessor :Summary, :Detail

        def initialize(summary=nil, detail=nil)
          @Summary = summary
          @Detail = detail
        end

        def deserialize(params)
          unless params['Summary'].nil?
            @Summary = VulnerabilitySummary.new
            @Summary.deserialize(params['Summary'])
          end
          unless params['Detail'].nil?
            @Detail = VulnerabilityDetail.new
            @Detail.deserialize(params['Detail'])
          end
        end
      end

    end
  end
end

