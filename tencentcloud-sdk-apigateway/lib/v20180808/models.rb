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
  module Apigateway
    module V20180808
      # API文档基本信息
      class APIDoc < TencentCloud::Common::AbstractModel
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String
        # @param ApiDocName: API文档名称
        # @type ApiDocName: String
        # @param ApiDocStatus: API文档构建状态
        # @type ApiDocStatus: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ApiDocId, :ApiDocName, :ApiDocStatus, :Tags

        def initialize(apidocid=nil, apidocname=nil, apidocstatus=nil, tags=nil)
          @ApiDocId = apidocid
          @ApiDocName = apidocname
          @ApiDocStatus = apidocstatus
          @Tags = tags
        end

        def deserialize(params)
          @ApiDocId = params['ApiDocId']
          @ApiDocName = params['ApiDocName']
          @ApiDocStatus = params['ApiDocStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # API文档详细信息
      class APIDocInfo < TencentCloud::Common::AbstractModel
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String
        # @param ApiDocName: API文档名称
        # @type ApiDocName: String
        # @param ApiDocStatus: API文档构建状态
        # @type ApiDocStatus: String
        # @param ApiCount: API文档API数量
        # @type ApiCount: Integer
        # @param ViewCount: API文档查看次数
        # @type ViewCount: Integer
        # @param ReleaseCount: API文档发布次数
        # @type ReleaseCount: Integer
        # @param ApiDocUri: API文档访问URI
        # @type ApiDocUri: String
        # @param SharePassword: API文档分享密码
        # @type SharePassword: String
        # @param UpdatedTime: API文档更新时间
        # @type UpdatedTime: String
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param Environment: 环境信息
        # @type Environment: String
        # @param ApiIds: 生成API文档的API ID
        # @type ApiIds: Array
        # @param ServiceName: 服务名称
        # @type ServiceName: String
        # @param ApiNames: 生成API文档的API名称
        # @type ApiNames: Array
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ApiDocId, :ApiDocName, :ApiDocStatus, :ApiCount, :ViewCount, :ReleaseCount, :ApiDocUri, :SharePassword, :UpdatedTime, :ServiceId, :Environment, :ApiIds, :ServiceName, :ApiNames, :Tags

        def initialize(apidocid=nil, apidocname=nil, apidocstatus=nil, apicount=nil, viewcount=nil, releasecount=nil, apidocuri=nil, sharepassword=nil, updatedtime=nil, serviceid=nil, environment=nil, apiids=nil, servicename=nil, apinames=nil, tags=nil)
          @ApiDocId = apidocid
          @ApiDocName = apidocname
          @ApiDocStatus = apidocstatus
          @ApiCount = apicount
          @ViewCount = viewcount
          @ReleaseCount = releasecount
          @ApiDocUri = apidocuri
          @SharePassword = sharepassword
          @UpdatedTime = updatedtime
          @ServiceId = serviceid
          @Environment = environment
          @ApiIds = apiids
          @ServiceName = servicename
          @ApiNames = apinames
          @Tags = tags
        end

        def deserialize(params)
          @ApiDocId = params['ApiDocId']
          @ApiDocName = params['ApiDocName']
          @ApiDocStatus = params['ApiDocStatus']
          @ApiCount = params['ApiCount']
          @ViewCount = params['ViewCount']
          @ReleaseCount = params['ReleaseCount']
          @ApiDocUri = params['ApiDocUri']
          @SharePassword = params['SharePassword']
          @UpdatedTime = params['UpdatedTime']
          @ServiceId = params['ServiceId']
          @Environment = params['Environment']
          @ApiIds = params['ApiIds']
          @ServiceName = params['ServiceName']
          @ApiNames = params['ApiNames']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # API文档列表
      class APIDocs < TencentCloud::Common::AbstractModel
        # @param TotalCount: API文档数量
        # @type TotalCount: Integer
        # @param APIDocSet: API文档基本信息
        # @type APIDocSet: Array

        attr_accessor :TotalCount, :APIDocSet

        def initialize(totalcount=nil, apidocset=nil)
          @TotalCount = totalcount
          @APIDocSet = apidocset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['APIDocSet'].nil?
            @APIDocSet = []
            params['APIDocSet'].each do |i|
              apidoc_tmp = APIDoc.new
              apidoc_tmp.deserialize(i)
              @APIDocSet << apidoc_tmp
            end
          end
        end
      end

      # 应用绑定的Api信息
      class ApiAppApiInfo < TencentCloud::Common::AbstractModel
        # @param ApiAppName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppName: String
        # @param ApiAppId: 应用ID
        # @type ApiAppId: String
        # @param ApiId: Api的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param ApiName: Api名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param ServiceId: 服务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param AuthorizedTime: 授权绑定时间，按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthorizedTime: String
        # @param ApiRegion: Api所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiRegion: String
        # @param EnvironmentName: 授权绑定的环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentName: String

        attr_accessor :ApiAppName, :ApiAppId, :ApiId, :ApiName, :ServiceId, :AuthorizedTime, :ApiRegion, :EnvironmentName

        def initialize(apiappname=nil, apiappid=nil, apiid=nil, apiname=nil, serviceid=nil, authorizedtime=nil, apiregion=nil, environmentname=nil)
          @ApiAppName = apiappname
          @ApiAppId = apiappid
          @ApiId = apiid
          @ApiName = apiname
          @ServiceId = serviceid
          @AuthorizedTime = authorizedtime
          @ApiRegion = apiregion
          @EnvironmentName = environmentname
        end

        def deserialize(params)
          @ApiAppName = params['ApiAppName']
          @ApiAppId = params['ApiAppId']
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @ServiceId = params['ServiceId']
          @AuthorizedTime = params['AuthorizedTime']
          @ApiRegion = params['ApiRegion']
          @EnvironmentName = params['EnvironmentName']
        end
      end

      # 应用信息集
      class ApiAppApiInfos < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param ApiAppApiSet: 应用绑定的Api信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppApiSet: Array

        attr_accessor :TotalCount, :ApiAppApiSet

        def initialize(totalcount=nil, apiappapiset=nil)
          @TotalCount = totalcount
          @ApiAppApiSet = apiappapiset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiAppApiSet'].nil?
            @ApiAppApiSet = []
            params['ApiAppApiSet'].each do |i|
              apiappapiinfo_tmp = ApiAppApiInfo.new
              apiappapiinfo_tmp.deserialize(i)
              @ApiAppApiSet << apiappapiinfo_tmp
            end
          end
        end
      end

      # 应用信息
      class ApiAppInfo < TencentCloud::Common::AbstractModel
        # @param ApiAppName: 应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppName: String
        # @param ApiAppId: 应用ID
        # @type ApiAppId: String
        # @param ApiAppSecret: 应用SECRET
        # 注意:此字段可能返回null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppSecret: String
        # @param ApiAppDesc: 应用描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppDesc: String
        # @param CreatedTime: 创建时间，按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 修改时间，按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ApiAppKey: 应用KEY
        # 注意:此字段可能返回null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppKey: String

        attr_accessor :ApiAppName, :ApiAppId, :ApiAppSecret, :ApiAppDesc, :CreatedTime, :ModifiedTime, :ApiAppKey

        def initialize(apiappname=nil, apiappid=nil, apiappsecret=nil, apiappdesc=nil, createdtime=nil, modifiedtime=nil, apiappkey=nil)
          @ApiAppName = apiappname
          @ApiAppId = apiappid
          @ApiAppSecret = apiappsecret
          @ApiAppDesc = apiappdesc
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ApiAppKey = apiappkey
        end

        def deserialize(params)
          @ApiAppName = params['ApiAppName']
          @ApiAppId = params['ApiAppId']
          @ApiAppSecret = params['ApiAppSecret']
          @ApiAppDesc = params['ApiAppDesc']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ApiAppKey = params['ApiAppKey']
        end
      end

      # 应用信息集
      class ApiAppInfos < TencentCloud::Common::AbstractModel
        # @param TotalCount: 应用数量
        # @type TotalCount: Integer
        # @param ApiAppSet: 应用信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiAppSet: Array

        attr_accessor :TotalCount, :ApiAppSet

        def initialize(totalcount=nil, apiappset=nil)
          @TotalCount = totalcount
          @ApiAppSet = apiappset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiAppSet'].nil?
            @ApiAppSet = []
            params['ApiAppSet'].each do |i|
              apiappinfo_tmp = ApiAppInfo.new
              apiappinfo_tmp.deserialize(i)
              @ApiAppSet << apiappinfo_tmp
            end
          end
        end
      end

      # api环境绑定策略
      class ApiEnvironmentStrategy < TencentCloud::Common::AbstractModel
        # @param ApiId: API唯一ID。
        # @type ApiId: String
        # @param ApiName: 用户自定义API名称。
        # @type ApiName: String
        # @param Path: API的路径。如/path。
        # @type Path: String
        # @param Method: API的方法。如GET。
        # @type Method: String
        # @param EnvironmentStrategySet: 环境的限流信息。
        # @type EnvironmentStrategySet: Array

        attr_accessor :ApiId, :ApiName, :Path, :Method, :EnvironmentStrategySet

        def initialize(apiid=nil, apiname=nil, path=nil, method=nil, environmentstrategyset=nil)
          @ApiId = apiid
          @ApiName = apiname
          @Path = path
          @Method = method
          @EnvironmentStrategySet = environmentstrategyset
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @Path = params['Path']
          @Method = params['Method']
          unless params['EnvironmentStrategySet'].nil?
            @EnvironmentStrategySet = []
            params['EnvironmentStrategySet'].each do |i|
              environmentstrategy_tmp = EnvironmentStrategy.new
              environmentstrategy_tmp.deserialize(i)
              @EnvironmentStrategySet << environmentstrategy_tmp
            end
          end
        end
      end

      # API绑定策略列表
      class ApiEnvironmentStrategyStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: API绑定的限流策略数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApiEnvironmentStrategySet: API绑定的限流策略列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiEnvironmentStrategySet: Array

        attr_accessor :TotalCount, :ApiEnvironmentStrategySet

        def initialize(totalcount=nil, apienvironmentstrategyset=nil)
          @TotalCount = totalcount
          @ApiEnvironmentStrategySet = apienvironmentstrategyset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiEnvironmentStrategySet'].nil?
            @ApiEnvironmentStrategySet = []
            params['ApiEnvironmentStrategySet'].each do |i|
              apienvironmentstrategy_tmp = ApiEnvironmentStrategy.new
              apienvironmentstrategy_tmp.deserialize(i)
              @ApiEnvironmentStrategySet << apienvironmentstrategy_tmp
            end
          end
        end
      end

      # API状态
      class ApiIdStatus < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param ApiId: API唯一ID。
        # @type ApiId: String
        # @param ApiDesc: API描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiDesc: String
        # @param Path: API PATH。
        # @type Path: String
        # @param Method: API METHOD。
        # @type Method: String
        # @param CreatedTime: 服务创建时间。
        # @type CreatedTime: String
        # @param ModifiedTime: 服务修改时间。
        # @type ModifiedTime: String
        # @param ApiName: API名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param UniqVpcId: VPC唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param ApiType: API类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiType: String
        # @param Protocol: API协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param IsDebugAfterCharge: 是否买后调试。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDebugAfterCharge: Boolean
        # @param AuthType: 授权类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param ApiBusinessType: API业务类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiBusinessType: String
        # @param AuthRelationApiId: 关联授权API唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthRelationApiId: String
        # @param RelationBuniessApiIds: 授权API关联的业务API列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelationBuniessApiIds: Array
        # @param OauthConfig: oauth配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OauthConfig: :class:`Tencentcloud::Apigateway.v20180808.models.OauthConfig`
        # @param TokenLocation: oauth2.0API请求，token存放位置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TokenLocation: String

        attr_accessor :ServiceId, :ApiId, :ApiDesc, :Path, :Method, :CreatedTime, :ModifiedTime, :ApiName, :UniqVpcId, :ApiType, :Protocol, :IsDebugAfterCharge, :AuthType, :ApiBusinessType, :AuthRelationApiId, :RelationBuniessApiIds, :OauthConfig, :TokenLocation
        extend Gem::Deprecate
        deprecate :RelationBuniessApiIds, :none, 2024, 1
        deprecate :RelationBuniessApiIds=, :none, 2024, 1

        def initialize(serviceid=nil, apiid=nil, apidesc=nil, path=nil, method=nil, createdtime=nil, modifiedtime=nil, apiname=nil, uniqvpcid=nil, apitype=nil, protocol=nil, isdebugaftercharge=nil, authtype=nil, apibusinesstype=nil, authrelationapiid=nil, relationbuniessapiids=nil, oauthconfig=nil, tokenlocation=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @ApiDesc = apidesc
          @Path = path
          @Method = method
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ApiName = apiname
          @UniqVpcId = uniqvpcid
          @ApiType = apitype
          @Protocol = protocol
          @IsDebugAfterCharge = isdebugaftercharge
          @AuthType = authtype
          @ApiBusinessType = apibusinesstype
          @AuthRelationApiId = authrelationapiid
          @RelationBuniessApiIds = relationbuniessapiids
          @OauthConfig = oauthconfig
          @TokenLocation = tokenlocation
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @ApiDesc = params['ApiDesc']
          @Path = params['Path']
          @Method = params['Method']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ApiName = params['ApiName']
          @UniqVpcId = params['UniqVpcId']
          @ApiType = params['ApiType']
          @Protocol = params['Protocol']
          @IsDebugAfterCharge = params['IsDebugAfterCharge']
          @AuthType = params['AuthType']
          @ApiBusinessType = params['ApiBusinessType']
          @AuthRelationApiId = params['AuthRelationApiId']
          @RelationBuniessApiIds = params['RelationBuniessApiIds']
          unless params['OauthConfig'].nil?
            @OauthConfig = OauthConfig.new
            @OauthConfig.deserialize(params['OauthConfig'])
          end
          @TokenLocation = params['TokenLocation']
        end
      end

      # 展示api信息
      class ApiInfo < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param ServiceName: API 所在的服务的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param ServiceDesc: API 所在的服务的描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDesc: String
        # @param ApiId: API 接口唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param ApiDesc: API 接口的描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiDesc: String
        # @param CreatedTime: 创建时间，按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间，按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ApiName: API 接口的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param ApiType: API 类型。可取值为NORMAL（普通API）、TSF（微服务API）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiType: String
        # @param Protocol: API 的前端请求类型，如 HTTP 或 HTTPS 或者 HTTP 和 HTTPS。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param AuthType: API 鉴权类型。可取值为 SECRET（密钥对鉴权）、NONE（免鉴权）、OAUTH。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param ApiBusinessType: OAUTH API的类型。可取值为NORMAL（业务API）、OAUTH（授权API）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiBusinessType: String
        # @param AuthRelationApiId: OAUTH 业务API 关联的授权API 唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthRelationApiId: String
        # @param OauthConfig: OAUTH配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OauthConfig: :class:`Tencentcloud::Apigateway.v20180808.models.OauthConfig`
        # @param IsDebugAfterCharge: 是否购买后调试（云市场预留参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDebugAfterCharge: Boolean
        # @param RequestConfig: 请求的前端配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestConfig: :class:`Tencentcloud::Apigateway.v20180808.models.RequestConfig`
        # @param ResponseType: 返回类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseType: String
        # @param ResponseSuccessExample: 自定义响应配置成功响应示例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseSuccessExample: String
        # @param ResponseFailExample: 自定义响应配置失败响应示例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseFailExample: String
        # @param ResponseErrorCodes: 用户自定义错误码配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseErrorCodes: Array
        # @param RequestParameters: 前端请求参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestParameters: Array
        # @param ServiceTimeout: API 的后端服务超时时间，单位是秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTimeout: Integer
        # @param ServiceType: API 的后端服务类型。可取值为 HTTP、MOCK、TSF、CLB、SCF、WEBSOCKET、TARGET（内测）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceType: String
        # @param ServiceConfig: API 的后端服务配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceConfig: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceConfig`
        # @param ServiceParameters: API的后端服务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceParameters: Array
        # @param ConstantParameters: 常量参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConstantParameters: Array
        # @param ServiceMockReturnMessage: API 的后端 Mock 返回信息。如果 ServiceType 是 Mock，则此参数必传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceMockReturnMessage: String
        # @param ServiceScfFunctionName: scf 函数名称。当后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceScfFunctionName: String
        # @param ServiceScfFunctionNamespace: scf 函数命名空间。当后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceScfFunctionNamespace: String
        # @param ServiceScfFunctionQualifier: scf函数版本。当后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceScfFunctionQualifier: String
        # @param ServiceScfIsIntegratedResponse: 是否开启集成响应。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceScfIsIntegratedResponse: Boolean
        # @param ServiceWebsocketRegisterFunctionName: scf websocket注册函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketRegisterFunctionName: String
        # @param ServiceWebsocketRegisterFunctionNamespace: scf websocket注册函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketRegisterFunctionNamespace: String
        # @param ServiceWebsocketRegisterFunctionQualifier: scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketRegisterFunctionQualifier: String
        # @param ServiceWebsocketCleanupFunctionName: scf websocket清理函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketCleanupFunctionName: String
        # @param ServiceWebsocketCleanupFunctionNamespace: scf websocket清理函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketCleanupFunctionNamespace: String
        # @param ServiceWebsocketCleanupFunctionQualifier: scf websocket清理函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketCleanupFunctionQualifier: String
        # @param InternalDomain: WEBSOCKET 回推地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternalDomain: String
        # @param ServiceWebsocketTransportFunctionName: scf websocket传输函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketTransportFunctionName: String
        # @param ServiceWebsocketTransportFunctionNamespace: scf websocket传输函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketTransportFunctionNamespace: String
        # @param ServiceWebsocketTransportFunctionQualifier: scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceWebsocketTransportFunctionQualifier: String
        # @param MicroServices: API绑定微服务列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroServices: Array
        # @param MicroServicesInfo: 微服务信息详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MicroServicesInfo: Array
        # @param ServiceTsfLoadBalanceConf: 微服务的负载均衡配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTsfLoadBalanceConf: :class:`Tencentcloud::Apigateway.v20180808.models.TsfLoadBalanceConfResp`
        # @param ServiceTsfHealthCheckConf: 微服务的健康检查配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceTsfHealthCheckConf: :class:`Tencentcloud::Apigateway.v20180808.models.HealthCheckConf`
        # @param EnableCORS: 是否开启跨域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCORS: Boolean
        # @param Tags: API绑定的tag信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Environments: API已发布的环境信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environments: Array
        # @param IsBase64Encoded: 是否开启Base64编码，只有后端为scf时才会生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBase64Encoded: Boolean
        # @param IsBase64Trigger: 是否开启Base64编码的header触发，只有后端为scf时才会生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsBase64Trigger: Boolean
        # @param Base64EncodedTriggerRules: Header触发规则，总规则数量不超过10。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Base64EncodedTriggerRules: Array
        # @param ServiceScfEventIsAsyncCall: 是否开启SCF Event异步调用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceScfEventIsAsyncCall: Boolean

        attr_accessor :ServiceId, :ServiceName, :ServiceDesc, :ApiId, :ApiDesc, :CreatedTime, :ModifiedTime, :ApiName, :ApiType, :Protocol, :AuthType, :ApiBusinessType, :AuthRelationApiId, :OauthConfig, :IsDebugAfterCharge, :RequestConfig, :ResponseType, :ResponseSuccessExample, :ResponseFailExample, :ResponseErrorCodes, :RequestParameters, :ServiceTimeout, :ServiceType, :ServiceConfig, :ServiceParameters, :ConstantParameters, :ServiceMockReturnMessage, :ServiceScfFunctionName, :ServiceScfFunctionNamespace, :ServiceScfFunctionQualifier, :ServiceScfIsIntegratedResponse, :ServiceWebsocketRegisterFunctionName, :ServiceWebsocketRegisterFunctionNamespace, :ServiceWebsocketRegisterFunctionQualifier, :ServiceWebsocketCleanupFunctionName, :ServiceWebsocketCleanupFunctionNamespace, :ServiceWebsocketCleanupFunctionQualifier, :InternalDomain, :ServiceWebsocketTransportFunctionName, :ServiceWebsocketTransportFunctionNamespace, :ServiceWebsocketTransportFunctionQualifier, :MicroServices, :MicroServicesInfo, :ServiceTsfLoadBalanceConf, :ServiceTsfHealthCheckConf, :EnableCORS, :Tags, :Environments, :IsBase64Encoded, :IsBase64Trigger, :Base64EncodedTriggerRules, :ServiceScfEventIsAsyncCall

        def initialize(serviceid=nil, servicename=nil, servicedesc=nil, apiid=nil, apidesc=nil, createdtime=nil, modifiedtime=nil, apiname=nil, apitype=nil, protocol=nil, authtype=nil, apibusinesstype=nil, authrelationapiid=nil, oauthconfig=nil, isdebugaftercharge=nil, requestconfig=nil, responsetype=nil, responsesuccessexample=nil, responsefailexample=nil, responseerrorcodes=nil, requestparameters=nil, servicetimeout=nil, servicetype=nil, serviceconfig=nil, serviceparameters=nil, constantparameters=nil, servicemockreturnmessage=nil, servicescffunctionname=nil, servicescffunctionnamespace=nil, servicescffunctionqualifier=nil, servicescfisintegratedresponse=nil, servicewebsocketregisterfunctionname=nil, servicewebsocketregisterfunctionnamespace=nil, servicewebsocketregisterfunctionqualifier=nil, servicewebsocketcleanupfunctionname=nil, servicewebsocketcleanupfunctionnamespace=nil, servicewebsocketcleanupfunctionqualifier=nil, internaldomain=nil, servicewebsockettransportfunctionname=nil, servicewebsockettransportfunctionnamespace=nil, servicewebsockettransportfunctionqualifier=nil, microservices=nil, microservicesinfo=nil, servicetsfloadbalanceconf=nil, servicetsfhealthcheckconf=nil, enablecors=nil, tags=nil, environments=nil, isbase64encoded=nil, isbase64trigger=nil, base64encodedtriggerrules=nil, servicescfeventisasynccall=nil)
          @ServiceId = serviceid
          @ServiceName = servicename
          @ServiceDesc = servicedesc
          @ApiId = apiid
          @ApiDesc = apidesc
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ApiName = apiname
          @ApiType = apitype
          @Protocol = protocol
          @AuthType = authtype
          @ApiBusinessType = apibusinesstype
          @AuthRelationApiId = authrelationapiid
          @OauthConfig = oauthconfig
          @IsDebugAfterCharge = isdebugaftercharge
          @RequestConfig = requestconfig
          @ResponseType = responsetype
          @ResponseSuccessExample = responsesuccessexample
          @ResponseFailExample = responsefailexample
          @ResponseErrorCodes = responseerrorcodes
          @RequestParameters = requestparameters
          @ServiceTimeout = servicetimeout
          @ServiceType = servicetype
          @ServiceConfig = serviceconfig
          @ServiceParameters = serviceparameters
          @ConstantParameters = constantparameters
          @ServiceMockReturnMessage = servicemockreturnmessage
          @ServiceScfFunctionName = servicescffunctionname
          @ServiceScfFunctionNamespace = servicescffunctionnamespace
          @ServiceScfFunctionQualifier = servicescffunctionqualifier
          @ServiceScfIsIntegratedResponse = servicescfisintegratedresponse
          @ServiceWebsocketRegisterFunctionName = servicewebsocketregisterfunctionname
          @ServiceWebsocketRegisterFunctionNamespace = servicewebsocketregisterfunctionnamespace
          @ServiceWebsocketRegisterFunctionQualifier = servicewebsocketregisterfunctionqualifier
          @ServiceWebsocketCleanupFunctionName = servicewebsocketcleanupfunctionname
          @ServiceWebsocketCleanupFunctionNamespace = servicewebsocketcleanupfunctionnamespace
          @ServiceWebsocketCleanupFunctionQualifier = servicewebsocketcleanupfunctionqualifier
          @InternalDomain = internaldomain
          @ServiceWebsocketTransportFunctionName = servicewebsockettransportfunctionname
          @ServiceWebsocketTransportFunctionNamespace = servicewebsockettransportfunctionnamespace
          @ServiceWebsocketTransportFunctionQualifier = servicewebsockettransportfunctionqualifier
          @MicroServices = microservices
          @MicroServicesInfo = microservicesinfo
          @ServiceTsfLoadBalanceConf = servicetsfloadbalanceconf
          @ServiceTsfHealthCheckConf = servicetsfhealthcheckconf
          @EnableCORS = enablecors
          @Tags = tags
          @Environments = environments
          @IsBase64Encoded = isbase64encoded
          @IsBase64Trigger = isbase64trigger
          @Base64EncodedTriggerRules = base64encodedtriggerrules
          @ServiceScfEventIsAsyncCall = servicescfeventisasynccall
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @ServiceDesc = params['ServiceDesc']
          @ApiId = params['ApiId']
          @ApiDesc = params['ApiDesc']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ApiName = params['ApiName']
          @ApiType = params['ApiType']
          @Protocol = params['Protocol']
          @AuthType = params['AuthType']
          @ApiBusinessType = params['ApiBusinessType']
          @AuthRelationApiId = params['AuthRelationApiId']
          unless params['OauthConfig'].nil?
            @OauthConfig = OauthConfig.new
            @OauthConfig.deserialize(params['OauthConfig'])
          end
          @IsDebugAfterCharge = params['IsDebugAfterCharge']
          unless params['RequestConfig'].nil?
            @RequestConfig = RequestConfig.new
            @RequestConfig.deserialize(params['RequestConfig'])
          end
          @ResponseType = params['ResponseType']
          @ResponseSuccessExample = params['ResponseSuccessExample']
          @ResponseFailExample = params['ResponseFailExample']
          unless params['ResponseErrorCodes'].nil?
            @ResponseErrorCodes = []
            params['ResponseErrorCodes'].each do |i|
              errorcodes_tmp = ErrorCodes.new
              errorcodes_tmp.deserialize(i)
              @ResponseErrorCodes << errorcodes_tmp
            end
          end
          unless params['RequestParameters'].nil?
            @RequestParameters = []
            params['RequestParameters'].each do |i|
              reqparameter_tmp = ReqParameter.new
              reqparameter_tmp.deserialize(i)
              @RequestParameters << reqparameter_tmp
            end
          end
          @ServiceTimeout = params['ServiceTimeout']
          @ServiceType = params['ServiceType']
          unless params['ServiceConfig'].nil?
            @ServiceConfig = ServiceConfig.new
            @ServiceConfig.deserialize(params['ServiceConfig'])
          end
          unless params['ServiceParameters'].nil?
            @ServiceParameters = []
            params['ServiceParameters'].each do |i|
              describeapiresultserviceparametersinfo_tmp = DescribeApiResultServiceParametersInfo.new
              describeapiresultserviceparametersinfo_tmp.deserialize(i)
              @ServiceParameters << describeapiresultserviceparametersinfo_tmp
            end
          end
          unless params['ConstantParameters'].nil?
            @ConstantParameters = []
            params['ConstantParameters'].each do |i|
              constantparameter_tmp = ConstantParameter.new
              constantparameter_tmp.deserialize(i)
              @ConstantParameters << constantparameter_tmp
            end
          end
          @ServiceMockReturnMessage = params['ServiceMockReturnMessage']
          @ServiceScfFunctionName = params['ServiceScfFunctionName']
          @ServiceScfFunctionNamespace = params['ServiceScfFunctionNamespace']
          @ServiceScfFunctionQualifier = params['ServiceScfFunctionQualifier']
          @ServiceScfIsIntegratedResponse = params['ServiceScfIsIntegratedResponse']
          @ServiceWebsocketRegisterFunctionName = params['ServiceWebsocketRegisterFunctionName']
          @ServiceWebsocketRegisterFunctionNamespace = params['ServiceWebsocketRegisterFunctionNamespace']
          @ServiceWebsocketRegisterFunctionQualifier = params['ServiceWebsocketRegisterFunctionQualifier']
          @ServiceWebsocketCleanupFunctionName = params['ServiceWebsocketCleanupFunctionName']
          @ServiceWebsocketCleanupFunctionNamespace = params['ServiceWebsocketCleanupFunctionNamespace']
          @ServiceWebsocketCleanupFunctionQualifier = params['ServiceWebsocketCleanupFunctionQualifier']
          @InternalDomain = params['InternalDomain']
          @ServiceWebsocketTransportFunctionName = params['ServiceWebsocketTransportFunctionName']
          @ServiceWebsocketTransportFunctionNamespace = params['ServiceWebsocketTransportFunctionNamespace']
          @ServiceWebsocketTransportFunctionQualifier = params['ServiceWebsocketTransportFunctionQualifier']
          unless params['MicroServices'].nil?
            @MicroServices = []
            params['MicroServices'].each do |i|
              microservice_tmp = MicroService.new
              microservice_tmp.deserialize(i)
              @MicroServices << microservice_tmp
            end
          end
          @MicroServicesInfo = params['MicroServicesInfo']
          unless params['ServiceTsfLoadBalanceConf'].nil?
            @ServiceTsfLoadBalanceConf = TsfLoadBalanceConfResp.new
            @ServiceTsfLoadBalanceConf.deserialize(params['ServiceTsfLoadBalanceConf'])
          end
          unless params['ServiceTsfHealthCheckConf'].nil?
            @ServiceTsfHealthCheckConf = HealthCheckConf.new
            @ServiceTsfHealthCheckConf.deserialize(params['ServiceTsfHealthCheckConf'])
          end
          @EnableCORS = params['EnableCORS']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Environments = params['Environments']
          @IsBase64Encoded = params['IsBase64Encoded']
          @IsBase64Trigger = params['IsBase64Trigger']
          unless params['Base64EncodedTriggerRules'].nil?
            @Base64EncodedTriggerRules = []
            params['Base64EncodedTriggerRules'].each do |i|
              base64encodedtriggerrule_tmp = Base64EncodedTriggerRule.new
              base64encodedtriggerrule_tmp.deserialize(i)
              @Base64EncodedTriggerRules << base64encodedtriggerrule_tmp
            end
          end
          @ServiceScfEventIsAsyncCall = params['ServiceScfEventIsAsyncCall']
        end
      end

      # 插件相关的API列表信息。
      class ApiInfoSummary < TencentCloud::Common::AbstractModel
        # @param TotalCount: 插件相关的API总数。
        # @type TotalCount: Integer
        # @param ApiSet: 插件相关的API信息。
        # @type ApiSet: Array

        attr_accessor :TotalCount, :ApiSet

        def initialize(totalcount=nil, apiset=nil)
          @TotalCount = totalcount
          @ApiSet = apiset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiSet'].nil?
            @ApiSet = []
            params['ApiSet'].each do |i|
              availableapiinfo_tmp = AvailableApiInfo.new
              availableapiinfo_tmp.deserialize(i)
              @ApiSet << availableapiinfo_tmp
            end
          end
        end
      end

      # 密钥详情
      class ApiKey < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 创建的 API 密钥 ID 。
        # @type AccessKeyId: String
        # @param AccessKeySecret: 创建的 API 密钥 Key。
        # @type AccessKeySecret: String
        # @param AccessKeyType: 密钥类型，auto 或者 manual。
        # @type AccessKeyType: String
        # @param SecretName: 用户自定义密钥名称。
        # @type SecretName: String
        # @param ModifiedTime: 最后一次修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type ModifiedTime: String
        # @param Status: 密钥状态。0表示禁用，1表示启用。
        # @type Status: Integer
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type CreatedTime: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :AccessKeyId, :AccessKeySecret, :AccessKeyType, :SecretName, :ModifiedTime, :Status, :CreatedTime, :Tags

        def initialize(accesskeyid=nil, accesskeysecret=nil, accesskeytype=nil, secretname=nil, modifiedtime=nil, status=nil, createdtime=nil, tags=nil)
          @AccessKeyId = accesskeyid
          @AccessKeySecret = accesskeysecret
          @AccessKeyType = accesskeytype
          @SecretName = secretname
          @ModifiedTime = modifiedtime
          @Status = status
          @CreatedTime = createdtime
          @Tags = tags
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @AccessKeySecret = params['AccessKeySecret']
          @AccessKeyType = params['AccessKeyType']
          @SecretName = params['SecretName']
          @ModifiedTime = params['ModifiedTime']
          @Status = params['Status']
          @CreatedTime = params['CreatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 密钥列表
      class ApiKeysStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 API 密钥数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApiKeySet: API 密钥列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiKeySet: Array

        attr_accessor :TotalCount, :ApiKeySet

        def initialize(totalcount=nil, apikeyset=nil)
          @TotalCount = totalcount
          @ApiKeySet = apikeyset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiKeySet'].nil?
            @ApiKeySet = []
            params['ApiKeySet'].each do |i|
              apikey_tmp = ApiKey.new
              apikey_tmp.deserialize(i)
              @ApiKeySet << apikey_tmp
            end
          end
        end
      end

      # api请求配置
      class ApiRequestConfig < TencentCloud::Common::AbstractModel
        # @param Path: path
        # @type Path: String
        # @param Method: 方法
        # @type Method: String

        attr_accessor :Path, :Method

        def initialize(path=nil, method=nil)
          @Path = path
          @Method = method
        end

        def deserialize(params)
          @Path = params['Path']
          @Method = params['Method']
        end
      end

      # api或service绑定使用计划详情
      class ApiUsagePlan < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param ApiId: API 唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param ApiName: API 名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param Path: API 路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: API 方法。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param UsagePlanId: 使用计划的唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanId: String
        # @param UsagePlanName: 使用计划的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanName: String
        # @param UsagePlanDesc: 使用计划的描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanDesc: String
        # @param Environment: 使用计划绑定的服务环境。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environment: String
        # @param InUseRequestNum: 已经使用的配额。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InUseRequestNum: Integer
        # @param MaxRequestNum: 请求配额总量，-1表示没有限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNum: Integer
        # @param MaxRequestNumPreSec: 请求 QPS 上限，-1 表示没有限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNumPreSec: Integer
        # @param CreatedTime: 使用计划创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 使用计划最后修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ServiceName: 服务名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :ServiceId, :ApiId, :ApiName, :Path, :Method, :UsagePlanId, :UsagePlanName, :UsagePlanDesc, :Environment, :InUseRequestNum, :MaxRequestNum, :MaxRequestNumPreSec, :CreatedTime, :ModifiedTime, :ServiceName, :Tags

        def initialize(serviceid=nil, apiid=nil, apiname=nil, path=nil, method=nil, usageplanid=nil, usageplanname=nil, usageplandesc=nil, environment=nil, inuserequestnum=nil, maxrequestnum=nil, maxrequestnumpresec=nil, createdtime=nil, modifiedtime=nil, servicename=nil, tags=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @ApiName = apiname
          @Path = path
          @Method = method
          @UsagePlanId = usageplanid
          @UsagePlanName = usageplanname
          @UsagePlanDesc = usageplandesc
          @Environment = environment
          @InUseRequestNum = inuserequestnum
          @MaxRequestNum = maxrequestnum
          @MaxRequestNumPreSec = maxrequestnumpresec
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ServiceName = servicename
          @Tags = tags
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @Path = params['Path']
          @Method = params['Method']
          @UsagePlanId = params['UsagePlanId']
          @UsagePlanName = params['UsagePlanName']
          @UsagePlanDesc = params['UsagePlanDesc']
          @Environment = params['Environment']
          @InUseRequestNum = params['InUseRequestNum']
          @MaxRequestNum = params['MaxRequestNum']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ServiceName = params['ServiceName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # api绑定使用计划列表
      class ApiUsagePlanSet < TencentCloud::Common::AbstractModel
        # @param TotalCount: API 绑定的使用计划总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApiUsagePlanList: API 绑定使用计划列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiUsagePlanList: Array

        attr_accessor :TotalCount, :ApiUsagePlanList

        def initialize(totalcount=nil, apiusageplanlist=nil)
          @TotalCount = totalcount
          @ApiUsagePlanList = apiusageplanlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiUsagePlanList'].nil?
            @ApiUsagePlanList = []
            params['ApiUsagePlanList'].each do |i|
              apiusageplan_tmp = ApiUsagePlan.new
              apiusageplan_tmp.deserialize(i)
              @ApiUsagePlanList << apiusageplan_tmp
            end
          end
        end
      end

      # key-value
      class ApigatewayTags < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # AttachPlugin请求参数结构体
      class AttachPluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 绑定的API网关插件ID。
        # @type PluginId: String
        # @param ServiceId: 要操作的服务ID。
        # @type ServiceId: String
        # @param EnvironmentName: 要操作API的环境。
        # @type EnvironmentName: String
        # @param ApiIds: 要绑定的API列表。
        # @type ApiIds: Array

        attr_accessor :PluginId, :ServiceId, :EnvironmentName, :ApiIds

        def initialize(pluginid=nil, serviceid=nil, environmentname=nil, apiids=nil)
          @PluginId = pluginid
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @ApiIds = apiids
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @ApiIds = params['ApiIds']
        end
      end

      # AttachPlugin返回参数结构体
      class AttachPluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 绑定操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 插件绑定的API信息
      class AttachedApiInfo < TencentCloud::Common::AbstractModel
        # @param ServiceId: API所在服务ID。
        # @type ServiceId: String
        # @param ServiceName: API所在服务名称。
        # @type ServiceName: String
        # @param ServiceDesc: API所在服务描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDesc: String
        # @param ApiId: API ID。
        # @type ApiId: String
        # @param ApiName: API名称。
        # @type ApiName: String
        # @param ApiDesc: API描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiDesc: String
        # @param Environment: 插件绑定API的环境。
        # @type Environment: String
        # @param AttachedTime: 插件和API绑定时间。
        # @type AttachedTime: String

        attr_accessor :ServiceId, :ServiceName, :ServiceDesc, :ApiId, :ApiName, :ApiDesc, :Environment, :AttachedTime

        def initialize(serviceid=nil, servicename=nil, servicedesc=nil, apiid=nil, apiname=nil, apidesc=nil, environment=nil, attachedtime=nil)
          @ServiceId = serviceid
          @ServiceName = servicename
          @ServiceDesc = servicedesc
          @ApiId = apiid
          @ApiName = apiname
          @ApiDesc = apidesc
          @Environment = environment
          @AttachedTime = attachedtime
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @ServiceDesc = params['ServiceDesc']
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @ApiDesc = params['ApiDesc']
          @Environment = params['Environment']
          @AttachedTime = params['AttachedTime']
        end
      end

      # 插件绑定的API列表
      class AttachedApiSummary < TencentCloud::Common::AbstractModel
        # @param TotalCount: 插件绑定的API数量。
        # @type TotalCount: Integer
        # @param AttachedApis: 插件绑定的API信息。
        # @type AttachedApis: Array

        attr_accessor :TotalCount, :AttachedApis

        def initialize(totalcount=nil, attachedapis=nil)
          @TotalCount = totalcount
          @AttachedApis = attachedapis
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AttachedApis'].nil?
            @AttachedApis = []
            params['AttachedApis'].each do |i|
              attachedapiinfo_tmp = AttachedApiInfo.new
              attachedapiinfo_tmp.deserialize(i)
              @AttachedApis << attachedapiinfo_tmp
            end
          end
        end
      end

      # 已绑定的插件信息。
      class AttachedPluginInfo < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件ID。
        # @type PluginId: String
        # @param Environment: 环境信息。
        # @type Environment: String
        # @param AttachedTime: 绑定时间。
        # @type AttachedTime: String
        # @param PluginName: 插件名称。
        # @type PluginName: String
        # @param PluginType: 插件类型。
        # @type PluginType: String
        # @param Description: 插件描述。
        # @type Description: String
        # @param PluginData: 插件定义语句。
        # @type PluginData: String

        attr_accessor :PluginId, :Environment, :AttachedTime, :PluginName, :PluginType, :Description, :PluginData

        def initialize(pluginid=nil, environment=nil, attachedtime=nil, pluginname=nil, plugintype=nil, description=nil, plugindata=nil)
          @PluginId = pluginid
          @Environment = environment
          @AttachedTime = attachedtime
          @PluginName = pluginname
          @PluginType = plugintype
          @Description = description
          @PluginData = plugindata
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @Environment = params['Environment']
          @AttachedTime = params['AttachedTime']
          @PluginName = params['PluginName']
          @PluginType = params['PluginType']
          @Description = params['Description']
          @PluginData = params['PluginData']
        end
      end

      # 已绑定的插件信息。
      class AttachedPluginSummary < TencentCloud::Common::AbstractModel
        # @param TotalCount: 已绑定的插件总数。
        # @type TotalCount: Integer
        # @param PluginSummary: 已绑定的插件信息。
        # @type PluginSummary: Array

        attr_accessor :TotalCount, :PluginSummary

        def initialize(totalcount=nil, pluginsummary=nil)
          @TotalCount = totalcount
          @PluginSummary = pluginsummary
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PluginSummary'].nil?
            @PluginSummary = []
            params['PluginSummary'].each do |i|
              attachedplugininfo_tmp = AttachedPluginInfo.new
              attachedplugininfo_tmp.deserialize(i)
              @PluginSummary << attachedplugininfo_tmp
            end
          end
        end
      end

      # 插件相关的API信息。
      class AvailableApiInfo < TencentCloud::Common::AbstractModel
        # @param ApiId: API ID。
        # @type ApiId: String
        # @param ApiName: API名称。
        # @type ApiName: String
        # @param ApiType: API类型。
        # @type ApiType: String
        # @param Path: API路径。
        # @type Path: String
        # @param Method: API方法。
        # @type Method: String
        # @param AttachedOtherPlugin: API是否绑定其他插件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachedOtherPlugin: Boolean
        # @param IsAttached: API是否绑定当前插件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAttached: Boolean

        attr_accessor :ApiId, :ApiName, :ApiType, :Path, :Method, :AttachedOtherPlugin, :IsAttached

        def initialize(apiid=nil, apiname=nil, apitype=nil, path=nil, method=nil, attachedotherplugin=nil, isattached=nil)
          @ApiId = apiid
          @ApiName = apiname
          @ApiType = apitype
          @Path = path
          @Method = method
          @AttachedOtherPlugin = attachedotherplugin
          @IsAttached = isattached
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @ApiType = params['ApiType']
          @Path = params['Path']
          @Method = params['Method']
          @AttachedOtherPlugin = params['AttachedOtherPlugin']
          @IsAttached = params['IsAttached']
        end
      end

      # Base64编码的header触发规则
      class Base64EncodedTriggerRule < TencentCloud::Common::AbstractModel
        # @param Name: 进行编码触发的header，可选值 "Accept"和"Content_Type" 对应实际数据流请求header中的Accept和 Content-Type。
        # @type Name: String
        # @param Value: 进行编码触发的header的可选值数组, 数组元素的字符串最大长度为40，元素可以包括数字，英文字母以及特殊字符，特殊字符的可选值为： `.`    `+`    `*`   `-`   `/`  `_`

        # 例如 [
        #     "application/x-vpeg005",
        #     "application/xhtml+xml",
        #     "application/vnd.ms-project",
        #     "application/vnd.rn-rn_music_package"
        # ] 等都是合法的。
        # @type Value: Array

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

      # BindApiApp请求参数结构体
      class BindApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 待绑定的应用唯一 ID 。
        # @type ApiAppId: String
        # @param Environment: 待绑定的环境。
        # @type Environment: String
        # @param ServiceId: 待绑定的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiId: 待绑定的API唯一ID。
        # @type ApiId: String

        attr_accessor :ApiAppId, :Environment, :ServiceId, :ApiId

        def initialize(apiappid=nil, environment=nil, serviceid=nil, apiid=nil)
          @ApiAppId = apiappid
          @Environment = environment
          @ServiceId = serviceid
          @ApiId = apiid
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
          @Environment = params['Environment']
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
        end
      end

      # BindApiApp返回参数结构体
      class BindApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: 绑定操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # vpc通道绑定的api信息
      class BindApiInfo < TencentCloud::Common::AbstractModel
        # @param ApiId: api唯一id
        # @type ApiId: String
        # @param ServiceId: Service唯一id
        # @type ServiceId: String
        # @param ApiName: api名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param ServiceName: 服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param BindTime: 绑定时间
        # @type BindTime: String

        attr_accessor :ApiId, :ServiceId, :ApiName, :ServiceName, :BindTime

        def initialize(apiid=nil, serviceid=nil, apiname=nil, servicename=nil, bindtime=nil)
          @ApiId = apiid
          @ServiceId = serviceid
          @ApiName = apiname
          @ServiceName = servicename
          @BindTime = bindtime
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @ServiceId = params['ServiceId']
          @ApiName = params['ApiName']
          @ServiceName = params['ServiceName']
          @BindTime = params['BindTime']
        end
      end

      # BindEnvironment请求参数结构体
      class BindEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanIds: 待绑定的使用计划唯一 ID 列表。
        # @type UsagePlanIds: Array
        # @param BindType: 绑定类型，取值为API、SERVICE，默认值为SERVICE。
        # @type BindType: String
        # @param Environment: 待绑定的环境。
        # @type Environment: String
        # @param ServiceId: 待绑定的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiIds: API唯一ID数组，当bindType=API时，需要传入此参数。
        # @type ApiIds: Array

        attr_accessor :UsagePlanIds, :BindType, :Environment, :ServiceId, :ApiIds

        def initialize(usageplanids=nil, bindtype=nil, environment=nil, serviceid=nil, apiids=nil)
          @UsagePlanIds = usageplanids
          @BindType = bindtype
          @Environment = environment
          @ServiceId = serviceid
          @ApiIds = apiids
        end

        def deserialize(params)
          @UsagePlanIds = params['UsagePlanIds']
          @BindType = params['BindType']
          @Environment = params['Environment']
          @ServiceId = params['ServiceId']
          @ApiIds = params['ApiIds']
        end
      end

      # BindEnvironment返回参数结构体
      class BindEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param Result: 绑定操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # BindIPStrategy请求参数结构体
      class BindIPStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待绑定的IP策略所属的服务唯一ID。
        # @type ServiceId: String
        # @param StrategyId: 待绑定的IP策略唯一ID。
        # @type StrategyId: String
        # @param EnvironmentName: IP策略待绑定的环境。
        # @type EnvironmentName: String
        # @param BindApiIds: IP策略待绑定的API列表。
        # @type BindApiIds: Array

        attr_accessor :ServiceId, :StrategyId, :EnvironmentName, :BindApiIds

        def initialize(serviceid=nil, strategyid=nil, environmentname=nil, bindapiids=nil)
          @ServiceId = serviceid
          @StrategyId = strategyid
          @EnvironmentName = environmentname
          @BindApiIds = bindapiids
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyId = params['StrategyId']
          @EnvironmentName = params['EnvironmentName']
          @BindApiIds = params['BindApiIds']
        end
      end

      # BindIPStrategy返回参数结构体
      class BindIPStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 绑定操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # BindSecretIds请求参数结构体
      class BindSecretIdsRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 待绑定的使用计划唯一 ID。
        # @type UsagePlanId: String
        # @param AccessKeyIds: 待绑定的密钥 ID 数组。
        # @type AccessKeyIds: Array

        attr_accessor :UsagePlanId, :AccessKeyIds

        def initialize(usageplanid=nil, accesskeyids=nil)
          @UsagePlanId = usageplanid
          @AccessKeyIds = accesskeyids
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @AccessKeyIds = params['AccessKeyIds']
        end
      end

      # BindSecretIds返回参数结构体
      class BindSecretIdsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 绑定操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # BindSubDomain请求参数结构体
      class BindSubDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一 ID。
        # @type ServiceId: String
        # @param SubDomain: 待绑定的自定义的域名。
        # @type SubDomain: String
        # @param Protocol: 服务支持协议，可选值为http、https、http&https。
        # @type Protocol: String
        # @param NetType: 网络类型，可选值为OUTER、INNER。
        # @type NetType: String
        # @param IsDefaultMapping: 是否使用默认路径映射，默认为 true。为 false 时，表示自定义路径映射，此时 PathMappingSet 必填。
        # @type IsDefaultMapping: Boolean
        # @param NetSubDomain: 默认域名。
        # @type NetSubDomain: String
        # @param CertificateId: 待绑定自定义域名的证书唯一 ID。针对Protocol 为https或http&https可以选择上传。
        # @type CertificateId: String
        # @param PathMappingSet: 自定义域名路径映射，最多输入三个Environment，并且只能分别取值“test”、 ”prepub“、”release“。
        # @type PathMappingSet: Array
        # @param IsForcedHttps: 是否将HTTP请求强制跳转 HTTPS，默认为false。参数为 true时，API网关会将所有使用该自定义域名的 HTTP 协议的请求重定向至 HTTPS 协议进行转发。
        # @type IsForcedHttps: Boolean

        attr_accessor :ServiceId, :SubDomain, :Protocol, :NetType, :IsDefaultMapping, :NetSubDomain, :CertificateId, :PathMappingSet, :IsForcedHttps

        def initialize(serviceid=nil, subdomain=nil, protocol=nil, nettype=nil, isdefaultmapping=nil, netsubdomain=nil, certificateid=nil, pathmappingset=nil, isforcedhttps=nil)
          @ServiceId = serviceid
          @SubDomain = subdomain
          @Protocol = protocol
          @NetType = nettype
          @IsDefaultMapping = isdefaultmapping
          @NetSubDomain = netsubdomain
          @CertificateId = certificateid
          @PathMappingSet = pathmappingset
          @IsForcedHttps = isforcedhttps
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @SubDomain = params['SubDomain']
          @Protocol = params['Protocol']
          @NetType = params['NetType']
          @IsDefaultMapping = params['IsDefaultMapping']
          @NetSubDomain = params['NetSubDomain']
          @CertificateId = params['CertificateId']
          unless params['PathMappingSet'].nil?
            @PathMappingSet = []
            params['PathMappingSet'].each do |i|
              pathmapping_tmp = PathMapping.new
              pathmapping_tmp.deserialize(i)
              @PathMappingSet << pathmapping_tmp
            end
          end
          @IsForcedHttps = params['IsForcedHttps']
        end
      end

      # BindSubDomain返回参数结构体
      class BindSubDomainResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # BuildAPIDoc请求参数结构体
      class BuildAPIDocRequest < TencentCloud::Common::AbstractModel
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String

        attr_accessor :ApiDocId

        def initialize(apidocid=nil)
          @ApiDocId = apidocid
        end

        def deserialize(params)
          @ApiDocId = params['ApiDocId']
        end
      end

      # BuildAPIDoc返回参数结构体
      class BuildAPIDocResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 常量参数
      class ConstantParameter < TencentCloud::Common::AbstractModel
        # @param Name: 常量参数名称。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Desc: 常量参数描述。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Position: 常量参数位置。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: String
        # @param DefaultValue: 常量参数默认值。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String

        attr_accessor :Name, :Desc, :Position, :DefaultValue

        def initialize(name=nil, desc=nil, position=nil, defaultvalue=nil)
          @Name = name
          @Desc = desc
          @Position = position
          @DefaultValue = defaultvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Position = params['Position']
          @DefaultValue = params['DefaultValue']
        end
      end

      # cos类型的api配置
      class CosConfig < TencentCloud::Common::AbstractModel
        # @param Action: API调用后端COS的方式，前端请求方法与Action的可选值为：
        # GET：GetObject
        # PUT：PutObject
        # POST：PostObject、AppendObject
        # HEAD： HeadObject
        # DELETE： DeleteObject。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Action: String
        # @param BucketName: API后端COS的存储桶名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BucketName: String
        # @param Authorization: API调用后端COS的签名开关，默认为false。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Authorization: Boolean
        # @param PathMatchMode: API后端COS的路径匹配模式，可选值：
        # BackEndPath ： 后端路径匹配
        # FullPath ： 全路径匹配

        # 默认值为：BackEndPath
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PathMatchMode: String

        attr_accessor :Action, :BucketName, :Authorization, :PathMatchMode

        def initialize(action=nil, bucketname=nil, authorization=nil, pathmatchmode=nil)
          @Action = action
          @BucketName = bucketname
          @Authorization = authorization
          @PathMatchMode = pathmatchmode
        end

        def deserialize(params)
          @Action = params['Action']
          @BucketName = params['BucketName']
          @Authorization = params['Authorization']
          @PathMatchMode = params['PathMatchMode']
        end
      end

      # CreateAPIDoc请求参数结构体
      class CreateAPIDocRequest < TencentCloud::Common::AbstractModel
        # @param ApiDocName: API文档名称
        # @type ApiDocName: String
        # @param ServiceId: 服务名称
        # @type ServiceId: String
        # @param Environment: 环境名称
        # @type Environment: String
        # @param ApiIds: 生成文档的API列表
        # @type ApiIds: Array
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :ApiDocName, :ServiceId, :Environment, :ApiIds, :Tags

        def initialize(apidocname=nil, serviceid=nil, environment=nil, apiids=nil, tags=nil)
          @ApiDocName = apidocname
          @ServiceId = serviceid
          @Environment = environment
          @ApiIds = apiids
          @Tags = tags
        end

        def deserialize(params)
          @ApiDocName = params['ApiDocName']
          @ServiceId = params['ServiceId']
          @Environment = params['Environment']
          @ApiIds = params['ApiIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateAPIDoc返回参数结构体
      class CreateAPIDocResponse < TencentCloud::Common::AbstractModel
        # @param Result: API文档基本信息
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.APIDoc`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = APIDoc.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateApiApp请求参数结构体
      class CreateApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppName: 用户自定义应用名称。
        # @type ApiAppName: String
        # @param ApiAppDesc: 应用描述
        # @type ApiAppDesc: String

        attr_accessor :ApiAppName, :ApiAppDesc

        def initialize(apiappname=nil, apiappdesc=nil)
          @ApiAppName = apiappname
          @ApiAppDesc = apiappdesc
        end

        def deserialize(params)
          @ApiAppName = params['ApiAppName']
          @ApiAppDesc = params['ApiAppDesc']
        end
      end

      # CreateApiApp返回参数结构体
      class CreateApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: 新增的应用详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiAppInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiAppInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateApiKey请求参数结构体
      class CreateApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param SecretName: 用户自定义密钥名称。
        # @type SecretName: String
        # @param AccessKeyType: 密钥类型，支持 auto 和 manual（自定义密钥），默认为 auto。
        # @type AccessKeyType: String
        # @param AccessKeyId: 用户自定义密钥 ID，AccessKeyType 为 manual 时必传。长度为5 - 50字符，由字母、数字、英文下划线组成。
        # @type AccessKeyId: String
        # @param AccessKeySecret: 用户自定义密钥 Key，AccessKeyType 为 manual 时必传。长度为10 - 50字符，由字母、数字、英文下划线。
        # @type AccessKeySecret: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :SecretName, :AccessKeyType, :AccessKeyId, :AccessKeySecret, :Tags

        def initialize(secretname=nil, accesskeytype=nil, accesskeyid=nil, accesskeysecret=nil, tags=nil)
          @SecretName = secretname
          @AccessKeyType = accesskeytype
          @AccessKeyId = accesskeyid
          @AccessKeySecret = accesskeysecret
          @Tags = tags
        end

        def deserialize(params)
          @SecretName = params['SecretName']
          @AccessKeyType = params['AccessKeyType']
          @AccessKeyId = params['AccessKeyId']
          @AccessKeySecret = params['AccessKeySecret']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateApiKey返回参数结构体
      class CreateApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 新增的密钥详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiKey`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiKey.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateApi请求参数结构体
      class CreateApiRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # @type ServiceId: String
        # @param ServiceType: API 的后端服务类型。支持HTTP、MOCK、TSF、SCF、EB、TARGET、VPC、UPSTREAM、GRPC、COS、WEBSOCKET。
        # @type ServiceType: String
        # @param ServiceTimeout: API 的后端服务超时时间，单位是秒。
        # @type ServiceTimeout: Integer
        # @param Protocol: API 的前端请求协议，支持HTTP和WEBSOCKET。
        # @type Protocol: String
        # @param RequestConfig: 请求的前端配置。
        # @type RequestConfig: :class:`Tencentcloud::Apigateway.v20180808.models.ApiRequestConfig`
        # @param ApiName: 用户自定义的 API 名称。
        # @type ApiName: String
        # @param ApiDesc: 用户自定义的 API 接口描述。
        # @type ApiDesc: String
        # @param ApiType: API 类型，支持NORMAL（普通API）和TSF（微服务API），默认为NORMAL。
        # @type ApiType: String
        # @param AuthType: API 鉴权类型。支持SECRET（密钥对鉴权）、NONE（免鉴权）、OAUTH、APP（应用认证）。默认为NONE。
        # @type AuthType: String
        # @param EnableCORS: 是否开启跨域。
        # @type EnableCORS: Boolean
        # @param ConstantParameters: 常量参数。
        # @type ConstantParameters: Array
        # @param RequestParameters: 前端请求参数。
        # @type RequestParameters: Array
        # @param ApiBusinessType: 当AuthType 为 OAUTH时，该字段有效， NORMAL：业务api OAUTH：授权API。
        # @type ApiBusinessType: String
        # @param ServiceMockReturnMessage: API 的后端 Mock 返回信息。如果 ServiceType 是 Mock，则此参数必传。
        # @type ServiceMockReturnMessage: String
        # @param MicroServices: API绑定微服务列表。
        # @type MicroServices: Array
        # @param ServiceTsfLoadBalanceConf: 微服务的负载均衡配置。
        # @type ServiceTsfLoadBalanceConf: :class:`Tencentcloud::Apigateway.v20180808.models.TsfLoadBalanceConfResp`
        # @param ServiceTsfHealthCheckConf: 微服务的健康检查配置。
        # @type ServiceTsfHealthCheckConf: :class:`Tencentcloud::Apigateway.v20180808.models.HealthCheckConf`
        # @param TargetServices: target类型后端资源信息。（内测阶段）
        # @type TargetServices: Array
        # @param TargetServicesLoadBalanceConf: target类型负载均衡配置。（内测阶段）
        # @type TargetServicesLoadBalanceConf: Integer
        # @param TargetServicesHealthCheckConf: target健康检查配置。（内测阶段）
        # @type TargetServicesHealthCheckConf: :class:`Tencentcloud::Apigateway.v20180808.models.HealthCheckConf`
        # @param ServiceScfFunctionName: scf 函数名称。当后端类型是SCF时生效。
        # @type ServiceScfFunctionName: String
        # @param ServiceWebsocketRegisterFunctionName: scf websocket注册函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketRegisterFunctionName: String
        # @param ServiceWebsocketCleanupFunctionName: scf websocket清理函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketCleanupFunctionName: String
        # @param ServiceWebsocketTransportFunctionName: scf websocket传输函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketTransportFunctionName: String
        # @param ServiceScfFunctionNamespace: scf 函数命名空间。当后端类型是SCF时生效。
        # @type ServiceScfFunctionNamespace: String
        # @param ServiceScfFunctionQualifier: scf函数版本。当后端类型是SCF时生效。
        # @type ServiceScfFunctionQualifier: String
        # @param ServiceWebsocketRegisterFunctionNamespace: scf websocket注册函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketRegisterFunctionNamespace: String
        # @param ServiceWebsocketRegisterFunctionQualifier: scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketRegisterFunctionQualifier: String
        # @param ServiceWebsocketTransportFunctionNamespace: scf websocket传输函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketTransportFunctionNamespace: String
        # @param ServiceWebsocketTransportFunctionQualifier: scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketTransportFunctionQualifier: String
        # @param ServiceWebsocketCleanupFunctionNamespace: scf websocket清理函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketCleanupFunctionNamespace: String
        # @param ServiceWebsocketCleanupFunctionQualifier: scf websocket清理函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketCleanupFunctionQualifier: String
        # @param ServiceScfIsIntegratedResponse: 是否开启响应集成。当后端类型是SCF时生效。
        # @type ServiceScfIsIntegratedResponse: Boolean
        # @param IsDebugAfterCharge: 开始调试后计费。（云市场预留字段）
        # @type IsDebugAfterCharge: Boolean
        # @param IsDeleteResponseErrorCodes: 是否删除自定义响应配置错误码，如果不传或者传 False，不删除，当传 True 时，则删除此 API 所有自定义响应配置错误码。
        # @type IsDeleteResponseErrorCodes: Boolean
        # @param ResponseType: 返回类型。
        # @type ResponseType: String
        # @param ResponseSuccessExample: 自定义响应配置成功响应示例。
        # @type ResponseSuccessExample: String
        # @param ResponseFailExample: 自定义响应配置失败响应示例。
        # @type ResponseFailExample: String
        # @param ServiceConfig: API 的后端服务配置。
        # @type ServiceConfig: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceConfig`
        # @param AuthRelationApiId: 关联的授权API 唯一 ID，当AuthType为OAUTH且ApiBusinessType为NORMAL时生效。标示业务API绑定的oauth2.0授权API唯一ID。
        # @type AuthRelationApiId: String
        # @param ServiceParameters: API的后端服务参数。
        # @type ServiceParameters: Array
        # @param OauthConfig: oauth配置。当AuthType是OAUTH时生效。
        # @type OauthConfig: :class:`Tencentcloud::Apigateway.v20180808.models.OauthConfig`
        # @param ResponseErrorCodes: 用户自定义错误码配置。
        # @type ResponseErrorCodes: Array
        # @param TargetNamespaceId: tsf serverless 命名空间ID。（内测中）
        # @type TargetNamespaceId: String
        # @param UserType: 用户类型。
        # @type UserType: String
        # @param IsBase64Encoded: 是否打开Base64编码，只有后端是scf时才会生效。
        # @type IsBase64Encoded: Boolean
        # @param EventBusId: 事件总线ID。
        # @type EventBusId: String
        # @param ServiceScfFunctionType: scf函数类型。当后端类型是SCF时生效。支持事件触发(EVENT)，http直通云函数(HTTP)。
        # @type ServiceScfFunctionType: String
        # @param ServiceScfEventIsAsyncCall: 是否开启SCF Event异步调用。
        # @type ServiceScfEventIsAsyncCall: Boolean
        # @param EIAMAppType: EIAM应用类型。
        # @type EIAMAppType: String
        # @param EIAMAuthType: EIAM应用认证类型，支持仅认证（AuthenticationOnly）、认证和鉴权（Authorization）。
        # @type EIAMAuthType: String
        # @param TokenTimeout: EIAM应用Token 有效时间，单位为秒，默认为7200秒。
        # @type TokenTimeout: Integer
        # @param EIAMAppId: EIAM应用ID。
        # @type EIAMAppId: String
        # @param Owner: 资源的Owner
        # @type Owner: String

        attr_accessor :ServiceId, :ServiceType, :ServiceTimeout, :Protocol, :RequestConfig, :ApiName, :ApiDesc, :ApiType, :AuthType, :EnableCORS, :ConstantParameters, :RequestParameters, :ApiBusinessType, :ServiceMockReturnMessage, :MicroServices, :ServiceTsfLoadBalanceConf, :ServiceTsfHealthCheckConf, :TargetServices, :TargetServicesLoadBalanceConf, :TargetServicesHealthCheckConf, :ServiceScfFunctionName, :ServiceWebsocketRegisterFunctionName, :ServiceWebsocketCleanupFunctionName, :ServiceWebsocketTransportFunctionName, :ServiceScfFunctionNamespace, :ServiceScfFunctionQualifier, :ServiceWebsocketRegisterFunctionNamespace, :ServiceWebsocketRegisterFunctionQualifier, :ServiceWebsocketTransportFunctionNamespace, :ServiceWebsocketTransportFunctionQualifier, :ServiceWebsocketCleanupFunctionNamespace, :ServiceWebsocketCleanupFunctionQualifier, :ServiceScfIsIntegratedResponse, :IsDebugAfterCharge, :IsDeleteResponseErrorCodes, :ResponseType, :ResponseSuccessExample, :ResponseFailExample, :ServiceConfig, :AuthRelationApiId, :ServiceParameters, :OauthConfig, :ResponseErrorCodes, :TargetNamespaceId, :UserType, :IsBase64Encoded, :EventBusId, :ServiceScfFunctionType, :ServiceScfEventIsAsyncCall, :EIAMAppType, :EIAMAuthType, :TokenTimeout, :EIAMAppId, :Owner

        def initialize(serviceid=nil, servicetype=nil, servicetimeout=nil, protocol=nil, requestconfig=nil, apiname=nil, apidesc=nil, apitype=nil, authtype=nil, enablecors=nil, constantparameters=nil, requestparameters=nil, apibusinesstype=nil, servicemockreturnmessage=nil, microservices=nil, servicetsfloadbalanceconf=nil, servicetsfhealthcheckconf=nil, targetservices=nil, targetservicesloadbalanceconf=nil, targetserviceshealthcheckconf=nil, servicescffunctionname=nil, servicewebsocketregisterfunctionname=nil, servicewebsocketcleanupfunctionname=nil, servicewebsockettransportfunctionname=nil, servicescffunctionnamespace=nil, servicescffunctionqualifier=nil, servicewebsocketregisterfunctionnamespace=nil, servicewebsocketregisterfunctionqualifier=nil, servicewebsockettransportfunctionnamespace=nil, servicewebsockettransportfunctionqualifier=nil, servicewebsocketcleanupfunctionnamespace=nil, servicewebsocketcleanupfunctionqualifier=nil, servicescfisintegratedresponse=nil, isdebugaftercharge=nil, isdeleteresponseerrorcodes=nil, responsetype=nil, responsesuccessexample=nil, responsefailexample=nil, serviceconfig=nil, authrelationapiid=nil, serviceparameters=nil, oauthconfig=nil, responseerrorcodes=nil, targetnamespaceid=nil, usertype=nil, isbase64encoded=nil, eventbusid=nil, servicescffunctiontype=nil, servicescfeventisasynccall=nil, eiamapptype=nil, eiamauthtype=nil, tokentimeout=nil, eiamappid=nil, owner=nil)
          @ServiceId = serviceid
          @ServiceType = servicetype
          @ServiceTimeout = servicetimeout
          @Protocol = protocol
          @RequestConfig = requestconfig
          @ApiName = apiname
          @ApiDesc = apidesc
          @ApiType = apitype
          @AuthType = authtype
          @EnableCORS = enablecors
          @ConstantParameters = constantparameters
          @RequestParameters = requestparameters
          @ApiBusinessType = apibusinesstype
          @ServiceMockReturnMessage = servicemockreturnmessage
          @MicroServices = microservices
          @ServiceTsfLoadBalanceConf = servicetsfloadbalanceconf
          @ServiceTsfHealthCheckConf = servicetsfhealthcheckconf
          @TargetServices = targetservices
          @TargetServicesLoadBalanceConf = targetservicesloadbalanceconf
          @TargetServicesHealthCheckConf = targetserviceshealthcheckconf
          @ServiceScfFunctionName = servicescffunctionname
          @ServiceWebsocketRegisterFunctionName = servicewebsocketregisterfunctionname
          @ServiceWebsocketCleanupFunctionName = servicewebsocketcleanupfunctionname
          @ServiceWebsocketTransportFunctionName = servicewebsockettransportfunctionname
          @ServiceScfFunctionNamespace = servicescffunctionnamespace
          @ServiceScfFunctionQualifier = servicescffunctionqualifier
          @ServiceWebsocketRegisterFunctionNamespace = servicewebsocketregisterfunctionnamespace
          @ServiceWebsocketRegisterFunctionQualifier = servicewebsocketregisterfunctionqualifier
          @ServiceWebsocketTransportFunctionNamespace = servicewebsockettransportfunctionnamespace
          @ServiceWebsocketTransportFunctionQualifier = servicewebsockettransportfunctionqualifier
          @ServiceWebsocketCleanupFunctionNamespace = servicewebsocketcleanupfunctionnamespace
          @ServiceWebsocketCleanupFunctionQualifier = servicewebsocketcleanupfunctionqualifier
          @ServiceScfIsIntegratedResponse = servicescfisintegratedresponse
          @IsDebugAfterCharge = isdebugaftercharge
          @IsDeleteResponseErrorCodes = isdeleteresponseerrorcodes
          @ResponseType = responsetype
          @ResponseSuccessExample = responsesuccessexample
          @ResponseFailExample = responsefailexample
          @ServiceConfig = serviceconfig
          @AuthRelationApiId = authrelationapiid
          @ServiceParameters = serviceparameters
          @OauthConfig = oauthconfig
          @ResponseErrorCodes = responseerrorcodes
          @TargetNamespaceId = targetnamespaceid
          @UserType = usertype
          @IsBase64Encoded = isbase64encoded
          @EventBusId = eventbusid
          @ServiceScfFunctionType = servicescffunctiontype
          @ServiceScfEventIsAsyncCall = servicescfeventisasynccall
          @EIAMAppType = eiamapptype
          @EIAMAuthType = eiamauthtype
          @TokenTimeout = tokentimeout
          @EIAMAppId = eiamappid
          @Owner = owner
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceType = params['ServiceType']
          @ServiceTimeout = params['ServiceTimeout']
          @Protocol = params['Protocol']
          unless params['RequestConfig'].nil?
            @RequestConfig = ApiRequestConfig.new
            @RequestConfig.deserialize(params['RequestConfig'])
          end
          @ApiName = params['ApiName']
          @ApiDesc = params['ApiDesc']
          @ApiType = params['ApiType']
          @AuthType = params['AuthType']
          @EnableCORS = params['EnableCORS']
          unless params['ConstantParameters'].nil?
            @ConstantParameters = []
            params['ConstantParameters'].each do |i|
              constantparameter_tmp = ConstantParameter.new
              constantparameter_tmp.deserialize(i)
              @ConstantParameters << constantparameter_tmp
            end
          end
          unless params['RequestParameters'].nil?
            @RequestParameters = []
            params['RequestParameters'].each do |i|
              requestparameter_tmp = RequestParameter.new
              requestparameter_tmp.deserialize(i)
              @RequestParameters << requestparameter_tmp
            end
          end
          @ApiBusinessType = params['ApiBusinessType']
          @ServiceMockReturnMessage = params['ServiceMockReturnMessage']
          unless params['MicroServices'].nil?
            @MicroServices = []
            params['MicroServices'].each do |i|
              microservicereq_tmp = MicroServiceReq.new
              microservicereq_tmp.deserialize(i)
              @MicroServices << microservicereq_tmp
            end
          end
          unless params['ServiceTsfLoadBalanceConf'].nil?
            @ServiceTsfLoadBalanceConf = TsfLoadBalanceConfResp.new
            @ServiceTsfLoadBalanceConf.deserialize(params['ServiceTsfLoadBalanceConf'])
          end
          unless params['ServiceTsfHealthCheckConf'].nil?
            @ServiceTsfHealthCheckConf = HealthCheckConf.new
            @ServiceTsfHealthCheckConf.deserialize(params['ServiceTsfHealthCheckConf'])
          end
          unless params['TargetServices'].nil?
            @TargetServices = []
            params['TargetServices'].each do |i|
              targetservicesreq_tmp = TargetServicesReq.new
              targetservicesreq_tmp.deserialize(i)
              @TargetServices << targetservicesreq_tmp
            end
          end
          @TargetServicesLoadBalanceConf = params['TargetServicesLoadBalanceConf']
          unless params['TargetServicesHealthCheckConf'].nil?
            @TargetServicesHealthCheckConf = HealthCheckConf.new
            @TargetServicesHealthCheckConf.deserialize(params['TargetServicesHealthCheckConf'])
          end
          @ServiceScfFunctionName = params['ServiceScfFunctionName']
          @ServiceWebsocketRegisterFunctionName = params['ServiceWebsocketRegisterFunctionName']
          @ServiceWebsocketCleanupFunctionName = params['ServiceWebsocketCleanupFunctionName']
          @ServiceWebsocketTransportFunctionName = params['ServiceWebsocketTransportFunctionName']
          @ServiceScfFunctionNamespace = params['ServiceScfFunctionNamespace']
          @ServiceScfFunctionQualifier = params['ServiceScfFunctionQualifier']
          @ServiceWebsocketRegisterFunctionNamespace = params['ServiceWebsocketRegisterFunctionNamespace']
          @ServiceWebsocketRegisterFunctionQualifier = params['ServiceWebsocketRegisterFunctionQualifier']
          @ServiceWebsocketTransportFunctionNamespace = params['ServiceWebsocketTransportFunctionNamespace']
          @ServiceWebsocketTransportFunctionQualifier = params['ServiceWebsocketTransportFunctionQualifier']
          @ServiceWebsocketCleanupFunctionNamespace = params['ServiceWebsocketCleanupFunctionNamespace']
          @ServiceWebsocketCleanupFunctionQualifier = params['ServiceWebsocketCleanupFunctionQualifier']
          @ServiceScfIsIntegratedResponse = params['ServiceScfIsIntegratedResponse']
          @IsDebugAfterCharge = params['IsDebugAfterCharge']
          @IsDeleteResponseErrorCodes = params['IsDeleteResponseErrorCodes']
          @ResponseType = params['ResponseType']
          @ResponseSuccessExample = params['ResponseSuccessExample']
          @ResponseFailExample = params['ResponseFailExample']
          unless params['ServiceConfig'].nil?
            @ServiceConfig = ServiceConfig.new
            @ServiceConfig.deserialize(params['ServiceConfig'])
          end
          @AuthRelationApiId = params['AuthRelationApiId']
          unless params['ServiceParameters'].nil?
            @ServiceParameters = []
            params['ServiceParameters'].each do |i|
              serviceparameter_tmp = ServiceParameter.new
              serviceparameter_tmp.deserialize(i)
              @ServiceParameters << serviceparameter_tmp
            end
          end
          unless params['OauthConfig'].nil?
            @OauthConfig = OauthConfig.new
            @OauthConfig.deserialize(params['OauthConfig'])
          end
          unless params['ResponseErrorCodes'].nil?
            @ResponseErrorCodes = []
            params['ResponseErrorCodes'].each do |i|
              responseerrorcodereq_tmp = ResponseErrorCodeReq.new
              responseerrorcodereq_tmp.deserialize(i)
              @ResponseErrorCodes << responseerrorcodereq_tmp
            end
          end
          @TargetNamespaceId = params['TargetNamespaceId']
          @UserType = params['UserType']
          @IsBase64Encoded = params['IsBase64Encoded']
          @EventBusId = params['EventBusId']
          @ServiceScfFunctionType = params['ServiceScfFunctionType']
          @ServiceScfEventIsAsyncCall = params['ServiceScfEventIsAsyncCall']
          @EIAMAppType = params['EIAMAppType']
          @EIAMAuthType = params['EIAMAuthType']
          @TokenTimeout = params['TokenTimeout']
          @EIAMAppId = params['EIAMAppId']
          @Owner = params['Owner']
        end
      end

      # CreateApi返回参数结构体
      class CreateApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: api信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.CreateApiResultInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateApiResultInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建api返回
      class CreateApiResultInfo < TencentCloud::Common::AbstractModel
        # @param ApiId: api id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: 请求方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String

        attr_accessor :ApiId, :Path, :Method, :CreatedTime

        def initialize(apiid=nil, path=nil, method=nil, createdtime=nil)
          @ApiId = apiid
          @Path = path
          @Method = method
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @Path = params['Path']
          @Method = params['Method']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 创建api返回
      class CreateApiRsp < TencentCloud::Common::AbstractModel
        # @param ApiId: api id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param Path: 路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: 请求方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param CreatedTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param Status: 导入状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param ErrMsg: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param ApiName: api name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String

        attr_accessor :ApiId, :Path, :Method, :CreatedTime, :Status, :ErrMsg, :ApiName

        def initialize(apiid=nil, path=nil, method=nil, createdtime=nil, status=nil, errmsg=nil, apiname=nil)
          @ApiId = apiid
          @Path = path
          @Method = method
          @CreatedTime = createdtime
          @Status = status
          @ErrMsg = errmsg
          @ApiName = apiname
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @Path = params['Path']
          @Method = params['Method']
          @CreatedTime = params['CreatedTime']
          @Status = params['Status']
          @ErrMsg = params['ErrMsg']
          @ApiName = params['ApiName']
        end
      end

      # CreateApiRsp  返回加TotalCount
      class CreateApiRspSet < TencentCloud::Common::AbstractModel
        # @param TotalCount: 个数
        # @type TotalCount: Integer
        # @param ApiSet: 返回的数组
        # @type ApiSet: Array

        attr_accessor :TotalCount, :ApiSet

        def initialize(totalcount=nil, apiset=nil)
          @TotalCount = totalcount
          @ApiSet = apiset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiSet'].nil?
            @ApiSet = []
            params['ApiSet'].each do |i|
              createapirsp_tmp = CreateApiRsp.new
              createapirsp_tmp.deserialize(i)
              @ApiSet << createapirsp_tmp
            end
          end
        end
      end

      # CreateIPStrategy请求参数结构体
      class CreateIPStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务的唯一ID。
        # @type ServiceId: String
        # @param StrategyName: 用户自定义的策略名称。
        # @type StrategyName: String
        # @param StrategyType: 策略类型。支持WHITE（白名单）和BLACK（黑名单）。
        # @type StrategyType: String
        # @param StrategyData: 策略详情，多个ip 使用\n 分隔符分开。
        # @type StrategyData: String

        attr_accessor :ServiceId, :StrategyName, :StrategyType, :StrategyData

        def initialize(serviceid=nil, strategyname=nil, strategytype=nil, strategydata=nil)
          @ServiceId = serviceid
          @StrategyName = strategyname
          @StrategyType = strategytype
          @StrategyData = strategydata
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyName = params['StrategyName']
          @StrategyType = params['StrategyType']
          @StrategyData = params['StrategyData']
        end
      end

      # CreateIPStrategy返回参数结构体
      class CreateIPStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 新建的IP策略详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.IPStrategy`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = IPStrategy.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePlugin请求参数结构体
      class CreatePluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginName: 用户自定义的插件名称。最长50个字符，最短2个字符，支持 a-z,A-Z,0-9,_, 必须字母开头，字母或者数字结尾。
        # @type PluginName: String
        # @param PluginType: 插件类型。目前支持IPControl, TrafficControl, Cors, CustomReq, CustomAuth，Routing，TrafficControlByParameter, CircuitBreaker, ProxyCache。
        # @type PluginType: String
        # @param PluginData: 插件定义语句，支持json。
        # @type PluginData: String
        # @param Description: 插件描述，限定200字以内。
        # @type Description: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :PluginName, :PluginType, :PluginData, :Description, :Tags

        def initialize(pluginname=nil, plugintype=nil, plugindata=nil, description=nil, tags=nil)
          @PluginName = pluginname
          @PluginType = plugintype
          @PluginData = plugindata
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @PluginName = params['PluginName']
          @PluginType = params['PluginType']
          @PluginData = params['PluginData']
          @Description = params['Description']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreatePlugin返回参数结构体
      class CreatePluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 新建的插件详情。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.Plugin`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Plugin.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateService请求参数结构体
      class CreateServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceName: 用户自定义的服务名称。
        # @type ServiceName: String
        # @param Protocol: 服务的前端请求类型。如 http、https、http&https。
        # @type Protocol: String
        # @param ServiceDesc: 用户自定义的服务描述。
        # @type ServiceDesc: String
        # @param NetTypes: 网络类型列表，用于指定支持的访问类型，INNER为内网访问，OUTER为外网访问。默认为OUTER。
        # @type NetTypes: Array
        # @param IpVersion: IP版本号，支持IPv4和IPv6，默认为IPv4。
        # @type IpVersion: String
        # @param SetServerName: 集群名称。保留字段，tsf serverless类型使用。
        # @type SetServerName: String
        # @param AppIdType: 用户类型。保留类型，serverless用户使用。
        # @type AppIdType: String
        # @param Tags: 标签。
        # @type Tags: Array
        # @param InstanceId: 独享实例id
        # @type InstanceId: String
        # @param UniqVpcId: vpc属性，选择VPC后不可修改，为服务选择VPC后，可对接该VPC下的后端资源
        # @type UniqVpcId: String

        attr_accessor :ServiceName, :Protocol, :ServiceDesc, :NetTypes, :IpVersion, :SetServerName, :AppIdType, :Tags, :InstanceId, :UniqVpcId

        def initialize(servicename=nil, protocol=nil, servicedesc=nil, nettypes=nil, ipversion=nil, setservername=nil, appidtype=nil, tags=nil, instanceid=nil, uniqvpcid=nil)
          @ServiceName = servicename
          @Protocol = protocol
          @ServiceDesc = servicedesc
          @NetTypes = nettypes
          @IpVersion = ipversion
          @SetServerName = setservername
          @AppIdType = appidtype
          @Tags = tags
          @InstanceId = instanceid
          @UniqVpcId = uniqvpcid
        end

        def deserialize(params)
          @ServiceName = params['ServiceName']
          @Protocol = params['Protocol']
          @ServiceDesc = params['ServiceDesc']
          @NetTypes = params['NetTypes']
          @IpVersion = params['IpVersion']
          @SetServerName = params['SetServerName']
          @AppIdType = params['AppIdType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @UniqVpcId = params['UniqVpcId']
        end
      end

      # CreateService返回参数结构体
      class CreateServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param ServiceName: 用户自定义服务名称。
        # @type ServiceName: String
        # @param ServiceDesc: 用户自定义服务描述。
        # @type ServiceDesc: String
        # @param OuterSubDomain: 外网默认域名。
        # @type OuterSubDomain: String
        # @param InnerSubDomain: vpc内网默认域名。
        # @type InnerSubDomain: String
        # @param CreatedTime: 服务创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type CreatedTime: String
        # @param NetTypes: 网络类型列表，INNER为内网访问，OUTER为外网访问。
        # @type NetTypes: Array
        # @param IpVersion: IP版本号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :ServiceName, :ServiceDesc, :OuterSubDomain, :InnerSubDomain, :CreatedTime, :NetTypes, :IpVersion, :RequestId

        def initialize(serviceid=nil, servicename=nil, servicedesc=nil, outersubdomain=nil, innersubdomain=nil, createdtime=nil, nettypes=nil, ipversion=nil, requestid=nil)
          @ServiceId = serviceid
          @ServiceName = servicename
          @ServiceDesc = servicedesc
          @OuterSubDomain = outersubdomain
          @InnerSubDomain = innersubdomain
          @CreatedTime = createdtime
          @NetTypes = nettypes
          @IpVersion = ipversion
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @ServiceDesc = params['ServiceDesc']
          @OuterSubDomain = params['OuterSubDomain']
          @InnerSubDomain = params['InnerSubDomain']
          @CreatedTime = params['CreatedTime']
          @NetTypes = params['NetTypes']
          @IpVersion = params['IpVersion']
          @RequestId = params['RequestId']
        end
      end

      # CreateUpstream请求参数结构体
      class CreateUpstreamRequest < TencentCloud::Common::AbstractModel
        # @param Scheme: 后端协议，取值范围：HTTP, HTTPS,gRPC，gRPCs
        # @type Scheme: String
        # @param Algorithm: 负载均衡算法，取值范围：ROUND-ROBIN
        # @type Algorithm: String
        # @param UniqVpcId: VPC唯一ID
        # @type UniqVpcId: String
        # @param UpstreamName: 后端通道名字
        # @type UpstreamName: String
        # @param UpstreamDescription: 后端通道描述
        # @type UpstreamDescription: String
        # @param UpstreamType: 后端访问类型，取值范围：IP_PORT, K8S
        # @type UpstreamType: String
        # @param Retries: 请求重试次数，默认3次
        # @type Retries: Integer
        # @param UpstreamHost: 网关转发到后端的Host请求头
        # @type UpstreamHost: String
        # @param Nodes: 后端节点
        # @type Nodes: Array
        # @param Tags: 标签
        # @type Tags: Array
        # @param HealthChecker: 健康检查配置，目前只支持VPC通道
        # @type HealthChecker: :class:`Tencentcloud::Apigateway.v20180808.models.UpstreamHealthChecker`
        # @param K8sService: K8S容器服务的配置
        # @type K8sService: Array

        attr_accessor :Scheme, :Algorithm, :UniqVpcId, :UpstreamName, :UpstreamDescription, :UpstreamType, :Retries, :UpstreamHost, :Nodes, :Tags, :HealthChecker, :K8sService

        def initialize(scheme=nil, algorithm=nil, uniqvpcid=nil, upstreamname=nil, upstreamdescription=nil, upstreamtype=nil, retries=nil, upstreamhost=nil, nodes=nil, tags=nil, healthchecker=nil, k8sservice=nil)
          @Scheme = scheme
          @Algorithm = algorithm
          @UniqVpcId = uniqvpcid
          @UpstreamName = upstreamname
          @UpstreamDescription = upstreamdescription
          @UpstreamType = upstreamtype
          @Retries = retries
          @UpstreamHost = upstreamhost
          @Nodes = nodes
          @Tags = tags
          @HealthChecker = healthchecker
          @K8sService = k8sservice
        end

        def deserialize(params)
          @Scheme = params['Scheme']
          @Algorithm = params['Algorithm']
          @UniqVpcId = params['UniqVpcId']
          @UpstreamName = params['UpstreamName']
          @UpstreamDescription = params['UpstreamDescription']
          @UpstreamType = params['UpstreamType']
          @Retries = params['Retries']
          @UpstreamHost = params['UpstreamHost']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              upstreamnode_tmp = UpstreamNode.new
              upstreamnode_tmp.deserialize(i)
              @Nodes << upstreamnode_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['HealthChecker'].nil?
            @HealthChecker = UpstreamHealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          unless params['K8sService'].nil?
            @K8sService = []
            params['K8sService'].each do |i|
              k8sservice_tmp = K8sService.new
              k8sservice_tmp.deserialize(i)
              @K8sService << k8sservice_tmp
            end
          end
        end
      end

      # CreateUpstream返回参数结构体
      class CreateUpstreamResponse < TencentCloud::Common::AbstractModel
        # @param UpstreamId: 创建返回的唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UpstreamId, :RequestId

        def initialize(upstreamid=nil, requestid=nil)
          @UpstreamId = upstreamid
          @RequestId = requestid
        end

        def deserialize(params)
          @UpstreamId = params['UpstreamId']
          @RequestId = params['RequestId']
        end
      end

      # CreateUsagePlan请求参数结构体
      class CreateUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanName: 用户自定义的使用计划名称。
        # @type UsagePlanName: String
        # @param UsagePlanDesc: 用户自定义的使用计划描述。
        # @type UsagePlanDesc: String
        # @param MaxRequestNum: 请求配额总数，取值范围为-1或者[1, 99999999]，默认为-1，表示不开启。
        # @type MaxRequestNum: Integer
        # @param MaxRequestNumPreSec: 每秒请求限制数，取值范围为-1或者[1, 2000]，默认-1，表示不开启。
        # @type MaxRequestNumPreSec: Integer
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :UsagePlanName, :UsagePlanDesc, :MaxRequestNum, :MaxRequestNumPreSec, :Tags

        def initialize(usageplanname=nil, usageplandesc=nil, maxrequestnum=nil, maxrequestnumpresec=nil, tags=nil)
          @UsagePlanName = usageplanname
          @UsagePlanDesc = usageplandesc
          @MaxRequestNum = maxrequestnum
          @MaxRequestNumPreSec = maxrequestnumpresec
          @Tags = tags
        end

        def deserialize(params)
          @UsagePlanName = params['UsagePlanName']
          @UsagePlanDesc = params['UsagePlanDesc']
          @MaxRequestNum = params['MaxRequestNum']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateUsagePlan返回参数结构体
      class CreateUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: 使用计划详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.UsagePlanInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UsagePlanInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteAPIDoc请求参数结构体
      class DeleteAPIDocRequest < TencentCloud::Common::AbstractModel
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String

        attr_accessor :ApiDocId

        def initialize(apidocid=nil)
          @ApiDocId = apidocid
        end

        def deserialize(params)
          @ApiDocId = params['ApiDocId']
        end
      end

      # DeleteAPIDoc返回参数结构体
      class DeleteAPIDocResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteApiApp请求参数结构体
      class DeleteApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 应用唯一 ID。
        # @type ApiAppId: String

        attr_accessor :ApiAppId

        def initialize(apiappid=nil)
          @ApiAppId = apiappid
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
        end
      end

      # DeleteApiApp返回参数结构体
      class DeleteApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteApiKey请求参数结构体
      class DeleteApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 待删除的密钥 ID。
        # @type AccessKeyId: String

        attr_accessor :AccessKeyId

        def initialize(accesskeyid=nil)
          @AccessKeyId = accesskeyid
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
        end
      end

      # DeleteApiKey返回参数结构体
      class DeleteApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteApi请求参数结构体
      class DeleteApiRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiId: API 接口唯一 ID。
        # @type ApiId: String

        attr_accessor :ServiceId, :ApiId

        def initialize(serviceid=nil, apiid=nil)
          @ServiceId = serviceid
          @ApiId = apiid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
        end
      end

      # DeleteApi返回参数结构体
      class DeleteApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteIPStrategy请求参数结构体
      class DeleteIPStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待删除的IP策略所属的服务唯一ID。
        # @type ServiceId: String
        # @param StrategyId: 待删除的IP策略唯一ID。
        # @type StrategyId: String

        attr_accessor :ServiceId, :StrategyId

        def initialize(serviceid=nil, strategyid=nil)
          @ServiceId = serviceid
          @StrategyId = strategyid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyId = params['StrategyId']
        end
      end

      # DeleteIPStrategy返回参数结构体
      class DeleteIPStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeletePlugin请求参数结构体
      class DeletePluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 要删除的API网关插件的ID。
        # @type PluginId: String

        attr_accessor :PluginId

        def initialize(pluginid=nil)
          @PluginId = pluginid
        end

        def deserialize(params)
          @PluginId = params['PluginId']
        end
      end

      # DeletePlugin返回参数结构体
      class DeletePluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteService请求参数结构体
      class DeleteServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待删除服务的唯一 ID。
        # @type ServiceId: String
        # @param SkipVerification: 跳过删除前置条件校验（仅支持独享实例上的服务）
        # @type SkipVerification: Integer

        attr_accessor :ServiceId, :SkipVerification

        def initialize(serviceid=nil, skipverification=nil)
          @ServiceId = serviceid
          @SkipVerification = skipverification
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @SkipVerification = params['SkipVerification']
        end
      end

      # DeleteService返回参数结构体
      class DeleteServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteServiceSubDomainMapping请求参数结构体
      class DeleteServiceSubDomainMappingRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一 ID。
        # @type ServiceId: String
        # @param SubDomain: 服务绑定的自定义域名。
        # @type SubDomain: String
        # @param Environment: 待删除映射的环境名称，当前支持三个环境，test（测试环境）、prepub（预发布环境）和 release（发布环境）。
        # @type Environment: String

        attr_accessor :ServiceId, :SubDomain, :Environment

        def initialize(serviceid=nil, subdomain=nil, environment=nil)
          @ServiceId = serviceid
          @SubDomain = subdomain
          @Environment = environment
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @SubDomain = params['SubDomain']
          @Environment = params['Environment']
        end
      end

      # DeleteServiceSubDomainMapping返回参数结构体
      class DeleteServiceSubDomainMappingResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除自定义域名的路径映射操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUpstream请求参数结构体
      class DeleteUpstreamRequest < TencentCloud::Common::AbstractModel
        # @param UpstreamId: 待删除的后端通道ID
        # @type UpstreamId: String

        attr_accessor :UpstreamId

        def initialize(upstreamid=nil)
          @UpstreamId = upstreamid
        end

        def deserialize(params)
          @UpstreamId = params['UpstreamId']
        end
      end

      # DeleteUpstream返回参数结构体
      class DeleteUpstreamResponse < TencentCloud::Common::AbstractModel
        # @param UpstreamId: 成功删除的后端通道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UpstreamId, :RequestId

        def initialize(upstreamid=nil, requestid=nil)
          @UpstreamId = upstreamid
          @RequestId = requestid
        end

        def deserialize(params)
          @UpstreamId = params['UpstreamId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteUsagePlan请求参数结构体
      class DeleteUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 待删除的使用计划唯一 ID。
        # @type UsagePlanId: String

        attr_accessor :UsagePlanId

        def initialize(usageplanid=nil)
          @UsagePlanId = usageplanid
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
        end
      end

      # DeleteUsagePlan返回参数结构体
      class DeleteUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: 删除操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DemoteServiceUsagePlan请求参数结构体
      class DemoteServiceUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 使用计划ID。
        # @type UsagePlanId: String
        # @param ServiceId: 待降级的服务唯一 ID。
        # @type ServiceId: String
        # @param Environment: 环境名称。
        # @type Environment: String

        attr_accessor :UsagePlanId, :ServiceId, :Environment

        def initialize(usageplanid=nil, serviceid=nil, environment=nil)
          @UsagePlanId = usageplanid
          @ServiceId = serviceid
          @Environment = environment
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @ServiceId = params['ServiceId']
          @Environment = params['Environment']
        end
      end

      # DemoteServiceUsagePlan返回参数结构体
      class DemoteServiceUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: 降级操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # api状态详情
      class DesApisStatus < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param ApiId: API唯一ID。
        # @type ApiId: String
        # @param ApiDesc: 用户自定义的 API 接口描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiDesc: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ApiName: API 接口的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param VpcId: VPCID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: Integer
        # @param UniqVpcId: VPC唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param ApiType: API类型。取值为NORMAL（普通API）和TSF（微服务API）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiType: String
        # @param Protocol: API协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param IsDebugAfterCharge: 是否买后调试。（云市场预留字段）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDebugAfterCharge: Boolean
        # @param AuthType: API 鉴权类型。取值为SECRET（密钥对鉴权）、NONE（免鉴权）、OAUTH、EIAM。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param ApiBusinessType: OAUTH API的类型。当AuthType 为 OAUTH时该字段有效， 取值为NORMAL（业务API）和 OAUTH（授权API）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiBusinessType: String
        # @param AuthRelationApiId: 关联的授权API 唯一 ID，当AuthType为OAUTH且ApiBusinessType为NORMAL时生效。标示业务API绑定的oauth2.0授权API唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthRelationApiId: String
        # @param OauthConfig: OAUTH 配置信息。当AuthType是OAUTH时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OauthConfig: :class:`Tencentcloud::Apigateway.v20180808.models.OauthConfig`
        # @param RelationBuniessApiIds: 授权API关联的业务API列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelationBuniessApiIds: Array
        # @param Tags: API关联的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Path: API 的路径，如 /path。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: API 的请求方法，如 GET。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String

        attr_accessor :ServiceId, :ApiId, :ApiDesc, :CreatedTime, :ModifiedTime, :ApiName, :VpcId, :UniqVpcId, :ApiType, :Protocol, :IsDebugAfterCharge, :AuthType, :ApiBusinessType, :AuthRelationApiId, :OauthConfig, :RelationBuniessApiIds, :Tags, :Path, :Method
        extend Gem::Deprecate
        deprecate :RelationBuniessApiIds, :none, 2024, 1
        deprecate :RelationBuniessApiIds=, :none, 2024, 1

        def initialize(serviceid=nil, apiid=nil, apidesc=nil, createdtime=nil, modifiedtime=nil, apiname=nil, vpcid=nil, uniqvpcid=nil, apitype=nil, protocol=nil, isdebugaftercharge=nil, authtype=nil, apibusinesstype=nil, authrelationapiid=nil, oauthconfig=nil, relationbuniessapiids=nil, tags=nil, path=nil, method=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @ApiDesc = apidesc
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ApiName = apiname
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @ApiType = apitype
          @Protocol = protocol
          @IsDebugAfterCharge = isdebugaftercharge
          @AuthType = authtype
          @ApiBusinessType = apibusinesstype
          @AuthRelationApiId = authrelationapiid
          @OauthConfig = oauthconfig
          @RelationBuniessApiIds = relationbuniessapiids
          @Tags = tags
          @Path = path
          @Method = method
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @ApiDesc = params['ApiDesc']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ApiName = params['ApiName']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @ApiType = params['ApiType']
          @Protocol = params['Protocol']
          @IsDebugAfterCharge = params['IsDebugAfterCharge']
          @AuthType = params['AuthType']
          @ApiBusinessType = params['ApiBusinessType']
          @AuthRelationApiId = params['AuthRelationApiId']
          unless params['OauthConfig'].nil?
            @OauthConfig = OauthConfig.new
            @OauthConfig.deserialize(params['OauthConfig'])
          end
          @RelationBuniessApiIds = params['RelationBuniessApiIds']
          @Tags = params['Tags']
          @Path = params['Path']
          @Method = params['Method']
        end
      end

      # DescribeAPIDocDetail请求参数结构体
      class DescribeAPIDocDetailRequest < TencentCloud::Common::AbstractModel
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String

        attr_accessor :ApiDocId

        def initialize(apidocid=nil)
          @ApiDocId = apidocid
        end

        def deserialize(params)
          @ApiDocId = params['ApiDocId']
        end
      end

      # DescribeAPIDocDetail返回参数结构体
      class DescribeAPIDocDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: API文档详细信息
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.APIDocInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = APIDocInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAPIDocs请求参数结构体
      class DescribeAPIDocsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset

        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAPIDocs返回参数结构体
      class DescribeAPIDocsResponse < TencentCloud::Common::AbstractModel
        # @param Result: API文档列表信息
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.APIDocs`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = APIDocs.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllPluginApis请求参数结构体
      class DescribeAllPluginApisRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 要查询的服务ID。
        # @type ServiceId: String
        # @param PluginId: 要查询的插件ID。
        # @type PluginId: String
        # @param EnvironmentName: 环境信息。
        # @type EnvironmentName: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :PluginId, :EnvironmentName, :Limit, :Offset

        def initialize(serviceid=nil, pluginid=nil, environmentname=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @PluginId = pluginid
          @EnvironmentName = environmentname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @PluginId = params['PluginId']
          @EnvironmentName = params['EnvironmentName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAllPluginApis返回参数结构体
      class DescribeAllPluginApisResponse < TencentCloud::Common::AbstractModel
        # @param Result: 插件相关API的列表。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiInfoSummary`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiInfoSummary.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiAppBindApisStatus请求参数结构体
      class DescribeApiAppBindApisStatusRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 应用ID
        # @type ApiAppId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。支持ApiId、ApiName、ServiceId、Environment 、KeyWord（ 可以匹配name或者ID）。
        # @type Filters: Array

        attr_accessor :ApiAppId, :Limit, :Offset, :Filters

        def initialize(apiappid=nil, limit=nil, offset=nil, filters=nil)
          @ApiAppId = apiappid
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeApiAppBindApisStatus返回参数结构体
      class DescribeApiAppBindApisStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用绑定的Api列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiAppApiInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiAppApiInfos.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiApp请求参数结构体
      class DescribeApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 应用ID。
        # @type ApiAppId: String

        attr_accessor :ApiAppId

        def initialize(apiappid=nil)
          @ApiAppId = apiappid
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
        end
      end

      # DescribeApiApp返回参数结构体
      class DescribeApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiAppInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiAppInfos.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiAppsStatus请求参数结构体
      class DescribeApiAppsStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。支持ApiAppId、ApiAppName、KeyWord（ 可以匹配name或者ID）。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeApiAppsStatus返回参数结构体
      class DescribeApiAppsStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiAppInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiAppInfos.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiBindApiAppsStatus请求参数结构体
      class DescribeApiBindApiAppsStatusRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param ApiIds: Api的ID的数组
        # @type ApiIds: Array
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。支持ApiAppId、Environment、KeyWord（ 可以匹配name或者ID）。
        # @type Filters: Array

        attr_accessor :ServiceId, :ApiIds, :Limit, :Offset, :Filters

        def initialize(serviceid=nil, apiids=nil, limit=nil, offset=nil, filters=nil)
          @ServiceId = serviceid
          @ApiIds = apiids
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiIds = params['ApiIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeApiBindApiAppsStatus返回参数结构体
      class DescribeApiBindApiAppsStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 应用绑定的Api列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiAppApiInfos`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiAppApiInfos.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiEnvironmentStrategy请求参数结构体
      class DescribeApiEnvironmentStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API所属服务唯一ID。
        # @type ServiceId: String
        # @param EnvironmentNames: 环境列表。
        # @type EnvironmentNames: Array
        # @param ApiId: API唯一ID。
        # @type ApiId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :EnvironmentNames, :ApiId, :Limit, :Offset

        def initialize(serviceid=nil, environmentnames=nil, apiid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @EnvironmentNames = environmentnames
          @ApiId = apiid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @EnvironmentNames = params['EnvironmentNames']
          @ApiId = params['ApiId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeApiEnvironmentStrategy返回参数结构体
      class DescribeApiEnvironmentStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: api绑定策略详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiEnvironmentStrategyStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiEnvironmentStrategyStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiForApiApp请求参数结构体
      class DescribeApiForApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiId: API 接口唯一 ID。
        # @type ApiId: String
        # @param ApiRegion: Api所属地域
        # @type ApiRegion: String

        attr_accessor :ServiceId, :ApiId, :ApiRegion

        def initialize(serviceid=nil, apiid=nil, apiregion=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @ApiRegion = apiregion
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @ApiRegion = params['ApiRegion']
        end
      end

      # DescribeApiForApiApp返回参数结构体
      class DescribeApiForApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: API 详情。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiKey请求参数结构体
      class DescribeApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: API 密钥 ID。
        # @type AccessKeyId: String

        attr_accessor :AccessKeyId

        def initialize(accesskeyid=nil)
          @AccessKeyId = accesskeyid
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
        end
      end

      # DescribeApiKey返回参数结构体
      class DescribeApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 密钥详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiKey`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiKey.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApiKeysStatus请求参数结构体
      class DescribeApiKeysStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。支持AccessKeyId、AccessKeySecret、SecretName、NotUsagePlanId、Status、KeyWord（ 可以匹配name或者path）。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeApiKeysStatus返回参数结构体
      class DescribeApiKeysStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 密钥列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiKeysStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiKeysStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApi请求参数结构体
      class DescribeApiRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiId: API 接口唯一 ID。
        # @type ApiId: String

        attr_accessor :ServiceId, :ApiId

        def initialize(serviceid=nil, apiid=nil)
          @ServiceId = serviceid
          @ApiId = apiid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
        end
      end

      # DescribeApi返回参数结构体
      class DescribeApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: API 详情。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ServiceParameter
      class DescribeApiResultServiceParametersInfo < TencentCloud::Common::AbstractModel
        # @param Name: API的后端服务参数名称。只有ServiceType是HTTP才会用到此参数。前后端参数名称可不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Position: API 的后端服务参数位置，如 head。只有 ServiceType 是 HTTP 才会用到此参数。前后端参数位置可配置不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: String
        # @param RelevantRequestParameterPosition: API 的后端服务参数对应的前端参数位置，如 head。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterPosition: String
        # @param RelevantRequestParameterName: API 的后端服务参数对应的前端参数名称。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterName: String
        # @param DefaultValue: API 的后端服务参数默认值。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String
        # @param RelevantRequestParameterDesc: API 的后端服务参数备注。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterDesc: String

        attr_accessor :Name, :Position, :RelevantRequestParameterPosition, :RelevantRequestParameterName, :DefaultValue, :RelevantRequestParameterDesc

        def initialize(name=nil, position=nil, relevantrequestparameterposition=nil, relevantrequestparametername=nil, defaultvalue=nil, relevantrequestparameterdesc=nil)
          @Name = name
          @Position = position
          @RelevantRequestParameterPosition = relevantrequestparameterposition
          @RelevantRequestParameterName = relevantrequestparametername
          @DefaultValue = defaultvalue
          @RelevantRequestParameterDesc = relevantrequestparameterdesc
        end

        def deserialize(params)
          @Name = params['Name']
          @Position = params['Position']
          @RelevantRequestParameterPosition = params['RelevantRequestParameterPosition']
          @RelevantRequestParameterName = params['RelevantRequestParameterName']
          @DefaultValue = params['DefaultValue']
          @RelevantRequestParameterDesc = params['RelevantRequestParameterDesc']
        end
      end

      # DescribeApiUsagePlan请求参数结构体
      class DescribeApiUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :Limit, :Offset

        def initialize(serviceid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeApiUsagePlan返回参数结构体
      class DescribeApiUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: api绑定使用计划列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiUsagePlanSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiUsagePlanSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApisStatus请求参数结构体
      class DescribeApisStatusRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # @type ServiceId: String
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Filters: API过滤条件。支持ApiId、ApiName、ApiPath、ApiType、AuthRelationApiId、AuthType、ApiBuniessType、NotUsagePlanId、 Environment、Tags (values为 $tag_key:tag_value的列表)、TagKeys （values 为 tag key的列表），其中NotUsagePlanId和Environment必须同时使用，不能单独使用一个。
        # @type Filters: Array

        attr_accessor :ServiceId, :Offset, :Limit, :Filters

        def initialize(serviceid=nil, offset=nil, limit=nil, filters=nil)
          @ServiceId = serviceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeApisStatus返回参数结构体
      class DescribeApisStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: API 详情列表。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.DescribeApisStatusResultInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeApisStatusResultInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # api状态详情
      class DescribeApisStatusResultApiIdStatusSetInfo < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param ApiId: API唯一ID。
        # @type ApiId: String
        # @param ApiDesc: 用户自定义的 API 接口描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiDesc: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ApiName: API 接口的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param VpcId: VPCID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: Integer
        # @param UniqVpcId: VPC唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param ApiType: API类型。取值为NORMAL（普通API）和TSF（微服务API）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiType: String
        # @param Protocol: API协议。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param IsDebugAfterCharge: 是否买后调试。（云市场预留字段）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDebugAfterCharge: Boolean
        # @param AuthType: API 鉴权类型。取值为SECRET（密钥对鉴权）、NONE（免鉴权）、OAUTH、EIAM。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: String
        # @param ApiBusinessType: OAUTH API的类型。当AuthType 为 OAUTH时该字段有效， 取值为NORMAL（业务API）和 OAUTH（授权API）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiBusinessType: String
        # @param AuthRelationApiId: 关联的授权API 唯一 ID，当AuthType为OAUTH且ApiBusinessType为NORMAL时生效。标示业务API绑定的oauth2.0授权API唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthRelationApiId: String
        # @param OauthConfig: OAUTH 配置信息。当AuthType是OAUTH时生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OauthConfig: :class:`Tencentcloud::Apigateway.v20180808.models.OauthConfig`
        # @param RelationBuniessApiIds: 授权API关联的业务API列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelationBuniessApiIds: Array
        # @param Tags: API关联的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Path: API 的路径，如 /path。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: API 的请求方法，如 GET。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String

        attr_accessor :ServiceId, :ApiId, :ApiDesc, :CreatedTime, :ModifiedTime, :ApiName, :VpcId, :UniqVpcId, :ApiType, :Protocol, :IsDebugAfterCharge, :AuthType, :ApiBusinessType, :AuthRelationApiId, :OauthConfig, :RelationBuniessApiIds, :Tags, :Path, :Method
        extend Gem::Deprecate
        deprecate :RelationBuniessApiIds, :none, 2024, 1
        deprecate :RelationBuniessApiIds=, :none, 2024, 1

        def initialize(serviceid=nil, apiid=nil, apidesc=nil, createdtime=nil, modifiedtime=nil, apiname=nil, vpcid=nil, uniqvpcid=nil, apitype=nil, protocol=nil, isdebugaftercharge=nil, authtype=nil, apibusinesstype=nil, authrelationapiid=nil, oauthconfig=nil, relationbuniessapiids=nil, tags=nil, path=nil, method=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @ApiDesc = apidesc
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ApiName = apiname
          @VpcId = vpcid
          @UniqVpcId = uniqvpcid
          @ApiType = apitype
          @Protocol = protocol
          @IsDebugAfterCharge = isdebugaftercharge
          @AuthType = authtype
          @ApiBusinessType = apibusinesstype
          @AuthRelationApiId = authrelationapiid
          @OauthConfig = oauthconfig
          @RelationBuniessApiIds = relationbuniessapiids
          @Tags = tags
          @Path = path
          @Method = method
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @ApiDesc = params['ApiDesc']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ApiName = params['ApiName']
          @VpcId = params['VpcId']
          @UniqVpcId = params['UniqVpcId']
          @ApiType = params['ApiType']
          @Protocol = params['Protocol']
          @IsDebugAfterCharge = params['IsDebugAfterCharge']
          @AuthType = params['AuthType']
          @ApiBusinessType = params['ApiBusinessType']
          @AuthRelationApiId = params['AuthRelationApiId']
          unless params['OauthConfig'].nil?
            @OauthConfig = OauthConfig.new
            @OauthConfig.deserialize(params['OauthConfig'])
          end
          @RelationBuniessApiIds = params['RelationBuniessApiIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              apigatewaytags_tmp = ApigatewayTags.new
              apigatewaytags_tmp.deserialize(i)
              @Tags << apigatewaytags_tmp
            end
          end
          @Path = params['Path']
          @Method = params['Method']
        end
      end

      # 描述api列表状态
      class DescribeApisStatusResultInfo < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 API 接口数量。
        # @type TotalCount: Integer
        # @param ApiIdStatusSet: API 接口列表。
        # @type ApiIdStatusSet: Array

        attr_accessor :TotalCount, :ApiIdStatusSet

        def initialize(totalcount=nil, apiidstatusset=nil)
          @TotalCount = totalcount
          @ApiIdStatusSet = apiidstatusset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiIdStatusSet'].nil?
            @ApiIdStatusSet = []
            params['ApiIdStatusSet'].each do |i|
              describeapisstatusresultapiidstatussetinfo_tmp = DescribeApisStatusResultApiIdStatusSetInfo.new
              describeapisstatusresultapiidstatussetinfo_tmp.deserialize(i)
              @ApiIdStatusSet << describeapisstatusresultapiidstatussetinfo_tmp
            end
          end
        end
      end

      # DescribeExclusiveInstanceDetail请求参数结构体
      class DescribeExclusiveInstanceDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享实例唯一id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeExclusiveInstanceDetail返回参数结构体
      class DescribeExclusiveInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 独享实例详情
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.InstanceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceDetail.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExclusiveInstances请求参数结构体
      class DescribeExclusiveInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页查询，limit
        # @type Limit: Integer
        # @param Offset: 分页查询，offset
        # @type Offset: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeExclusiveInstances返回参数结构体
      class DescribeExclusiveInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Result: 独享实例列表查询结果
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.DescribeExclusiveInstancesResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeExclusiveInstancesResult.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据结构
      class DescribeExclusiveInstancesResult < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeExclusiveInstancesStatus请求参数结构体
      class DescribeExclusiveInstancesStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页查询，limit
        # @type Limit: Integer
        # @param Offset: 分页查询，offset
        # @type Offset: Integer
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeExclusiveInstancesStatus返回参数结构体
      class DescribeExclusiveInstancesStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 独享实例列表查询结果
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.InstanceSummary`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceSummary.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPStrategyApisStatus请求参数结构体
      class DescribeIPStrategyApisStatusRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param StrategyId: 策略唯一ID。
        # @type StrategyId: String
        # @param EnvironmentName: 策略所在环境。
        # @type EnvironmentName: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。支持 ApiPath、ApiName、KeyWord（模糊查询Path 和Name）。
        # @type Filters: Array

        attr_accessor :ServiceId, :StrategyId, :EnvironmentName, :Limit, :Offset, :Filters

        def initialize(serviceid=nil, strategyid=nil, environmentname=nil, limit=nil, offset=nil, filters=nil)
          @ServiceId = serviceid
          @StrategyId = strategyid
          @EnvironmentName = environmentname
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyId = params['StrategyId']
          @EnvironmentName = params['EnvironmentName']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeIPStrategyApisStatus返回参数结构体
      class DescribeIPStrategyApisStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 环境绑定API列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.IPStrategyApiStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = IPStrategyApiStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPStrategy请求参数结构体
      class DescribeIPStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param StrategyId: IP 策略唯一ID。
        # @type StrategyId: String
        # @param EnvironmentName: 策略关联的环境。
        # @type EnvironmentName: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。预留字段，目前不支持过滤。
        # @type Filters: Array

        attr_accessor :ServiceId, :StrategyId, :EnvironmentName, :Limit, :Offset, :Filters

        def initialize(serviceid=nil, strategyid=nil, environmentname=nil, limit=nil, offset=nil, filters=nil)
          @ServiceId = serviceid
          @StrategyId = strategyid
          @EnvironmentName = environmentname
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyId = params['StrategyId']
          @EnvironmentName = params['EnvironmentName']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeIPStrategy返回参数结构体
      class DescribeIPStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: IP策略详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.IPStrategy`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = IPStrategy.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPStrategysStatus请求参数结构体
      class DescribeIPStrategysStatusRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param Filters: 过滤条件。支持StrategyName。
        # @type Filters: Array

        attr_accessor :ServiceId, :Filters

        def initialize(serviceid=nil, filters=nil)
          @ServiceId = serviceid
          @Filters = filters
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
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

      # DescribeIPStrategysStatus返回参数结构体
      class DescribeIPStrategysStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 符合条件的策略列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.IPStrategiesStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = IPStrategiesStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogSearch请求参数结构体
      class DescribeLogSearchRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 日志开始时间
        # @type StartTime: String
        # @param EndTime: 日志结束时间
        # @type EndTime: String
        # @param ServiceId: 服务id
        # @type ServiceId: String
        # @param Filters: 保留字段
        # @type Filters: Array
        # @param Limit: 单次要返回的日志条数，单次返回的最大条数为100
        # @type Limit: Integer
        # @param ConText: 根据上次返回的ConText，获取后续的内容，最多可获取10000条
        # @type ConText: String
        # @param Sort: 按时间排序 asc（升序）或者 desc（降序），默认为 desc
        # @type Sort: String
        # @param Query: 保留字段
        # @type Query: String
        # @param LogQuerys: 检索条件,支持的检索条件如下：
        # req_id：“=”
        # api_id：“=”
        # cip：“=”
        # uip：“:”
        # err_msg：“:”
        # rsp_st：“=” 、“!=” 、 “:” 、 “>” 、 “<”
        # req_t：”>=“ 、 ”<=“

        # 说明：
        # “:”表示包含，“!=”表示不等于，字段含义见输出参数的LogSet说明
        # @type LogQuerys: Array

        attr_accessor :StartTime, :EndTime, :ServiceId, :Filters, :Limit, :ConText, :Sort, :Query, :LogQuerys
        extend Gem::Deprecate
        deprecate :LogQuerys, :none, 2024, 1
        deprecate :LogQuerys=, :none, 2024, 1

        def initialize(starttime=nil, endtime=nil, serviceid=nil, filters=nil, limit=nil, context=nil, sort=nil, query=nil, logquerys=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ServiceId = serviceid
          @Filters = filters
          @Limit = limit
          @ConText = context
          @Sort = sort
          @Query = query
          @LogQuerys = logquerys
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ServiceId = params['ServiceId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @ConText = params['ConText']
          @Sort = params['Sort']
          @Query = params['Query']
          unless params['LogQuerys'].nil?
            @LogQuerys = []
            params['LogQuerys'].each do |i|
              logquery_tmp = LogQuery.new
              logquery_tmp.deserialize(i)
              @LogQuerys << logquery_tmp
            end
          end
        end
      end

      # DescribeLogSearch返回参数结构体
      class DescribeLogSearchResponse < TencentCloud::Common::AbstractModel
        # @param ConText: 获取更多检索结果的游标，值为""表示无后续结果
        # @type ConText: String
        # @param LogSet: 由0或多条日志组成，每条日志格式如下：
        # '[$app_id][$env_name][$service_id][$http_host][$api_id][$uri][$scheme][rsp_st:$status][ups_st:$upstream_status]'
        # '[cip:$remote_addr][uip:$upstream_addr][vip:$server_addr][rsp_len:$bytes_sent][req_len:$request_length]'
        # '[req_t:$request_time][ups_rsp_t:$upstream_response_time][ups_conn_t:$upstream_connect_time][ups_head_t:$upstream_header_time]’
        # '[err_msg:$err_msg][tcp_rtt:$tcpinfo_rtt][$pid][$time_local][req_id:$request_id]';

        # 说明：
        # app_id： 用户 ID。
        # env_name：环境名称。
        # service_id： 服务 ID。
        # http_host： 域名。
        # api_id： API 的 ID。
        # uri：请求的路径。
        # scheme： HTTP/HTTPS 协议。
        # rsp_st： 请求响应状态码。
        # ups_st： 后端业务服务器的响应状态码（如果请求透传到后端，改变量不为空。如果请求在 APIGW 就被拦截了，那么该变量显示为 -）。
        # cip： 客户端 IP。
        # uip： 后端业务服务（upstream）的 IP。
        # vip： 请求访问的 VIP。
        # rsp_len： 响应长度。
        # req_len： 请求长度。
        # req_t： 请求响应的总时间。
        # ups_rsp_t： 后端响应的总时间（apigw 建立连接到接收到后端响应的时间）。
        # ups_conn_t: 与后端业务服务器连接建立成功时间。
        # ups_head_t：后端响应的头部到达时间。
        # err_msg： 错误信息。
        # tcp_rtt： 客户端 TCP 连接信息，RTT（Round Trip Time）由三部分组成：链路的传播时间（propagation delay）、末端系统的处理时间、路由器缓存中的排队和处理时间（queuing delay）。
        # req_id：请求id。
        # @type LogSet: Array
        # @param TotalCount: 单次搜索返回的日志条数，TotalCount <= Limit
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConText, :LogSet, :TotalCount, :RequestId

        def initialize(context=nil, logset=nil, totalcount=nil, requestid=nil)
          @ConText = context
          @LogSet = logset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ConText = params['ConText']
          @LogSet = params['LogSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePluginApis请求参数结构体
      class DescribePluginApisRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 查询的插件ID。
        # @type PluginId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :PluginId, :Limit, :Offset

        def initialize(pluginid=nil, limit=nil, offset=nil)
          @PluginId = pluginid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePluginApis返回参数结构体
      class DescribePluginApisResponse < TencentCloud::Common::AbstractModel
        # @param Result: 插件绑定的API列表信息。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.AttachedApiSummary`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AttachedApiSummary.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePlugin请求参数结构体
      class DescribePluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 要查询的插件ID。
        # @type PluginId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :PluginId, :Limit, :Offset

        def initialize(pluginid=nil, limit=nil, offset=nil)
          @PluginId = pluginid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePlugin返回参数结构体
      class DescribePluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 插件详情。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.Plugin`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = Plugin.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePluginsByApi请求参数结构体
      class DescribePluginsByApiRequest < TencentCloud::Common::AbstractModel
        # @param ApiId: 要查询的API ID。
        # @type ApiId: String
        # @param ServiceId: 要查询的服务ID。
        # @type ServiceId: String
        # @param EnvironmentName: 环境信息。
        # @type EnvironmentName: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ApiId, :ServiceId, :EnvironmentName, :Limit, :Offset

        def initialize(apiid=nil, serviceid=nil, environmentname=nil, limit=nil, offset=nil)
          @ApiId = apiid
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePluginsByApi返回参数结构体
      class DescribePluginsByApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: 插件可绑定的API列表信息。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.AttachedPluginSummary`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = AttachedPluginSummary.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePlugins请求参数结构体
      class DescribePluginsRequest < TencentCloud::Common::AbstractModel
        # @param PluginIds: 要查询的插件列表。
        # @type PluginIds: Array
        # @param PluginName: 要查询的插件名称。
        # @type PluginName: String
        # @param PluginType: 要查询的插件类型。
        # @type PluginType: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。预留字段，目前不支持过滤。
        # @type Filters: Array

        attr_accessor :PluginIds, :PluginName, :PluginType, :Limit, :Offset, :Filters

        def initialize(pluginids=nil, pluginname=nil, plugintype=nil, limit=nil, offset=nil, filters=nil)
          @PluginIds = pluginids
          @PluginName = pluginname
          @PluginType = plugintype
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @PluginIds = params['PluginIds']
          @PluginName = params['PluginName']
          @PluginType = params['PluginType']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribePlugins返回参数结构体
      class DescribePluginsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 插件详情。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.PluginSummary`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = PluginSummary.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceEnvironmentList请求参数结构体
      class DescribeServiceEnvironmentListRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :Limit, :Offset

        def initialize(serviceid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceEnvironmentList返回参数结构体
      class DescribeServiceEnvironmentListResponse < TencentCloud::Common::AbstractModel
        # @param Result: 服务绑定环境详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceEnvironmentSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceEnvironmentSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceEnvironmentReleaseHistory请求参数结构体
      class DescribeServiceEnvironmentReleaseHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String
        # @param EnvironmentName: 环境名称。
        # @type EnvironmentName: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :EnvironmentName, :Limit, :Offset

        def initialize(serviceid=nil, environmentname=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceEnvironmentReleaseHistory返回参数结构体
      class DescribeServiceEnvironmentReleaseHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Result: 服务发布历史。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceReleaseHistory`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceReleaseHistory.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceEnvironmentStrategy请求参数结构体
      class DescribeServiceEnvironmentStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :Limit, :Offset

        def initialize(serviceid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceEnvironmentStrategy返回参数结构体
      class DescribeServiceEnvironmentStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 限流策略列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceEnvironmentStrategyStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceEnvironmentStrategyStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceForApiApp请求参数结构体
      class DescribeServiceForApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiRegion: 服务所属的地域
        # @type ApiRegion: String

        attr_accessor :ServiceId, :ApiRegion

        def initialize(serviceid=nil, apiregion=nil)
          @ServiceId = serviceid
          @ApiRegion = apiregion
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiRegion = params['ApiRegion']
        end
      end

      # DescribeServiceForApiApp返回参数结构体
      class DescribeServiceForApiAppResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param AvailableEnvironments: 服务 环境列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableEnvironments: Array
        # @param ServiceName: 服务名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param ServiceDesc: 服务描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDesc: String
        # @param Protocol: 服务支持协议，可选值为http、https、http&https。
        # @type Protocol: String
        # @param CreatedTime: 服务创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 服务修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param NetTypes: 网络类型列表，INNER为内网访问，OUTER为外网访问。
        # @type NetTypes: Array
        # @param InternalSubDomain: 内网访问子域名。
        # @type InternalSubDomain: String
        # @param OuterSubDomain: 外网访问子域名。
        # @type OuterSubDomain: String
        # @param InnerHttpPort: 内网访问http服务端口号。
        # @type InnerHttpPort: Integer
        # @param InnerHttpsPort: 内网访问https端口号。
        # @type InnerHttpsPort: Integer
        # @param ApiTotalCount: API总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiTotalCount: Integer
        # @param ApiIdStatusSet: API列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiIdStatusSet: Array
        # @param UsagePlanTotalCount: 使用计划总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanTotalCount: Integer
        # @param UsagePlanList: 使用计划数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanList: Array
        # @param IpVersion: IP版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpVersion: String
        # @param UserType: 此服务的用户类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param SetId: 预留字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetId: Integer
        # @param Tags: 服务绑定的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :AvailableEnvironments, :ServiceName, :ServiceDesc, :Protocol, :CreatedTime, :ModifiedTime, :NetTypes, :InternalSubDomain, :OuterSubDomain, :InnerHttpPort, :InnerHttpsPort, :ApiTotalCount, :ApiIdStatusSet, :UsagePlanTotalCount, :UsagePlanList, :IpVersion, :UserType, :SetId, :Tags, :RequestId

        def initialize(serviceid=nil, availableenvironments=nil, servicename=nil, servicedesc=nil, protocol=nil, createdtime=nil, modifiedtime=nil, nettypes=nil, internalsubdomain=nil, outersubdomain=nil, innerhttpport=nil, innerhttpsport=nil, apitotalcount=nil, apiidstatusset=nil, usageplantotalcount=nil, usageplanlist=nil, ipversion=nil, usertype=nil, setid=nil, tags=nil, requestid=nil)
          @ServiceId = serviceid
          @AvailableEnvironments = availableenvironments
          @ServiceName = servicename
          @ServiceDesc = servicedesc
          @Protocol = protocol
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @NetTypes = nettypes
          @InternalSubDomain = internalsubdomain
          @OuterSubDomain = outersubdomain
          @InnerHttpPort = innerhttpport
          @InnerHttpsPort = innerhttpsport
          @ApiTotalCount = apitotalcount
          @ApiIdStatusSet = apiidstatusset
          @UsagePlanTotalCount = usageplantotalcount
          @UsagePlanList = usageplanlist
          @IpVersion = ipversion
          @UserType = usertype
          @SetId = setid
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @AvailableEnvironments = params['AvailableEnvironments']
          @ServiceName = params['ServiceName']
          @ServiceDesc = params['ServiceDesc']
          @Protocol = params['Protocol']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @NetTypes = params['NetTypes']
          @InternalSubDomain = params['InternalSubDomain']
          @OuterSubDomain = params['OuterSubDomain']
          @InnerHttpPort = params['InnerHttpPort']
          @InnerHttpsPort = params['InnerHttpsPort']
          @ApiTotalCount = params['ApiTotalCount']
          unless params['ApiIdStatusSet'].nil?
            @ApiIdStatusSet = []
            params['ApiIdStatusSet'].each do |i|
              apiidstatus_tmp = ApiIdStatus.new
              apiidstatus_tmp.deserialize(i)
              @ApiIdStatusSet << apiidstatus_tmp
            end
          end
          @UsagePlanTotalCount = params['UsagePlanTotalCount']
          unless params['UsagePlanList'].nil?
            @UsagePlanList = []
            params['UsagePlanList'].each do |i|
              usageplan_tmp = UsagePlan.new
              usageplan_tmp.deserialize(i)
              @UsagePlanList << usageplan_tmp
            end
          end
          @IpVersion = params['IpVersion']
          @UserType = params['UserType']
          @SetId = params['SetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceReleaseVersion请求参数结构体
      class DescribeServiceReleaseVersionRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :Limit, :Offset

        def initialize(serviceid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceReleaseVersion返回参数结构体
      class DescribeServiceReleaseVersionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 服务发布版本列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceReleaseVersion`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceReleaseVersion.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 服务发布列表详情
      class DescribeServiceReleaseVersionResultVersionListInfo < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param VersionDesc: 版本描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionDesc: String

        attr_accessor :VersionName, :VersionDesc

        def initialize(versionname=nil, versiondesc=nil)
          @VersionName = versionname
          @VersionDesc = versiondesc
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @VersionDesc = params['VersionDesc']
        end
      end

      # DescribeService请求参数结构体
      class DescribeServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String

        attr_accessor :ServiceId

        def initialize(serviceid=nil)
          @ServiceId = serviceid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
        end
      end

      # DescribeService返回参数结构体
      class DescribeServiceResponse < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param AvailableEnvironments: 服务 环境列表。
        # @type AvailableEnvironments: Array
        # @param ServiceName: 服务名称。
        # @type ServiceName: String
        # @param ServiceDesc: 服务描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDesc: String
        # @param Protocol: 服务支持协议，可选值为http、https、http&https。
        # @type Protocol: String
        # @param CreatedTime: 服务创建时间。
        # @type CreatedTime: String
        # @param ModifiedTime: 服务修改时间。
        # @type ModifiedTime: String
        # @param NetTypes: 网络类型列表，INNER为内网访问，OUTER为外网访问。
        # @type NetTypes: Array
        # @param InternalSubDomain: 内网访问子域名。
        # @type InternalSubDomain: String
        # @param OuterSubDomain: 外网访问子域名。
        # @type OuterSubDomain: String
        # @param InnerHttpPort: 内网访问http服务端口号。
        # @type InnerHttpPort: Integer
        # @param InnerHttpsPort: 内网访问https端口号。
        # @type InnerHttpsPort: Integer
        # @param ApiTotalCount: API总数。
        # @type ApiTotalCount: Integer
        # @param ApiIdStatusSet: API列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiIdStatusSet: Array
        # @param UsagePlanTotalCount: 使用计划总数量。
        # @type UsagePlanTotalCount: Integer
        # @param UsagePlanList: 使用计划数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanList: Array
        # @param IpVersion: IP版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpVersion: String
        # @param UserType: 此服务的用户类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserType: String
        # @param SetId: 预留字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetId: Integer
        # @param Tags: 服务绑定的标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceId: 独享实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 独享实例name
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param SetType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetType: String
        # @param DeploymentType: 服务部署的集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploymentType: String
        # @param SpecialUse: 特殊用途, NULL和DEFAULT表示无特殊用途，其他用途如HTTP_DNS等
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SpecialUse: String
        # @param UniqVpcId: vpc属性，存量可能为空字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceId, :AvailableEnvironments, :ServiceName, :ServiceDesc, :Protocol, :CreatedTime, :ModifiedTime, :NetTypes, :InternalSubDomain, :OuterSubDomain, :InnerHttpPort, :InnerHttpsPort, :ApiTotalCount, :ApiIdStatusSet, :UsagePlanTotalCount, :UsagePlanList, :IpVersion, :UserType, :SetId, :Tags, :InstanceId, :InstanceName, :SetType, :DeploymentType, :SpecialUse, :UniqVpcId, :RequestId

        def initialize(serviceid=nil, availableenvironments=nil, servicename=nil, servicedesc=nil, protocol=nil, createdtime=nil, modifiedtime=nil, nettypes=nil, internalsubdomain=nil, outersubdomain=nil, innerhttpport=nil, innerhttpsport=nil, apitotalcount=nil, apiidstatusset=nil, usageplantotalcount=nil, usageplanlist=nil, ipversion=nil, usertype=nil, setid=nil, tags=nil, instanceid=nil, instancename=nil, settype=nil, deploymenttype=nil, specialuse=nil, uniqvpcid=nil, requestid=nil)
          @ServiceId = serviceid
          @AvailableEnvironments = availableenvironments
          @ServiceName = servicename
          @ServiceDesc = servicedesc
          @Protocol = protocol
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @NetTypes = nettypes
          @InternalSubDomain = internalsubdomain
          @OuterSubDomain = outersubdomain
          @InnerHttpPort = innerhttpport
          @InnerHttpsPort = innerhttpsport
          @ApiTotalCount = apitotalcount
          @ApiIdStatusSet = apiidstatusset
          @UsagePlanTotalCount = usageplantotalcount
          @UsagePlanList = usageplanlist
          @IpVersion = ipversion
          @UserType = usertype
          @SetId = setid
          @Tags = tags
          @InstanceId = instanceid
          @InstanceName = instancename
          @SetType = settype
          @DeploymentType = deploymenttype
          @SpecialUse = specialuse
          @UniqVpcId = uniqvpcid
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @AvailableEnvironments = params['AvailableEnvironments']
          @ServiceName = params['ServiceName']
          @ServiceDesc = params['ServiceDesc']
          @Protocol = params['Protocol']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @NetTypes = params['NetTypes']
          @InternalSubDomain = params['InternalSubDomain']
          @OuterSubDomain = params['OuterSubDomain']
          @InnerHttpPort = params['InnerHttpPort']
          @InnerHttpsPort = params['InnerHttpsPort']
          @ApiTotalCount = params['ApiTotalCount']
          unless params['ApiIdStatusSet'].nil?
            @ApiIdStatusSet = []
            params['ApiIdStatusSet'].each do |i|
              apiidstatus_tmp = ApiIdStatus.new
              apiidstatus_tmp.deserialize(i)
              @ApiIdStatusSet << apiidstatus_tmp
            end
          end
          @UsagePlanTotalCount = params['UsagePlanTotalCount']
          unless params['UsagePlanList'].nil?
            @UsagePlanList = []
            params['UsagePlanList'].each do |i|
              usageplan_tmp = UsagePlan.new
              usageplan_tmp.deserialize(i)
              @UsagePlanList << usageplan_tmp
            end
          end
          @IpVersion = params['IpVersion']
          @UserType = params['UserType']
          @SetId = params['SetId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @SetType = params['SetType']
          @DeploymentType = params['DeploymentType']
          @SpecialUse = params['SpecialUse']
          @UniqVpcId = params['UniqVpcId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceSubDomainMappings请求参数结构体
      class DescribeServiceSubDomainMappingsRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一 ID。
        # @type ServiceId: String
        # @param SubDomain: 服务绑定的自定义域名。
        # @type SubDomain: String

        attr_accessor :ServiceId, :SubDomain

        def initialize(serviceid=nil, subdomain=nil)
          @ServiceId = serviceid
          @SubDomain = subdomain
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @SubDomain = params['SubDomain']
        end
      end

      # DescribeServiceSubDomainMappings返回参数结构体
      class DescribeServiceSubDomainMappingsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 自定义路径映射列表。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceSubDomainMappings`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceSubDomainMappings.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceSubDomains请求参数结构体
      class DescribeServiceSubDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一 ID。
        # @type ServiceId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :Limit, :Offset

        def initialize(serviceid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceSubDomains返回参数结构体
      class DescribeServiceSubDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询服务自定义域名列表。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.DomainSets`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DomainSets.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServiceUsagePlan请求参数结构体
      class DescribeServiceUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待查询的服务唯一 ID。
        # @type ServiceId: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :ServiceId, :Limit, :Offset

        def initialize(serviceid=nil, limit=nil, offset=nil)
          @ServiceId = serviceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeServiceUsagePlan返回参数结构体
      class DescribeServiceUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: 服务绑定使用计划列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceUsagePlanSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServiceUsagePlanSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeServicesStatus请求参数结构体
      class DescribeServicesStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤条件。支持ServiceId、ServiceName、NotUsagePlanId、Environment、IpVersion、InstanceId、NetType、EIAMAppId。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeServicesStatus返回参数结构体
      class DescribeServicesStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 服务列表查询结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ServicesStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ServicesStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询后端通道绑定API列表
      class DescribeUpstreamBindApis < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param BindApiSet: 绑定的API信息
        # @type BindApiSet: Array

        attr_accessor :TotalCount, :BindApiSet

        def initialize(totalcount=nil, bindapiset=nil)
          @TotalCount = totalcount
          @BindApiSet = bindapiset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BindApiSet'].nil?
            @BindApiSet = []
            params['BindApiSet'].each do |i|
              bindapiinfo_tmp = BindApiInfo.new
              bindapiinfo_tmp.deserialize(i)
              @BindApiSet << bindapiinfo_tmp
            end
          end
        end
      end

      # DescribeUpstreamBindApis请求参数结构体
      class DescribeUpstreamBindApisRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页起始位置
        # @type Offset: Integer
        # @param UpstreamId: 后端通道ID
        # @type UpstreamId: String
        # @param Filters: ServiceId和ApiId过滤查询
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :UpstreamId, :Filters

        def initialize(limit=nil, offset=nil, upstreamid=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @UpstreamId = upstreamid
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @UpstreamId = params['UpstreamId']
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

      # DescribeUpstreamBindApis返回参数结构体
      class DescribeUpstreamBindApisResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询结果
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.DescribeUpstreamBindApis`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeUpstreamBindApis.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询后端通道返回信息
      class DescribeUpstreamInfo < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # @type TotalCount: Integer
        # @param UpstreamSet: 查询列表
        # @type UpstreamSet: Array

        attr_accessor :TotalCount, :UpstreamSet

        def initialize(totalcount=nil, upstreamset=nil)
          @TotalCount = totalcount
          @UpstreamSet = upstreamset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UpstreamSet'].nil?
            @UpstreamSet = []
            params['UpstreamSet'].each do |i|
              upstreaminfo_tmp = UpstreamInfo.new
              upstreaminfo_tmp.deserialize(i)
              @UpstreamSet << upstreaminfo_tmp
            end
          end
        end
      end

      # DescribeUpstreams请求参数结构体
      class DescribeUpstreamsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 分页起始位置
        # @type Offset: Integer
        # @param Filters: 过滤条件，支持后端通道ID（UpstreamId）、后端通道名字（UpstreamName）过滤查询
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeUpstreams返回参数结构体
      class DescribeUpstreamsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 查询结果
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.DescribeUpstreamInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = DescribeUpstreamInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsagePlanEnvironments请求参数结构体
      class DescribeUsagePlanEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 待查询的使用计划唯一 ID。
        # @type UsagePlanId: String
        # @param BindType: 定义类型，取值为 API、SERVICE，默认值为 SERVICE。
        # @type BindType: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :UsagePlanId, :BindType, :Limit, :Offset

        def initialize(usageplanid=nil, bindtype=nil, limit=nil, offset=nil)
          @UsagePlanId = usageplanid
          @BindType = bindtype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @BindType = params['BindType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeUsagePlanEnvironments返回参数结构体
      class DescribeUsagePlanEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 使用计划绑定详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.UsagePlanEnvironmentStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UsagePlanEnvironmentStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsagePlan请求参数结构体
      class DescribeUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 待查询的使用计划唯一 ID。
        # @type UsagePlanId: String

        attr_accessor :UsagePlanId

        def initialize(usageplanid=nil)
          @UsagePlanId = usageplanid
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
        end
      end

      # DescribeUsagePlan返回参数结构体
      class DescribeUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: 使用计划详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.UsagePlanInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UsagePlanInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsagePlanSecretIds请求参数结构体
      class DescribeUsagePlanSecretIdsRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 绑定的使用计划唯一 ID。
        # @type UsagePlanId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :UsagePlanId, :Limit, :Offset

        def initialize(usageplanid=nil, limit=nil, offset=nil)
          @UsagePlanId = usageplanid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeUsagePlanSecretIds返回参数结构体
      class DescribeUsagePlanSecretIdsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 使用计划绑定的密钥列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.UsagePlanBindSecretStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UsagePlanBindSecretStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUsagePlansStatus请求参数结构体
      class DescribeUsagePlansStatusRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 使用计划过滤条件。支持UsagePlanId、UsagePlanName、NotServiceId、NotApiId、Environment。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :Filters

        def initialize(limit=nil, offset=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeUsagePlansStatus返回参数结构体
      class DescribeUsagePlansStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 使用计划列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.UsagePlansStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UsagePlansStatus.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachPlugin请求参数结构体
      class DetachPluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 要解绑的API网关插件ID。
        # @type PluginId: String
        # @param ServiceId: 要操作的服务ID。
        # @type ServiceId: String
        # @param EnvironmentName: 要操作API的环境。
        # @type EnvironmentName: String
        # @param ApiId: 要解绑的API ID。
        # @type ApiId: String

        attr_accessor :PluginId, :ServiceId, :EnvironmentName, :ApiId

        def initialize(pluginid=nil, serviceid=nil, environmentname=nil, apiid=nil)
          @PluginId = pluginid
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @ApiId = apiid
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @ApiId = params['ApiId']
        end
      end

      # DetachPlugin返回参数结构体
      class DetachPluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解绑操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DisableApiKey请求参数结构体
      class DisableApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 待禁用的密钥 ID。
        # @type AccessKeyId: String

        attr_accessor :AccessKeyId

        def initialize(accesskeyid=nil)
          @AccessKeyId = accesskeyid
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
        end
      end

      # DisableApiKey返回参数结构体
      class DisableApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 禁用密钥操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 服务自定义域名列表
      class DomainSetList < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名名称。
        # @type DomainName: String
        # @param Status: 域名解析状态。1 表示正常解析，0 表示解析失败。
        # @type Status: Integer
        # @param CertificateId: 证书ID。
        # @type CertificateId: String
        # @param IsDefaultMapping: 是否使用默认路径映射。
        # @type IsDefaultMapping: Boolean
        # @param Protocol: 自定义域名协议类型。
        # @type Protocol: String
        # @param NetType: 网络类型（'INNER' 或 'OUTER'）。
        # @type NetType: String
        # @param IsForcedHttps: 是否将HTTP请求强制跳转 HTTPS，默认为false。参数为 true时，API网关会将所有使用该自定义域名的 HTTP 协议的请求重定向至 HTTPS 协议进行转发。
        # @type IsForcedHttps: Boolean
        # @param RegistrationStatus: 域名备案注册状态
        # @type RegistrationStatus: Boolean

        attr_accessor :DomainName, :Status, :CertificateId, :IsDefaultMapping, :Protocol, :NetType, :IsForcedHttps, :RegistrationStatus

        def initialize(domainname=nil, status=nil, certificateid=nil, isdefaultmapping=nil, protocol=nil, nettype=nil, isforcedhttps=nil, registrationstatus=nil)
          @DomainName = domainname
          @Status = status
          @CertificateId = certificateid
          @IsDefaultMapping = isdefaultmapping
          @Protocol = protocol
          @NetType = nettype
          @IsForcedHttps = isforcedhttps
          @RegistrationStatus = registrationstatus
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Status = params['Status']
          @CertificateId = params['CertificateId']
          @IsDefaultMapping = params['IsDefaultMapping']
          @Protocol = params['Protocol']
          @NetType = params['NetType']
          @IsForcedHttps = params['IsForcedHttps']
          @RegistrationStatus = params['RegistrationStatus']
        end
      end

      # 自定义服务域名展示
      class DomainSets < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务下的自定义域名数量。
        # @type TotalCount: Integer
        # @param DomainSet: 自定义服务域名列表。
        # @type DomainSet: Array

        attr_accessor :TotalCount, :DomainSet

        def initialize(totalcount=nil, domainset=nil)
          @TotalCount = totalcount
          @DomainSet = domainset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DomainSet'].nil?
            @DomainSet = []
            params['DomainSet'].each do |i|
              domainsetlist_tmp = DomainSetList.new
              domainsetlist_tmp.deserialize(i)
              @DomainSet << domainsetlist_tmp
            end
          end
        end
      end

      # EnableApiKey请求参数结构体
      class EnableApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 待启用的密钥 ID。
        # @type AccessKeyId: String

        attr_accessor :AccessKeyId

        def initialize(accesskeyid=nil)
          @AccessKeyId = accesskeyid
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
        end
      end

      # EnableApiKey返回参数结构体
      class EnableApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 启动密钥操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 服务发布的环境信息。
      class Environment < TencentCloud::Common::AbstractModel
        # @param EnvironmentName: 环境名称。
        # @type EnvironmentName: String
        # @param Url: 访问路径。
        # @type Url: String
        # @param Status: 发布状态，1 表示已发布，0 表示未发布。
        # @type Status: Integer
        # @param VersionName: 运行版本。
        # @type VersionName: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String

        attr_accessor :EnvironmentName, :Url, :Status, :VersionName, :CreateTime

        def initialize(environmentname=nil, url=nil, status=nil, versionname=nil, createtime=nil)
          @EnvironmentName = environmentname
          @Url = url
          @Status = status
          @VersionName = versionname
          @CreateTime = createtime
        end

        def deserialize(params)
          @EnvironmentName = params['EnvironmentName']
          @Url = params['Url']
          @Status = params['Status']
          @VersionName = params['VersionName']
          @CreateTime = params['CreateTime']
        end
      end

      # 环境限流
      class EnvironmentStrategy < TencentCloud::Common::AbstractModel
        # @param EnvironmentName: 环境名
        # @type EnvironmentName: String
        # @param Quota: 限流值
        # @type Quota: Integer

        attr_accessor :EnvironmentName, :Quota

        def initialize(environmentname=nil, quota=nil)
          @EnvironmentName = environmentname
          @Quota = quota
        end

        def deserialize(params)
          @EnvironmentName = params['EnvironmentName']
          @Quota = params['Quota']
        end
      end

      # 用户自定义错误码
      class ErrorCodes < TencentCloud::Common::AbstractModel
        # @param Code: 自定义响应配置错误码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Msg: 自定义响应配置错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Desc: 自定义响应配置错误码备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param ConvertedCode: 自定义错误码转换。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConvertedCode: Integer
        # @param NeedConvert: 是否需要开启错误码转换。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NeedConvert: Boolean

        attr_accessor :Code, :Msg, :Desc, :ConvertedCode, :NeedConvert

        def initialize(code=nil, msg=nil, desc=nil, convertedcode=nil, needconvert=nil)
          @Code = code
          @Msg = msg
          @Desc = desc
          @ConvertedCode = convertedcode
          @NeedConvert = needconvert
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Desc = params['Desc']
          @ConvertedCode = params['ConvertedCode']
          @NeedConvert = params['NeedConvert']
        end
      end

      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # 健康检查配置，包括TsfHealthCheckConf和TargetServicesHealthCheckConf
      class HealthCheckConf < TencentCloud::Common::AbstractModel
        # @param IsHealthCheck: 是否开启健康检查。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsHealthCheck: Boolean
        # @param RequestVolumeThreshold: 健康检查阈值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RequestVolumeThreshold: Integer
        # @param SleepWindowInMilliseconds: 窗口大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SleepWindowInMilliseconds: Integer
        # @param ErrorThresholdPercentage: 阈值百分比。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorThresholdPercentage: Integer

        attr_accessor :IsHealthCheck, :RequestVolumeThreshold, :SleepWindowInMilliseconds, :ErrorThresholdPercentage

        def initialize(ishealthcheck=nil, requestvolumethreshold=nil, sleepwindowinmilliseconds=nil, errorthresholdpercentage=nil)
          @IsHealthCheck = ishealthcheck
          @RequestVolumeThreshold = requestvolumethreshold
          @SleepWindowInMilliseconds = sleepwindowinmilliseconds
          @ErrorThresholdPercentage = errorthresholdpercentage
        end

        def deserialize(params)
          @IsHealthCheck = params['IsHealthCheck']
          @RequestVolumeThreshold = params['RequestVolumeThreshold']
          @SleepWindowInMilliseconds = params['SleepWindowInMilliseconds']
          @ErrorThresholdPercentage = params['ErrorThresholdPercentage']
        end
      end

      # 策略列表
      class IPStrategiesStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 策略数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param StrategySet: 策略列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategySet: Array

        attr_accessor :TotalCount, :StrategySet

        def initialize(totalcount=nil, strategyset=nil)
          @TotalCount = totalcount
          @StrategySet = strategyset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['StrategySet'].nil?
            @StrategySet = []
            params['StrategySet'].each do |i|
              ipstrategy_tmp = IPStrategy.new
              ipstrategy_tmp.deserialize(i)
              @StrategySet << ipstrategy_tmp
            end
          end
        end
      end

      # ip策略
      class IPStrategy < TencentCloud::Common::AbstractModel
        # @param StrategyId: 策略唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyId: String
        # @param StrategyName: 用户自定义策略名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyName: String
        # @param StrategyType: 策略类型。支持WHITE（白名单）和BLACK（黑名单）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyType: String
        # @param StrategyData: IP列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyData: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ServiceId: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param BindApiTotalCount: 策略绑定的API数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindApiTotalCount: Integer
        # @param BindApis: 绑定的API详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindApis: Array

        attr_accessor :StrategyId, :StrategyName, :StrategyType, :StrategyData, :CreatedTime, :ModifiedTime, :ServiceId, :BindApiTotalCount, :BindApis

        def initialize(strategyid=nil, strategyname=nil, strategytype=nil, strategydata=nil, createdtime=nil, modifiedtime=nil, serviceid=nil, bindapitotalcount=nil, bindapis=nil)
          @StrategyId = strategyid
          @StrategyName = strategyname
          @StrategyType = strategytype
          @StrategyData = strategydata
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ServiceId = serviceid
          @BindApiTotalCount = bindapitotalcount
          @BindApis = bindapis
        end

        def deserialize(params)
          @StrategyId = params['StrategyId']
          @StrategyName = params['StrategyName']
          @StrategyType = params['StrategyType']
          @StrategyData = params['StrategyData']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ServiceId = params['ServiceId']
          @BindApiTotalCount = params['BindApiTotalCount']
          unless params['BindApis'].nil?
            @BindApis = []
            params['BindApis'].each do |i|
              desapisstatus_tmp = DesApisStatus.new
              desapisstatus_tmp.deserialize(i)
              @BindApis << desapisstatus_tmp
            end
          end
        end
      end

      # 策略绑定api列表
      class IPStrategyApi < TencentCloud::Common::AbstractModel
        # @param ApiId: API 唯一 ID。
        # @type ApiId: String
        # @param ApiName: 用户自定义的 API 名称。
        # @type ApiName: String
        # @param ApiType: API 类型。取值为NORMAL（普通API）和TSF （微服务API）。
        # @type ApiType: String
        # @param Path: API 的路径。如 /path。
        # @type Path: String
        # @param Method: API 的请求方法。如 GET。
        # @type Method: String
        # @param OtherIPStrategyId: API 已经绑定的其他策略唯一ID。
        # @type OtherIPStrategyId: String
        # @param OtherEnvironmentName: API 已经绑定的环境。
        # @type OtherEnvironmentName: String

        attr_accessor :ApiId, :ApiName, :ApiType, :Path, :Method, :OtherIPStrategyId, :OtherEnvironmentName

        def initialize(apiid=nil, apiname=nil, apitype=nil, path=nil, method=nil, otheripstrategyid=nil, otherenvironmentname=nil)
          @ApiId = apiid
          @ApiName = apiname
          @ApiType = apitype
          @Path = path
          @Method = method
          @OtherIPStrategyId = otheripstrategyid
          @OtherEnvironmentName = otherenvironmentname
        end

        def deserialize(params)
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @ApiType = params['ApiType']
          @Path = params['Path']
          @Method = params['Method']
          @OtherIPStrategyId = params['OtherIPStrategyId']
          @OtherEnvironmentName = params['OtherEnvironmentName']
        end
      end

      # ip策略绑定api详情
      class IPStrategyApiStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 环境绑定API数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ApiIdStatusSet: 环境绑定API详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiIdStatusSet: Array

        attr_accessor :TotalCount, :ApiIdStatusSet

        def initialize(totalcount=nil, apiidstatusset=nil)
          @TotalCount = totalcount
          @ApiIdStatusSet = apiidstatusset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ApiIdStatusSet'].nil?
            @ApiIdStatusSet = []
            params['ApiIdStatusSet'].each do |i|
              ipstrategyapi_tmp = IPStrategyApi.new
              ipstrategyapi_tmp.deserialize(i)
              @ApiIdStatusSet << ipstrategyapi_tmp
            end
          end
        end
      end

      # ImportOpenApi请求参数结构体
      class ImportOpenApiRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API所在的服务唯一ID。
        # @type ServiceId: String
        # @param Content: openAPI正文内容。
        # @type Content: String
        # @param EncodeType: Content格式，只能是YAML或者JSON，默认是YAML。
        # @type EncodeType: String
        # @param ContentVersion: Content版本，默认是openAPI，目前只支持openAPI。
        # @type ContentVersion: String

        attr_accessor :ServiceId, :Content, :EncodeType, :ContentVersion

        def initialize(serviceid=nil, content=nil, encodetype=nil, contentversion=nil)
          @ServiceId = serviceid
          @Content = content
          @EncodeType = encodetype
          @ContentVersion = contentversion
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Content = params['Content']
          @EncodeType = params['EncodeType']
          @ContentVersion = params['ContentVersion']
        end
      end

      # ImportOpenApi返回参数结构体
      class ImportOpenApiResponse < TencentCloud::Common::AbstractModel
        # @param Result: 导入OpenApi返回参数。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.CreateApiRspSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = CreateApiRspSet.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 独享实例预付费详情
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param RenewFlag: 自动续费标示
        # @type RenewFlag: String
        # @param ExpiredTime: 预付费到期时间
        # @type ExpiredTime: String

        attr_accessor :RenewFlag, :ExpiredTime

        def initialize(renewflag=nil, expiredtime=nil)
          @RenewFlag = renewflag
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @RenewFlag = params['RenewFlag']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # 独享实例详情
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享实例唯一id
        # @type InstanceId: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param InstanceName: 独享实例名字
        # @type InstanceName: String
        # @param InstanceDescription: 独享实例描述
        # @type InstanceDescription: String
        # @param InstanceChargeType: 独享实例计费类型
        # @type InstanceChargeType: String
        # @param InstanceState: 独享实例状态
        # @type InstanceState: String
        # @param InstanceChargePrepaid: 独享实例预付费类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Apigateway.v20180808.models.InstanceChargePrepaid`
        # @param InstanceType: 独享实例类型
        # @type InstanceType: String
        # @param NetworkConfig: 独享实例网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkConfig: :class:`Tencentcloud::Apigateway.v20180808.models.NetworkConfig`
        # @param VpcConfig: 独享实例vpc配置
        # @type VpcConfig: :class:`Tencentcloud::Apigateway.v20180808.models.VpcConfig`
        # @param Parameters: 独享实例参数配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parameters: Array
        # @param IsolationStartedTime: 独享实例隔离时间
        # @type IsolationStartedTime: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param Zones: 可用区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zones: Array

        attr_accessor :InstanceId, :Zone, :InstanceName, :InstanceDescription, :InstanceChargeType, :InstanceState, :InstanceChargePrepaid, :InstanceType, :NetworkConfig, :VpcConfig, :Parameters, :IsolationStartedTime, :CreatedTime, :Zones

        def initialize(instanceid=nil, zone=nil, instancename=nil, instancedescription=nil, instancechargetype=nil, instancestate=nil, instancechargeprepaid=nil, instancetype=nil, networkconfig=nil, vpcconfig=nil, parameters=nil, isolationstartedtime=nil, createdtime=nil, zones=nil)
          @InstanceId = instanceid
          @Zone = zone
          @InstanceName = instancename
          @InstanceDescription = instancedescription
          @InstanceChargeType = instancechargetype
          @InstanceState = instancestate
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @NetworkConfig = networkconfig
          @VpcConfig = vpcconfig
          @Parameters = parameters
          @IsolationStartedTime = isolationstartedtime
          @CreatedTime = createdtime
          @Zones = zones
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @InstanceName = params['InstanceName']
          @InstanceDescription = params['InstanceDescription']
          @InstanceChargeType = params['InstanceChargeType']
          @InstanceState = params['InstanceState']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['NetworkConfig'].nil?
            @NetworkConfig = NetworkConfig.new
            @NetworkConfig.deserialize(params['NetworkConfig'])
          end
          unless params['VpcConfig'].nil?
            @VpcConfig = VpcConfig.new
            @VpcConfig.deserialize(params['VpcConfig'])
          end
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              parameterinfo_tmp = ParameterInfo.new
              parameterinfo_tmp.deserialize(i)
              @Parameters << parameterinfo_tmp
            end
          end
          @IsolationStartedTime = params['IsolationStartedTime']
          @CreatedTime = params['CreatedTime']
          @Zones = params['Zones']
        end
      end

      # 独享实例信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享实例唯一id
        # @type InstanceId: String
        # @param InstanceName: 独享实例name
        # @type InstanceName: String
        # @param InstanceDescription: 独享实例描述
        # @type InstanceDescription: String
        # @param InstanceChargeType: 独享实例计费类型
        # @type InstanceChargeType: String
        # @param InstanceType: 独享实例类型
        # @type InstanceType: String
        # @param InstanceState: 独享实例状态
        # @type InstanceState: String
        # @param CreatedTime: 独享实例创建时间
        # @type CreatedTime: String
        # @param DealName: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealName: String
        # @param ResourceId: 资源ID同唯一id
        # @type ResourceId: String
        # @param OuterIpList: 公网IP列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OuterIpList: Array
        # @param InnerIpList: 内网IP列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerIpList: Array
        # @param InstanceChargePrepaid: 专享实例计费信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Apigateway.v20180808.models.InstanceChargePrepaid`
        # @param UniqVpcId: 所属vpc
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String

        attr_accessor :InstanceId, :InstanceName, :InstanceDescription, :InstanceChargeType, :InstanceType, :InstanceState, :CreatedTime, :DealName, :ResourceId, :OuterIpList, :InnerIpList, :InstanceChargePrepaid, :UniqVpcId

        def initialize(instanceid=nil, instancename=nil, instancedescription=nil, instancechargetype=nil, instancetype=nil, instancestate=nil, createdtime=nil, dealname=nil, resourceid=nil, outeriplist=nil, inneriplist=nil, instancechargeprepaid=nil, uniqvpcid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceDescription = instancedescription
          @InstanceChargeType = instancechargetype
          @InstanceType = instancetype
          @InstanceState = instancestate
          @CreatedTime = createdtime
          @DealName = dealname
          @ResourceId = resourceid
          @OuterIpList = outeriplist
          @InnerIpList = inneriplist
          @InstanceChargePrepaid = instancechargeprepaid
          @UniqVpcId = uniqvpcid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceDescription = params['InstanceDescription']
          @InstanceChargeType = params['InstanceChargeType']
          @InstanceType = params['InstanceType']
          @InstanceState = params['InstanceState']
          @CreatedTime = params['CreatedTime']
          @DealName = params['DealName']
          @ResourceId = params['ResourceId']
          @OuterIpList = params['OuterIpList']
          @InnerIpList = params['InnerIpList']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @UniqVpcId = params['UniqVpcId']
        end
      end

      # 独享实例参数信息
      class InstanceParameterInput < TencentCloud::Common::AbstractModel
        # @param Name: ServiceRequestNumPreSec，ApiRequestNumPreSec
        # @type Name: String
        # @param Value: 参数值
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

      # 专享查询列表
      class InstanceSummary < TencentCloud::Common::AbstractModel
        # @param TotalCount: 专享实例总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstanceSet: 专享实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceSet: Array

        attr_accessor :TotalCount, :InstanceSet

        def initialize(totalcount=nil, instanceset=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstanceSet << instanceinfo_tmp
            end
          end
        end
      end

      # k8s Label
      class K8sLabel < TencentCloud::Common::AbstractModel
        # @param Key: Label的Key
        # @type Key: String
        # @param Value: Label的Value
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

      # k8s 服务的配置
      class K8sService < TencentCloud::Common::AbstractModel
        # @param Weight: 权重
        # @type Weight: Integer
        # @param ClusterId: k8s集群ID
        # @type ClusterId: String
        # @param Namespace: 容器命名空间
        # @type Namespace: String
        # @param ServiceName: 容器服务的名字
        # @type ServiceName: String
        # @param Port: 服务的端口
        # @type Port: Integer
        # @param ExtraLabels: 额外选择的Pod的Label
        # @type ExtraLabels: Array
        # @param Name: 自定义的服务名字，可选
        # @type Name: String

        attr_accessor :Weight, :ClusterId, :Namespace, :ServiceName, :Port, :ExtraLabels, :Name

        def initialize(weight=nil, clusterid=nil, namespace=nil, servicename=nil, port=nil, extralabels=nil, name=nil)
          @Weight = weight
          @ClusterId = clusterid
          @Namespace = namespace
          @ServiceName = servicename
          @Port = port
          @ExtraLabels = extralabels
          @Name = name
        end

        def deserialize(params)
          @Weight = params['Weight']
          @ClusterId = params['ClusterId']
          @Namespace = params['Namespace']
          @ServiceName = params['ServiceName']
          @Port = params['Port']
          unless params['ExtraLabels'].nil?
            @ExtraLabels = []
            params['ExtraLabels'].each do |i|
              k8slabel_tmp = K8sLabel.new
              k8slabel_tmp.deserialize(i)
              @ExtraLabels << k8slabel_tmp
            end
          end
          @Name = params['Name']
        end
      end

      # 检索条件入参
      class LogQuery < TencentCloud::Common::AbstractModel
        # @param Name: 检索字段
        # @type Name: String
        # @param Operator: 操作符
        # @type Operator: String
        # @param Value: 检索值
        # @type Value: String

        attr_accessor :Name, :Operator, :Value

        def initialize(name=nil, operator=nil, value=nil)
          @Name = name
          @Operator = operator
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Operator = params['Operator']
          @Value = params['Value']
        end
      end

      # API绑定的微服务信息。
      class MicroService < TencentCloud::Common::AbstractModel
        # @param ClusterId: 微服务集群ID。
        # @type ClusterId: String
        # @param NamespaceId: 微服务命名空间ID。
        # @type NamespaceId: String
        # @param MicroServiceName: 微服务名称。
        # @type MicroServiceName: String

        attr_accessor :ClusterId, :NamespaceId, :MicroServiceName

        def initialize(clusterid=nil, namespaceid=nil, microservicename=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @MicroServiceName = microservicename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @MicroServiceName = params['MicroServiceName']
        end
      end

      # tsf类型入参
      class MicroServiceReq < TencentCloud::Common::AbstractModel
        # @param ClusterId: 微服务集群。
        # @type ClusterId: String
        # @param NamespaceId: 微服务命名空间。
        # @type NamespaceId: String
        # @param MicroServiceName: 微服务名称。
        # @type MicroServiceName: String

        attr_accessor :ClusterId, :NamespaceId, :MicroServiceName

        def initialize(clusterid=nil, namespaceid=nil, microservicename=nil)
          @ClusterId = clusterid
          @NamespaceId = namespaceid
          @MicroServiceName = microservicename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NamespaceId = params['NamespaceId']
          @MicroServiceName = params['MicroServiceName']
        end
      end

      # ModifyAPIDoc请求参数结构体
      class ModifyAPIDocRequest < TencentCloud::Common::AbstractModel
        # @param ApiDocName: API文档名称
        # @type ApiDocName: String
        # @param ServiceId: 服务名称
        # @type ServiceId: String
        # @param Environment: 环境名称
        # @type Environment: String
        # @param ApiIds: 生成文档的API列表
        # @type ApiIds: Array
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String

        attr_accessor :ApiDocName, :ServiceId, :Environment, :ApiIds, :ApiDocId

        def initialize(apidocname=nil, serviceid=nil, environment=nil, apiids=nil, apidocid=nil)
          @ApiDocName = apidocname
          @ServiceId = serviceid
          @Environment = environment
          @ApiIds = apiids
          @ApiDocId = apidocid
        end

        def deserialize(params)
          @ApiDocName = params['ApiDocName']
          @ServiceId = params['ServiceId']
          @Environment = params['Environment']
          @ApiIds = params['ApiIds']
          @ApiDocId = params['ApiDocId']
        end
      end

      # ModifyAPIDoc返回参数结构体
      class ModifyAPIDocResponse < TencentCloud::Common::AbstractModel
        # @param Result: API文档基本信息
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.APIDoc`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = APIDoc.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyApiApp请求参数结构体
      class ModifyApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 应用唯一 ID。
        # @type ApiAppId: String
        # @param ApiAppName: 修改的应用名称
        # @type ApiAppName: String
        # @param ApiAppDesc: 修改的应用描述
        # @type ApiAppDesc: String

        attr_accessor :ApiAppId, :ApiAppName, :ApiAppDesc

        def initialize(apiappid=nil, apiappname=nil, apiappdesc=nil)
          @ApiAppId = apiappid
          @ApiAppName = apiappname
          @ApiAppDesc = apiappdesc
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
          @ApiAppName = params['ApiAppName']
          @ApiAppDesc = params['ApiAppDesc']
        end
      end

      # ModifyApiApp返回参数结构体
      class ModifyApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyApiEnvironmentStrategy请求参数结构体
      class ModifyApiEnvironmentStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一ID。
        # @type ServiceId: String
        # @param Strategy: 限流值。
        # @type Strategy: Integer
        # @param EnvironmentName: 环境名。
        # @type EnvironmentName: String
        # @param ApiIds: API列表。
        # @type ApiIds: Array

        attr_accessor :ServiceId, :Strategy, :EnvironmentName, :ApiIds

        def initialize(serviceid=nil, strategy=nil, environmentname=nil, apiids=nil)
          @ServiceId = serviceid
          @Strategy = strategy
          @EnvironmentName = environmentname
          @ApiIds = apiids
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Strategy = params['Strategy']
          @EnvironmentName = params['EnvironmentName']
          @ApiIds = params['ApiIds']
        end
      end

      # ModifyApiEnvironmentStrategy返回参数结构体
      class ModifyApiEnvironmentStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyApiIncrement请求参数结构体
      class ModifyApiIncrementRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务ID
        # @type ServiceId: String
        # @param ApiId: 接口ID
        # @type ApiId: String
        # @param BusinessType: 需要修改的API auth类型(可选择OAUTH-授权API)
        # @type BusinessType: String
        # @param PublicKey: oauth接口需要修改的公钥值
        # @type PublicKey: String
        # @param LoginRedirectUrl: oauth接口重定向地址
        # @type LoginRedirectUrl: String

        attr_accessor :ServiceId, :ApiId, :BusinessType, :PublicKey, :LoginRedirectUrl

        def initialize(serviceid=nil, apiid=nil, businesstype=nil, publickey=nil, loginredirecturl=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @BusinessType = businesstype
          @PublicKey = publickey
          @LoginRedirectUrl = loginredirecturl
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @BusinessType = params['BusinessType']
          @PublicKey = params['PublicKey']
          @LoginRedirectUrl = params['LoginRedirectUrl']
        end
      end

      # ModifyApiIncrement返回参数结构体
      class ModifyApiIncrementResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyApi请求参数结构体
      class ModifyApiRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: API 所在的服务唯一 ID。
        # @type ServiceId: String
        # @param ServiceType: API 的后端服务类型。支持HTTP、MOCK、TSF、CLB、SCF、WEBSOCKET、TARGET（内测）。
        # @type ServiceType: String
        # @param RequestConfig: 请求的前端配置。
        # @type RequestConfig: :class:`Tencentcloud::Apigateway.v20180808.models.RequestConfig`
        # @param ApiId: API 接口唯一 ID。
        # @type ApiId: String
        # @param ApiName: 用户自定义的 API 名称。
        # @type ApiName: String
        # @param ApiDesc: 用户自定义的 API 接口描述。
        # @type ApiDesc: String
        # @param ApiType: API 类型，支持NORMAL和TSF，默认为NORMAL。
        # @type ApiType: String
        # @param AuthType: API 鉴权类型。支持SECRET、NONE、OAUTH、APP。默认为NONE。
        # @type AuthType: String
        # @param AuthRequired: 是否需要签名认证，True 表示需要，False 表示不需要。待废弃。
        # @type AuthRequired: Boolean
        # @param ServiceTimeout: API 的后端服务超时时间，单位是秒。
        # @type ServiceTimeout: Integer
        # @param Protocol: API 的前端请求类型，如 HTTP 或 HTTPS 或者 HTTP 和 HTTPS。修改api时推荐必填
        # @type Protocol: String
        # @param EnableCORS: 是否需要开启跨域，Ture 表示需要，False 表示不需要。
        # @type EnableCORS: Boolean
        # @param ConstantParameters: 常量参数。
        # @type ConstantParameters: Array
        # @param RequestParameters: 前端请求参数。
        # @type RequestParameters: Array
        # @param ApiBusinessType: 当AuthType 为 OAUTH时，该字段有效， NORMAL：业务api   OAUTH：授权API。
        # @type ApiBusinessType: String
        # @param ServiceMockReturnMessage: API 的后端 Mock 返回信息。如果 ServiceType 是 Mock，则此参数必传。
        # @type ServiceMockReturnMessage: String
        # @param MicroServices: API绑定微服务列表。
        # @type MicroServices: Array
        # @param ServiceTsfLoadBalanceConf: 微服务的负载均衡配置。
        # @type ServiceTsfLoadBalanceConf: :class:`Tencentcloud::Apigateway.v20180808.models.TsfLoadBalanceConfResp`
        # @param ServiceTsfHealthCheckConf: 微服务的健康检查配置。
        # @type ServiceTsfHealthCheckConf: :class:`Tencentcloud::Apigateway.v20180808.models.HealthCheckConf`
        # @param TargetServicesLoadBalanceConf: target类型负载均衡配置。（内测阶段）
        # @type TargetServicesLoadBalanceConf: Integer
        # @param TargetServicesHealthCheckConf: target健康检查配置。（内测阶段）
        # @type TargetServicesHealthCheckConf: :class:`Tencentcloud::Apigateway.v20180808.models.HealthCheckConf`
        # @param ServiceScfFunctionName: scf 函数名称。当后端类型是SCF时生效。
        # @type ServiceScfFunctionName: String
        # @param ServiceWebsocketRegisterFunctionName: scf websocket注册函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketRegisterFunctionName: String
        # @param ServiceWebsocketCleanupFunctionName: scf websocket清理函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketCleanupFunctionName: String
        # @param ServiceWebsocketTransportFunctionName: scf websocket传输函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketTransportFunctionName: String
        # @param ServiceScfFunctionNamespace: scf 函数命名空间。当后端类型是SCF时生效。
        # @type ServiceScfFunctionNamespace: String
        # @param ServiceScfFunctionQualifier: scf函数版本。当后端类型是SCF时生效。
        # @type ServiceScfFunctionQualifier: String
        # @param ServiceWebsocketRegisterFunctionNamespace: scf websocket注册函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketRegisterFunctionNamespace: String
        # @param ServiceWebsocketRegisterFunctionQualifier: scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketRegisterFunctionQualifier: String
        # @param ServiceWebsocketTransportFunctionNamespace: scf websocket传输函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketTransportFunctionNamespace: String
        # @param ServiceWebsocketTransportFunctionQualifier: scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketTransportFunctionQualifier: String
        # @param ServiceWebsocketCleanupFunctionNamespace: scf websocket清理函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketCleanupFunctionNamespace: String
        # @param ServiceWebsocketCleanupFunctionQualifier: scf websocket清理函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        # @type ServiceWebsocketCleanupFunctionQualifier: String
        # @param ServiceScfIsIntegratedResponse: 是否开启响应集成。当后端类型是SCF时生效。
        # @type ServiceScfIsIntegratedResponse: Boolean
        # @param IsDebugAfterCharge: 开始调试后计费。（云市场预留字段）
        # @type IsDebugAfterCharge: Boolean
        # @param TagSpecifications: 标签。
        # @type TagSpecifications: :class:`Tencentcloud::Apigateway.v20180808.models.Tag`
        # @param IsDeleteResponseErrorCodes: 是否删除自定义响应配置错误码，如果不传或者传 False，不删除，当传 True 时，则删除此 API 所有自定义响应配置错误码。
        # @type IsDeleteResponseErrorCodes: Boolean
        # @param ResponseType: 返回类型。
        # @type ResponseType: String
        # @param ResponseSuccessExample: 自定义响应配置成功响应示例。
        # @type ResponseSuccessExample: String
        # @param ResponseFailExample: 自定义响应配置失败响应示例。
        # @type ResponseFailExample: String
        # @param ServiceConfig: API 的后端服务配置。
        # @type ServiceConfig: :class:`Tencentcloud::Apigateway.v20180808.models.ServiceConfig`
        # @param AuthRelationApiId: 关联的授权API 唯一 ID，当AuthType为OAUTH且ApiBusinessType为NORMAL时生效。标示业务API绑定的oauth2.0授权API唯一ID。
        # @type AuthRelationApiId: String
        # @param ServiceParameters: API的后端服务参数。
        # @type ServiceParameters: Array
        # @param OauthConfig: oauth配置。当AuthType是OAUTH时生效。
        # @type OauthConfig: :class:`Tencentcloud::Apigateway.v20180808.models.OauthConfig`
        # @param ResponseErrorCodes: 用户自定义错误码配置。
        # @type ResponseErrorCodes: Array
        # @param IsBase64Encoded: 是否开启Base64编码，只有后端为scf时才会生效。
        # @type IsBase64Encoded: Boolean
        # @param IsBase64Trigger: 是否开启Base64编码的header触发，只有后端为scf时才会生效。
        # @type IsBase64Trigger: Boolean
        # @param Base64EncodedTriggerRules: Header触发规则，总规则数不能超过10。
        # @type Base64EncodedTriggerRules: Array
        # @param EventBusId: 事件总线ID。
        # @type EventBusId: String
        # @param ServiceScfFunctionType: scf函数类型。当后端类型是SCF时生效。支持事件触发(EVENT)，http直通云函数(HTTP)。
        # @type ServiceScfFunctionType: String
        # @param ServiceScfEventIsAsyncCall: 是否开启SCF Event异步调用。
        # @type ServiceScfEventIsAsyncCall: Boolean
        # @param EIAMAppType: EIAM应用类型。
        # @type EIAMAppType: String
        # @param EIAMAuthType: EIAM应用认证类型，支持仅认证（AuthenticationOnly）、认证和鉴权（Authorization）。
        # @type EIAMAuthType: String
        # @param EIAMAppId: EIAM应用Token 有效时间，单位为秒，默认为7200秒。
        # @type EIAMAppId: String
        # @param TokenTimeout: EIAM应用ID。
        # @type TokenTimeout: Integer

        attr_accessor :ServiceId, :ServiceType, :RequestConfig, :ApiId, :ApiName, :ApiDesc, :ApiType, :AuthType, :AuthRequired, :ServiceTimeout, :Protocol, :EnableCORS, :ConstantParameters, :RequestParameters, :ApiBusinessType, :ServiceMockReturnMessage, :MicroServices, :ServiceTsfLoadBalanceConf, :ServiceTsfHealthCheckConf, :TargetServicesLoadBalanceConf, :TargetServicesHealthCheckConf, :ServiceScfFunctionName, :ServiceWebsocketRegisterFunctionName, :ServiceWebsocketCleanupFunctionName, :ServiceWebsocketTransportFunctionName, :ServiceScfFunctionNamespace, :ServiceScfFunctionQualifier, :ServiceWebsocketRegisterFunctionNamespace, :ServiceWebsocketRegisterFunctionQualifier, :ServiceWebsocketTransportFunctionNamespace, :ServiceWebsocketTransportFunctionQualifier, :ServiceWebsocketCleanupFunctionNamespace, :ServiceWebsocketCleanupFunctionQualifier, :ServiceScfIsIntegratedResponse, :IsDebugAfterCharge, :TagSpecifications, :IsDeleteResponseErrorCodes, :ResponseType, :ResponseSuccessExample, :ResponseFailExample, :ServiceConfig, :AuthRelationApiId, :ServiceParameters, :OauthConfig, :ResponseErrorCodes, :IsBase64Encoded, :IsBase64Trigger, :Base64EncodedTriggerRules, :EventBusId, :ServiceScfFunctionType, :ServiceScfEventIsAsyncCall, :EIAMAppType, :EIAMAuthType, :EIAMAppId, :TokenTimeout

        def initialize(serviceid=nil, servicetype=nil, requestconfig=nil, apiid=nil, apiname=nil, apidesc=nil, apitype=nil, authtype=nil, authrequired=nil, servicetimeout=nil, protocol=nil, enablecors=nil, constantparameters=nil, requestparameters=nil, apibusinesstype=nil, servicemockreturnmessage=nil, microservices=nil, servicetsfloadbalanceconf=nil, servicetsfhealthcheckconf=nil, targetservicesloadbalanceconf=nil, targetserviceshealthcheckconf=nil, servicescffunctionname=nil, servicewebsocketregisterfunctionname=nil, servicewebsocketcleanupfunctionname=nil, servicewebsockettransportfunctionname=nil, servicescffunctionnamespace=nil, servicescffunctionqualifier=nil, servicewebsocketregisterfunctionnamespace=nil, servicewebsocketregisterfunctionqualifier=nil, servicewebsockettransportfunctionnamespace=nil, servicewebsockettransportfunctionqualifier=nil, servicewebsocketcleanupfunctionnamespace=nil, servicewebsocketcleanupfunctionqualifier=nil, servicescfisintegratedresponse=nil, isdebugaftercharge=nil, tagspecifications=nil, isdeleteresponseerrorcodes=nil, responsetype=nil, responsesuccessexample=nil, responsefailexample=nil, serviceconfig=nil, authrelationapiid=nil, serviceparameters=nil, oauthconfig=nil, responseerrorcodes=nil, isbase64encoded=nil, isbase64trigger=nil, base64encodedtriggerrules=nil, eventbusid=nil, servicescffunctiontype=nil, servicescfeventisasynccall=nil, eiamapptype=nil, eiamauthtype=nil, eiamappid=nil, tokentimeout=nil)
          @ServiceId = serviceid
          @ServiceType = servicetype
          @RequestConfig = requestconfig
          @ApiId = apiid
          @ApiName = apiname
          @ApiDesc = apidesc
          @ApiType = apitype
          @AuthType = authtype
          @AuthRequired = authrequired
          @ServiceTimeout = servicetimeout
          @Protocol = protocol
          @EnableCORS = enablecors
          @ConstantParameters = constantparameters
          @RequestParameters = requestparameters
          @ApiBusinessType = apibusinesstype
          @ServiceMockReturnMessage = servicemockreturnmessage
          @MicroServices = microservices
          @ServiceTsfLoadBalanceConf = servicetsfloadbalanceconf
          @ServiceTsfHealthCheckConf = servicetsfhealthcheckconf
          @TargetServicesLoadBalanceConf = targetservicesloadbalanceconf
          @TargetServicesHealthCheckConf = targetserviceshealthcheckconf
          @ServiceScfFunctionName = servicescffunctionname
          @ServiceWebsocketRegisterFunctionName = servicewebsocketregisterfunctionname
          @ServiceWebsocketCleanupFunctionName = servicewebsocketcleanupfunctionname
          @ServiceWebsocketTransportFunctionName = servicewebsockettransportfunctionname
          @ServiceScfFunctionNamespace = servicescffunctionnamespace
          @ServiceScfFunctionQualifier = servicescffunctionqualifier
          @ServiceWebsocketRegisterFunctionNamespace = servicewebsocketregisterfunctionnamespace
          @ServiceWebsocketRegisterFunctionQualifier = servicewebsocketregisterfunctionqualifier
          @ServiceWebsocketTransportFunctionNamespace = servicewebsockettransportfunctionnamespace
          @ServiceWebsocketTransportFunctionQualifier = servicewebsockettransportfunctionqualifier
          @ServiceWebsocketCleanupFunctionNamespace = servicewebsocketcleanupfunctionnamespace
          @ServiceWebsocketCleanupFunctionQualifier = servicewebsocketcleanupfunctionqualifier
          @ServiceScfIsIntegratedResponse = servicescfisintegratedresponse
          @IsDebugAfterCharge = isdebugaftercharge
          @TagSpecifications = tagspecifications
          @IsDeleteResponseErrorCodes = isdeleteresponseerrorcodes
          @ResponseType = responsetype
          @ResponseSuccessExample = responsesuccessexample
          @ResponseFailExample = responsefailexample
          @ServiceConfig = serviceconfig
          @AuthRelationApiId = authrelationapiid
          @ServiceParameters = serviceparameters
          @OauthConfig = oauthconfig
          @ResponseErrorCodes = responseerrorcodes
          @IsBase64Encoded = isbase64encoded
          @IsBase64Trigger = isbase64trigger
          @Base64EncodedTriggerRules = base64encodedtriggerrules
          @EventBusId = eventbusid
          @ServiceScfFunctionType = servicescffunctiontype
          @ServiceScfEventIsAsyncCall = servicescfeventisasynccall
          @EIAMAppType = eiamapptype
          @EIAMAuthType = eiamauthtype
          @EIAMAppId = eiamappid
          @TokenTimeout = tokentimeout
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceType = params['ServiceType']
          unless params['RequestConfig'].nil?
            @RequestConfig = RequestConfig.new
            @RequestConfig.deserialize(params['RequestConfig'])
          end
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @ApiDesc = params['ApiDesc']
          @ApiType = params['ApiType']
          @AuthType = params['AuthType']
          @AuthRequired = params['AuthRequired']
          @ServiceTimeout = params['ServiceTimeout']
          @Protocol = params['Protocol']
          @EnableCORS = params['EnableCORS']
          unless params['ConstantParameters'].nil?
            @ConstantParameters = []
            params['ConstantParameters'].each do |i|
              constantparameter_tmp = ConstantParameter.new
              constantparameter_tmp.deserialize(i)
              @ConstantParameters << constantparameter_tmp
            end
          end
          unless params['RequestParameters'].nil?
            @RequestParameters = []
            params['RequestParameters'].each do |i|
              reqparameter_tmp = ReqParameter.new
              reqparameter_tmp.deserialize(i)
              @RequestParameters << reqparameter_tmp
            end
          end
          @ApiBusinessType = params['ApiBusinessType']
          @ServiceMockReturnMessage = params['ServiceMockReturnMessage']
          unless params['MicroServices'].nil?
            @MicroServices = []
            params['MicroServices'].each do |i|
              microservicereq_tmp = MicroServiceReq.new
              microservicereq_tmp.deserialize(i)
              @MicroServices << microservicereq_tmp
            end
          end
          unless params['ServiceTsfLoadBalanceConf'].nil?
            @ServiceTsfLoadBalanceConf = TsfLoadBalanceConfResp.new
            @ServiceTsfLoadBalanceConf.deserialize(params['ServiceTsfLoadBalanceConf'])
          end
          unless params['ServiceTsfHealthCheckConf'].nil?
            @ServiceTsfHealthCheckConf = HealthCheckConf.new
            @ServiceTsfHealthCheckConf.deserialize(params['ServiceTsfHealthCheckConf'])
          end
          @TargetServicesLoadBalanceConf = params['TargetServicesLoadBalanceConf']
          unless params['TargetServicesHealthCheckConf'].nil?
            @TargetServicesHealthCheckConf = HealthCheckConf.new
            @TargetServicesHealthCheckConf.deserialize(params['TargetServicesHealthCheckConf'])
          end
          @ServiceScfFunctionName = params['ServiceScfFunctionName']
          @ServiceWebsocketRegisterFunctionName = params['ServiceWebsocketRegisterFunctionName']
          @ServiceWebsocketCleanupFunctionName = params['ServiceWebsocketCleanupFunctionName']
          @ServiceWebsocketTransportFunctionName = params['ServiceWebsocketTransportFunctionName']
          @ServiceScfFunctionNamespace = params['ServiceScfFunctionNamespace']
          @ServiceScfFunctionQualifier = params['ServiceScfFunctionQualifier']
          @ServiceWebsocketRegisterFunctionNamespace = params['ServiceWebsocketRegisterFunctionNamespace']
          @ServiceWebsocketRegisterFunctionQualifier = params['ServiceWebsocketRegisterFunctionQualifier']
          @ServiceWebsocketTransportFunctionNamespace = params['ServiceWebsocketTransportFunctionNamespace']
          @ServiceWebsocketTransportFunctionQualifier = params['ServiceWebsocketTransportFunctionQualifier']
          @ServiceWebsocketCleanupFunctionNamespace = params['ServiceWebsocketCleanupFunctionNamespace']
          @ServiceWebsocketCleanupFunctionQualifier = params['ServiceWebsocketCleanupFunctionQualifier']
          @ServiceScfIsIntegratedResponse = params['ServiceScfIsIntegratedResponse']
          @IsDebugAfterCharge = params['IsDebugAfterCharge']
          unless params['TagSpecifications'].nil?
            @TagSpecifications = Tag.new
            @TagSpecifications.deserialize(params['TagSpecifications'])
          end
          @IsDeleteResponseErrorCodes = params['IsDeleteResponseErrorCodes']
          @ResponseType = params['ResponseType']
          @ResponseSuccessExample = params['ResponseSuccessExample']
          @ResponseFailExample = params['ResponseFailExample']
          unless params['ServiceConfig'].nil?
            @ServiceConfig = ServiceConfig.new
            @ServiceConfig.deserialize(params['ServiceConfig'])
          end
          @AuthRelationApiId = params['AuthRelationApiId']
          unless params['ServiceParameters'].nil?
            @ServiceParameters = []
            params['ServiceParameters'].each do |i|
              serviceparameter_tmp = ServiceParameter.new
              serviceparameter_tmp.deserialize(i)
              @ServiceParameters << serviceparameter_tmp
            end
          end
          unless params['OauthConfig'].nil?
            @OauthConfig = OauthConfig.new
            @OauthConfig.deserialize(params['OauthConfig'])
          end
          unless params['ResponseErrorCodes'].nil?
            @ResponseErrorCodes = []
            params['ResponseErrorCodes'].each do |i|
              responseerrorcodereq_tmp = ResponseErrorCodeReq.new
              responseerrorcodereq_tmp.deserialize(i)
              @ResponseErrorCodes << responseerrorcodereq_tmp
            end
          end
          @IsBase64Encoded = params['IsBase64Encoded']
          @IsBase64Trigger = params['IsBase64Trigger']
          unless params['Base64EncodedTriggerRules'].nil?
            @Base64EncodedTriggerRules = []
            params['Base64EncodedTriggerRules'].each do |i|
              base64encodedtriggerrule_tmp = Base64EncodedTriggerRule.new
              base64encodedtriggerrule_tmp.deserialize(i)
              @Base64EncodedTriggerRules << base64encodedtriggerrule_tmp
            end
          end
          @EventBusId = params['EventBusId']
          @ServiceScfFunctionType = params['ServiceScfFunctionType']
          @ServiceScfEventIsAsyncCall = params['ServiceScfEventIsAsyncCall']
          @EIAMAppType = params['EIAMAppType']
          @EIAMAuthType = params['EIAMAuthType']
          @EIAMAppId = params['EIAMAppId']
          @TokenTimeout = params['TokenTimeout']
        end
      end

      # ModifyApi返回参数结构体
      class ModifyApiResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyExclusiveInstance请求参数结构体
      class ModifyExclusiveInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 独享实例唯一id
        # @type InstanceId: String
        # @param InstanceName: 独享实例name
        # @type InstanceName: String
        # @param InstanceDescription: 独享实例描述
        # @type InstanceDescription: String
        # @param Parameters: 独享实例参数配置
        # @type Parameters: Array

        attr_accessor :InstanceId, :InstanceName, :InstanceDescription, :Parameters

        def initialize(instanceid=nil, instancename=nil, instancedescription=nil, parameters=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceDescription = instancedescription
          @Parameters = parameters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceDescription = params['InstanceDescription']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              instanceparameterinput_tmp = InstanceParameterInput.new
              instanceparameterinput_tmp.deserialize(i)
              @Parameters << instanceparameterinput_tmp
            end
          end
        end
      end

      # ModifyExclusiveInstance返回参数结构体
      class ModifyExclusiveInstanceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 独享实例详情信息
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.InstanceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = InstanceDetail.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyIPStrategy请求参数结构体
      class ModifyIPStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待修改的策略所属服务的唯一ID。
        # @type ServiceId: String
        # @param StrategyId: 待修改的策略唯一ID。
        # @type StrategyId: String
        # @param StrategyData: 待修改的策略详情。
        # @type StrategyData: String

        attr_accessor :ServiceId, :StrategyId, :StrategyData

        def initialize(serviceid=nil, strategyid=nil, strategydata=nil)
          @ServiceId = serviceid
          @StrategyId = strategyid
          @StrategyData = strategydata
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyId = params['StrategyId']
          @StrategyData = params['StrategyData']
        end
      end

      # ModifyIPStrategy返回参数结构体
      class ModifyIPStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPlugin请求参数结构体
      class ModifyPluginRequest < TencentCloud::Common::AbstractModel
        # @param PluginId: 要修改的插件ID。
        # @type PluginId: String
        # @param PluginName: 要修改的API网关插件名称。最长50个字符，支持 a-z,A-Z,0-9,_, 必须字母开头，字母或者数字结尾。
        # @type PluginName: String
        # @param Description: 要修改的插件描述，限定200字以内。
        # @type Description: String
        # @param PluginData: 要修改的插件定义语句，支持json。
        # @type PluginData: String

        attr_accessor :PluginId, :PluginName, :Description, :PluginData

        def initialize(pluginid=nil, pluginname=nil, description=nil, plugindata=nil)
          @PluginId = pluginid
          @PluginName = pluginname
          @Description = description
          @PluginData = plugindata
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @PluginName = params['PluginName']
          @Description = params['Description']
          @PluginData = params['PluginData']
        end
      end

      # ModifyPlugin返回参数结构体
      class ModifyPluginResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyServiceEnvironmentStrategy请求参数结构体
      class ModifyServiceEnvironmentStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务的唯一ID。
        # @type ServiceId: String
        # @param Strategy: 限流值。
        # @type Strategy: Integer
        # @param EnvironmentNames: 环境列表。
        # @type EnvironmentNames: Array

        attr_accessor :ServiceId, :Strategy, :EnvironmentNames

        def initialize(serviceid=nil, strategy=nil, environmentnames=nil)
          @ServiceId = serviceid
          @Strategy = strategy
          @EnvironmentNames = environmentnames
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @Strategy = params['Strategy']
          @EnvironmentNames = params['EnvironmentNames']
        end
      end

      # ModifyServiceEnvironmentStrategy返回参数结构体
      class ModifyServiceEnvironmentStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyService请求参数结构体
      class ModifyServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待修改服务的唯一 Id。
        # @type ServiceId: String
        # @param ServiceName: 修改后的服务名称。
        # @type ServiceName: String
        # @param ServiceDesc: 修改后的服务描述。
        # @type ServiceDesc: String
        # @param Protocol: 修改后的服务前端请求类型，如 http、https和 http&https。
        # @type Protocol: String
        # @param NetTypes: 网络类型列表，用于指定支持的访问类型，INNER为内网访问，OUTER为外网访问。默认为OUTER。
        # @type NetTypes: Array
        # @param UniqVpcId: vpc属性，选择VPC后不可修改。为服务选择VPC后，可对接该VPC下的后端资源
        # @type UniqVpcId: String

        attr_accessor :ServiceId, :ServiceName, :ServiceDesc, :Protocol, :NetTypes, :UniqVpcId

        def initialize(serviceid=nil, servicename=nil, servicedesc=nil, protocol=nil, nettypes=nil, uniqvpcid=nil)
          @ServiceId = serviceid
          @ServiceName = servicename
          @ServiceDesc = servicedesc
          @Protocol = protocol
          @NetTypes = nettypes
          @UniqVpcId = uniqvpcid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @ServiceDesc = params['ServiceDesc']
          @Protocol = params['Protocol']
          @NetTypes = params['NetTypes']
          @UniqVpcId = params['UniqVpcId']
        end
      end

      # ModifyService返回参数结构体
      class ModifyServiceResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifySubDomain请求参数结构体
      class ModifySubDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一 ID。
        # @type ServiceId: String
        # @param SubDomain: 待修改路径映射的自定义的域名。
        # @type SubDomain: String
        # @param IsDefaultMapping: 是否修改为使用默认路径映射。为 true，表示使用默认路径映射，为 false，表示使用自定义路径映射。
        # @type IsDefaultMapping: Boolean
        # @param CertificateId: 证书 ID，协议包含 HTTPS 的时候要传该字段。
        # @type CertificateId: String
        # @param Protocol: 修改后的自定义域名协议类型。（http，https 或 http&https)
        # @type Protocol: String
        # @param PathMappingSet: 修改后的路径映射列表。
        # @type PathMappingSet: Array
        # @param NetType: 网络类型 （'INNER' 或 'OUTER'）
        # @type NetType: String
        # @param IsForcedHttps: 是否将HTTP请求强制跳转 HTTPS，默认为false。参数为 true时，API网关会将所有使用该自定义域名的 HTTP 协议的请求重定向至 HTTPS 协议进行转发。
        # @type IsForcedHttps: Boolean

        attr_accessor :ServiceId, :SubDomain, :IsDefaultMapping, :CertificateId, :Protocol, :PathMappingSet, :NetType, :IsForcedHttps

        def initialize(serviceid=nil, subdomain=nil, isdefaultmapping=nil, certificateid=nil, protocol=nil, pathmappingset=nil, nettype=nil, isforcedhttps=nil)
          @ServiceId = serviceid
          @SubDomain = subdomain
          @IsDefaultMapping = isdefaultmapping
          @CertificateId = certificateid
          @Protocol = protocol
          @PathMappingSet = pathmappingset
          @NetType = nettype
          @IsForcedHttps = isforcedhttps
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @SubDomain = params['SubDomain']
          @IsDefaultMapping = params['IsDefaultMapping']
          @CertificateId = params['CertificateId']
          @Protocol = params['Protocol']
          unless params['PathMappingSet'].nil?
            @PathMappingSet = []
            params['PathMappingSet'].each do |i|
              pathmapping_tmp = PathMapping.new
              pathmapping_tmp.deserialize(i)
              @PathMappingSet << pathmapping_tmp
            end
          end
          @NetType = params['NetType']
          @IsForcedHttps = params['IsForcedHttps']
        end
      end

      # ModifySubDomain返回参数结构体
      class ModifySubDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 修改自定义域名操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUpstream请求参数结构体
      class ModifyUpstreamRequest < TencentCloud::Common::AbstractModel
        # @param UpstreamId: 后端通道唯一ID
        # @type UpstreamId: String
        # @param UpstreamName: 后端通道名字
        # @type UpstreamName: String
        # @param UpstreamDescription: 后端通道描述
        # @type UpstreamDescription: String
        # @param Scheme: 后端协议，取值范围：HTTP, HTTPS
        # @type Scheme: String
        # @param UpstreamType: 后端访问类型，取值范围：IP_PORT, K8S
        # @type UpstreamType: String
        # @param Algorithm: 负载均衡算法，取值范围：ROUND_ROBIN
        # @type Algorithm: String
        # @param UniqVpcId: VPC唯一ID
        # @type UniqVpcId: String
        # @param Retries: 请求重试次数，默认3次
        # @type Retries: Integer
        # @param UpstreamHost: 网关转发到后端的 Host 请求头
        # @type UpstreamHost: String
        # @param Nodes: 后端节点列表
        # @type Nodes: Array
        # @param HealthChecker: 健康检查配置，目前只支持VPC通道
        # @type HealthChecker: :class:`Tencentcloud::Apigateway.v20180808.models.UpstreamHealthChecker`
        # @param K8sService: 容器服务配置
        # @type K8sService: Array

        attr_accessor :UpstreamId, :UpstreamName, :UpstreamDescription, :Scheme, :UpstreamType, :Algorithm, :UniqVpcId, :Retries, :UpstreamHost, :Nodes, :HealthChecker, :K8sService

        def initialize(upstreamid=nil, upstreamname=nil, upstreamdescription=nil, scheme=nil, upstreamtype=nil, algorithm=nil, uniqvpcid=nil, retries=nil, upstreamhost=nil, nodes=nil, healthchecker=nil, k8sservice=nil)
          @UpstreamId = upstreamid
          @UpstreamName = upstreamname
          @UpstreamDescription = upstreamdescription
          @Scheme = scheme
          @UpstreamType = upstreamtype
          @Algorithm = algorithm
          @UniqVpcId = uniqvpcid
          @Retries = retries
          @UpstreamHost = upstreamhost
          @Nodes = nodes
          @HealthChecker = healthchecker
          @K8sService = k8sservice
        end

        def deserialize(params)
          @UpstreamId = params['UpstreamId']
          @UpstreamName = params['UpstreamName']
          @UpstreamDescription = params['UpstreamDescription']
          @Scheme = params['Scheme']
          @UpstreamType = params['UpstreamType']
          @Algorithm = params['Algorithm']
          @UniqVpcId = params['UniqVpcId']
          @Retries = params['Retries']
          @UpstreamHost = params['UpstreamHost']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              upstreamnode_tmp = UpstreamNode.new
              upstreamnode_tmp.deserialize(i)
              @Nodes << upstreamnode_tmp
            end
          end
          unless params['HealthChecker'].nil?
            @HealthChecker = UpstreamHealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          unless params['K8sService'].nil?
            @K8sService = []
            params['K8sService'].each do |i|
              k8sservice_tmp = K8sService.new
              k8sservice_tmp.deserialize(i)
              @K8sService << k8sservice_tmp
            end
          end
        end
      end

      # ModifyUpstream返回参数结构体
      class ModifyUpstreamResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回修改后的后端通道信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ModifyUpstreamResultInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ModifyUpstreamResultInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 后端通道详细信息
      class ModifyUpstreamResultInfo < TencentCloud::Common::AbstractModel
        # @param UpstreamId: 后端通道唯一ID
        # @type UpstreamId: String
        # @param UpstreamName: 后端通道名字
        # @type UpstreamName: String
        # @param UpstreamDescription: 后端通道描述
        # @type UpstreamDescription: String
        # @param Scheme: 后端协议，取值范围：HTTP, HTTPS
        # @type Scheme: String
        # @param Algorithm: 负载均衡算法，取值范围：ROUND_ROBIN
        # @type Algorithm: String
        # @param UniqVpcId: VPC唯一ID
        # @type UniqVpcId: String
        # @param Retries: 请求重试次数
        # @type Retries: Integer
        # @param Nodes: 后端节点
        # @type Nodes: Array
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param HealthChecker: 健康检查配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthChecker: :class:`Tencentcloud::Apigateway.v20180808.models.UpstreamHealthChecker`
        # @param UpstreamType: 后端的类型，取值范围：IP_PORT, K8S
        # @type UpstreamType: String
        # @param K8sServices: K8S容器服务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8sServices: Array
        # @param UpstreamHost: 网关转发给后端的Host请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHost: String

        attr_accessor :UpstreamId, :UpstreamName, :UpstreamDescription, :Scheme, :Algorithm, :UniqVpcId, :Retries, :Nodes, :CreatedTime, :HealthChecker, :UpstreamType, :K8sServices, :UpstreamHost

        def initialize(upstreamid=nil, upstreamname=nil, upstreamdescription=nil, scheme=nil, algorithm=nil, uniqvpcid=nil, retries=nil, nodes=nil, createdtime=nil, healthchecker=nil, upstreamtype=nil, k8sservices=nil, upstreamhost=nil)
          @UpstreamId = upstreamid
          @UpstreamName = upstreamname
          @UpstreamDescription = upstreamdescription
          @Scheme = scheme
          @Algorithm = algorithm
          @UniqVpcId = uniqvpcid
          @Retries = retries
          @Nodes = nodes
          @CreatedTime = createdtime
          @HealthChecker = healthchecker
          @UpstreamType = upstreamtype
          @K8sServices = k8sservices
          @UpstreamHost = upstreamhost
        end

        def deserialize(params)
          @UpstreamId = params['UpstreamId']
          @UpstreamName = params['UpstreamName']
          @UpstreamDescription = params['UpstreamDescription']
          @Scheme = params['Scheme']
          @Algorithm = params['Algorithm']
          @UniqVpcId = params['UniqVpcId']
          @Retries = params['Retries']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              upstreamnode_tmp = UpstreamNode.new
              upstreamnode_tmp.deserialize(i)
              @Nodes << upstreamnode_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
          unless params['HealthChecker'].nil?
            @HealthChecker = UpstreamHealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          @UpstreamType = params['UpstreamType']
          unless params['K8sServices'].nil?
            @K8sServices = []
            params['K8sServices'].each do |i|
              k8sservice_tmp = K8sService.new
              k8sservice_tmp.deserialize(i)
              @K8sServices << k8sservice_tmp
            end
          end
          @UpstreamHost = params['UpstreamHost']
        end
      end

      # ModifyUsagePlan请求参数结构体
      class ModifyUsagePlanRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 使用计划唯一 ID。
        # @type UsagePlanId: String
        # @param UsagePlanName: 修改后的用户自定义的使用计划名称。
        # @type UsagePlanName: String
        # @param UsagePlanDesc: 修改后的用户自定义的使用计划描述。
        # @type UsagePlanDesc: String
        # @param MaxRequestNum: 请求配额总数，取值范围为-1或者[1, 99999999]，默认为-1，表示不开启。
        # @type MaxRequestNum: Integer
        # @param MaxRequestNumPreSec: 每秒请求限制数，取值范围为-1或者[1, 2000]，默认-1，表示不开启。
        # @type MaxRequestNumPreSec: Integer

        attr_accessor :UsagePlanId, :UsagePlanName, :UsagePlanDesc, :MaxRequestNum, :MaxRequestNumPreSec

        def initialize(usageplanid=nil, usageplanname=nil, usageplandesc=nil, maxrequestnum=nil, maxrequestnumpresec=nil)
          @UsagePlanId = usageplanid
          @UsagePlanName = usageplanname
          @UsagePlanDesc = usageplandesc
          @MaxRequestNum = maxrequestnum
          @MaxRequestNumPreSec = maxrequestnumpresec
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @UsagePlanName = params['UsagePlanName']
          @UsagePlanDesc = params['UsagePlanDesc']
          @MaxRequestNum = params['MaxRequestNum']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
        end
      end

      # ModifyUsagePlan返回参数结构体
      class ModifyUsagePlanResponse < TencentCloud::Common::AbstractModel
        # @param Result: 使用计划详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.UsagePlanInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = UsagePlanInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 独享实例网络配置
      class NetworkConfig < TencentCloud::Common::AbstractModel
        # @param InternetMaxBandwidthOut: 最大出带宽
        # @type InternetMaxBandwidthOut: Integer
        # @param EnableInternetInbound: EnableInternetInbound信息
        # @type EnableInternetInbound: Boolean
        # @param EnableInternetOutbound: EnableInternetOutbound信息
        # @type EnableInternetOutbound: Boolean
        # @param InboundIpAddresses: InboundIpAddresses信息
        # @type InboundIpAddresses: Array
        # @param OutboundIpAddresses: OutboundIpAddresses信息
        # @type OutboundIpAddresses: Array

        attr_accessor :InternetMaxBandwidthOut, :EnableInternetInbound, :EnableInternetOutbound, :InboundIpAddresses, :OutboundIpAddresses

        def initialize(internetmaxbandwidthout=nil, enableinternetinbound=nil, enableinternetoutbound=nil, inboundipaddresses=nil, outboundipaddresses=nil)
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @EnableInternetInbound = enableinternetinbound
          @EnableInternetOutbound = enableinternetoutbound
          @InboundIpAddresses = inboundipaddresses
          @OutboundIpAddresses = outboundipaddresses
        end

        def deserialize(params)
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @EnableInternetInbound = params['EnableInternetInbound']
          @EnableInternetOutbound = params['EnableInternetOutbound']
          @InboundIpAddresses = params['InboundIpAddresses']
          @OutboundIpAddresses = params['OutboundIpAddresses']
        end
      end

      # Oauth授权配置信息
      class OauthConfig < TencentCloud::Common::AbstractModel
        # @param PublicKey: 公钥，用于验证用户token。
        # @type PublicKey: String
        # @param TokenLocation: token传递位置。
        # @type TokenLocation: String
        # @param LoginRedirectUrl: 重定向地址，用于引导用户登录操作。
        # @type LoginRedirectUrl: String

        attr_accessor :PublicKey, :TokenLocation, :LoginRedirectUrl

        def initialize(publickey=nil, tokenlocation=nil, loginredirecturl=nil)
          @PublicKey = publickey
          @TokenLocation = tokenlocation
          @LoginRedirectUrl = loginredirecturl
        end

        def deserialize(params)
          @PublicKey = params['PublicKey']
          @TokenLocation = params['TokenLocation']
          @LoginRedirectUrl = params['LoginRedirectUrl']
        end
      end

      # 独享实例配置参数
      class ParameterInfo < TencentCloud::Common::AbstractModel
        # @param Name: 名字
        # @type Name: String
        # @param Value: 当前值
        # @type Value: Integer
        # @param Default: 默认值
        # @type Default: Integer
        # @param Unit: 单位
        # @type Unit: String
        # @param Type: 类型, integer|string
        # @type Type: String
        # @param Minimum: 最小
        # @type Minimum: Integer
        # @param Maximum: 最大
        # @type Maximum: Integer
        # @param ModifedTime: 修改时间
        # @type ModifedTime: String
        # @param ValueString: 字符类型的值，当Type为string时才有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValueString: String
        # @param DefaultValueString: 字符类型的默认值，当Type为string时才有意义
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValueString: String
        # @param Range: 可调整范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Range: String

        attr_accessor :Name, :Value, :Default, :Unit, :Type, :Minimum, :Maximum, :ModifedTime, :ValueString, :DefaultValueString, :Range
        extend Gem::Deprecate
        deprecate :ModifedTime, :none, 2024, 1
        deprecate :ModifedTime=, :none, 2024, 1

        def initialize(name=nil, value=nil, default=nil, unit=nil, type=nil, minimum=nil, maximum=nil, modifedtime=nil, valuestring=nil, defaultvaluestring=nil, range=nil)
          @Name = name
          @Value = value
          @Default = default
          @Unit = unit
          @Type = type
          @Minimum = minimum
          @Maximum = maximum
          @ModifedTime = modifedtime
          @ValueString = valuestring
          @DefaultValueString = defaultvaluestring
          @Range = range
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Default = params['Default']
          @Unit = params['Unit']
          @Type = params['Type']
          @Minimum = params['Minimum']
          @Maximum = params['Maximum']
          @ModifedTime = params['ModifedTime']
          @ValueString = params['ValueString']
          @DefaultValueString = params['DefaultValueString']
          @Range = params['Range']
        end
      end

      # 自定义域名的路径映射。
      class PathMapping < TencentCloud::Common::AbstractModel
        # @param Path: 路径。
        # @type Path: String
        # @param Environment: 发布环境，可选值为“test”、 ”prepub“、”release“。
        # @type Environment: String

        attr_accessor :Path, :Environment

        def initialize(path=nil, environment=nil)
          @Path = path
          @Environment = environment
        end

        def deserialize(params)
          @Path = params['Path']
          @Environment = params['Environment']
        end
      end

      # API网关插件详情。
      class Plugin < TencentCloud::Common::AbstractModel
        # @param PluginId: 插件ID。
        # @type PluginId: String
        # @param PluginName: 插件名称。
        # @type PluginName: String
        # @param PluginType: 插件类型。
        # @type PluginType: String
        # @param PluginData: 插件定义语句。
        # @type PluginData: String
        # @param Description: 插件描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreatedTime: 插件创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type CreatedTime: String
        # @param ModifiedTime: 插件修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # @type ModifiedTime: String
        # @param AttachedApiTotalCount: 插件绑定的API总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachedApiTotalCount: Integer
        # @param AttachedApis: 插件绑定的API信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachedApis: Array

        attr_accessor :PluginId, :PluginName, :PluginType, :PluginData, :Description, :CreatedTime, :ModifiedTime, :AttachedApiTotalCount, :AttachedApis

        def initialize(pluginid=nil, pluginname=nil, plugintype=nil, plugindata=nil, description=nil, createdtime=nil, modifiedtime=nil, attachedapitotalcount=nil, attachedapis=nil)
          @PluginId = pluginid
          @PluginName = pluginname
          @PluginType = plugintype
          @PluginData = plugindata
          @Description = description
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @AttachedApiTotalCount = attachedapitotalcount
          @AttachedApis = attachedapis
        end

        def deserialize(params)
          @PluginId = params['PluginId']
          @PluginName = params['PluginName']
          @PluginType = params['PluginType']
          @PluginData = params['PluginData']
          @Description = params['Description']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @AttachedApiTotalCount = params['AttachedApiTotalCount']
          unless params['AttachedApis'].nil?
            @AttachedApis = []
            params['AttachedApis'].each do |i|
              attachedapiinfo_tmp = AttachedApiInfo.new
              attachedapiinfo_tmp.deserialize(i)
              @AttachedApis << attachedapiinfo_tmp
            end
          end
        end
      end

      # 插件列表详情。
      class PluginSummary < TencentCloud::Common::AbstractModel
        # @param TotalCount: 插件个数。
        # @type TotalCount: Integer
        # @param PluginSet: 插件详情。
        # @type PluginSet: Array

        attr_accessor :TotalCount, :PluginSet

        def initialize(totalcount=nil, pluginset=nil)
          @TotalCount = totalcount
          @PluginSet = pluginset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PluginSet'].nil?
            @PluginSet = []
            params['PluginSet'].each do |i|
              plugin_tmp = Plugin.new
              plugin_tmp.deserialize(i)
              @PluginSet << plugin_tmp
            end
          end
        end
      end

      # 发布服务返回
      class ReleaseService < TencentCloud::Common::AbstractModel
        # @param ReleaseDesc: 发布时的备注信息填写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseDesc: String
        # @param ReleaseVersion: 发布的版本id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseVersion: String

        attr_accessor :ReleaseDesc, :ReleaseVersion

        def initialize(releasedesc=nil, releaseversion=nil)
          @ReleaseDesc = releasedesc
          @ReleaseVersion = releaseversion
        end

        def deserialize(params)
          @ReleaseDesc = params['ReleaseDesc']
          @ReleaseVersion = params['ReleaseVersion']
        end
      end

      # ReleaseService请求参数结构体
      class ReleaseServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待发布服务的唯一 ID。
        # @type ServiceId: String
        # @param EnvironmentName: 待发布的环境名称，当前支持三个环境，test（测试环境）、prepub（预发布环境）和 release（发布环境）。
        # @type EnvironmentName: String
        # @param ReleaseDesc: 本次的发布描述。
        # @type ReleaseDesc: String
        # @param ApiIds: apiId列表，预留字段，默认全量api发布。
        # @type ApiIds: Array

        attr_accessor :ServiceId, :EnvironmentName, :ReleaseDesc, :ApiIds

        def initialize(serviceid=nil, environmentname=nil, releasedesc=nil, apiids=nil)
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @ReleaseDesc = releasedesc
          @ApiIds = apiids
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @ReleaseDesc = params['ReleaseDesc']
          @ApiIds = params['ApiIds']
        end
      end

      # ReleaseService返回参数结构体
      class ReleaseServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 发布信息。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ReleaseService`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ReleaseService.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 请求参数
      class ReqParameter < TencentCloud::Common::AbstractModel
        # @param Name: API 的前端参数名称。
        # @type Name: String
        # @param Position: API 的前端参数位置，如 header。目前支持 header、query、path。
        # @type Position: String
        # @param Type: API 的前端参数类型，如 String、int。
        # @type Type: String
        # @param DefaultValue: API 的前端参数默认值。
        # @type DefaultValue: String
        # @param Required: API 的前端参数是否必填，True：表示必填，False：表示可选。
        # @type Required: Boolean
        # @param Desc: API 的前端参数备注。
        # @type Desc: String

        attr_accessor :Name, :Position, :Type, :DefaultValue, :Required, :Desc

        def initialize(name=nil, position=nil, type=nil, defaultvalue=nil, required=nil, desc=nil)
          @Name = name
          @Position = position
          @Type = type
          @DefaultValue = defaultvalue
          @Required = required
          @Desc = desc
        end

        def deserialize(params)
          @Name = params['Name']
          @Position = params['Position']
          @Type = params['Type']
          @DefaultValue = params['DefaultValue']
          @Required = params['Required']
          @Desc = params['Desc']
        end
      end

      # 前端路径配置
      class RequestConfig < TencentCloud::Common::AbstractModel
        # @param Path: API 的路径，如 /path。
        # @type Path: String
        # @param Method: API 的请求方法，如 GET。
        # @type Method: String

        attr_accessor :Path, :Method

        def initialize(path=nil, method=nil)
          @Path = path
          @Method = method
        end

        def deserialize(params)
          @Path = params['Path']
          @Method = params['Method']
        end
      end

      # 请求参数
      class RequestParameter < TencentCloud::Common::AbstractModel
        # @param Name: 请求参数名称
        # @type Name: String
        # @param Desc: 描述
        # @type Desc: String
        # @param Position: 参数位置
        # @type Position: String
        # @param Type: 参数类型
        # @type Type: String
        # @param DefaultValue: 默认值
        # @type DefaultValue: String
        # @param Required: 是否必须
        # @type Required: Boolean

        attr_accessor :Name, :Desc, :Position, :Type, :DefaultValue, :Required

        def initialize(name=nil, desc=nil, position=nil, type=nil, defaultvalue=nil, required=nil)
          @Name = name
          @Desc = desc
          @Position = position
          @Type = type
          @DefaultValue = defaultvalue
          @Required = required
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @Position = params['Position']
          @Type = params['Type']
          @DefaultValue = params['DefaultValue']
          @Required = params['Required']
        end
      end

      # ResetAPIDocPassword请求参数结构体
      class ResetAPIDocPasswordRequest < TencentCloud::Common::AbstractModel
        # @param ApiDocId: API文档ID
        # @type ApiDocId: String

        attr_accessor :ApiDocId

        def initialize(apidocid=nil)
          @ApiDocId = apidocid
        end

        def deserialize(params)
          @ApiDocId = params['ApiDocId']
        end
      end

      # ResetAPIDocPassword返回参数结构体
      class ResetAPIDocPasswordResponse < TencentCloud::Common::AbstractModel
        # @param Result: API文档基本信息
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.APIDoc`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = APIDoc.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 错误码入参
      class ResponseErrorCodeReq < TencentCloud::Common::AbstractModel
        # @param Code: 自定义响应配置错误码。
        # @type Code: Integer
        # @param Msg: 自定义响应配置错误信息。
        # @type Msg: String
        # @param Desc: 自定义响应配置错误码备注。
        # @type Desc: String
        # @param ConvertedCode: 自定义错误码转换。
        # @type ConvertedCode: Integer
        # @param NeedConvert: 是否需要开启错误码转换。
        # @type NeedConvert: Boolean

        attr_accessor :Code, :Msg, :Desc, :ConvertedCode, :NeedConvert

        def initialize(code=nil, msg=nil, desc=nil, convertedcode=nil, needconvert=nil)
          @Code = code
          @Msg = msg
          @Desc = desc
          @ConvertedCode = convertedcode
          @NeedConvert = needconvert
        end

        def deserialize(params)
          @Code = params['Code']
          @Msg = params['Msg']
          @Desc = params['Desc']
          @ConvertedCode = params['ConvertedCode']
          @NeedConvert = params['NeedConvert']
        end
      end

      # 展示服务列表用
      class Service < TencentCloud::Common::AbstractModel
        # @param InnerHttpsPort: 内网访问https端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpsPort: Integer
        # @param ServiceDesc: 用户自定义的服务描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceDesc: String
        # @param Protocol: 服务的前端请求类型。如http、https 或者 http&https。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param ModifiedTime: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param NetTypes: 服务支持的网络类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetTypes: Array
        # @param ExclusiveSetName: 独占集群名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExclusiveSetName: String
        # @param ServiceId: 服务唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param IpVersion: IP版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IpVersion: String
        # @param AvailableEnvironments: 已经发布的环境列表。如test、prepub、release。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableEnvironments: Array
        # @param ServiceName: 用户自定义的服务名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param OuterSubDomain: 系统为该服务分配的外网域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OuterSubDomain: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param InnerHttpPort: 内网访问http端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerHttpPort: Integer
        # @param InnerSubDomain: 系统为该服务自动分配的内网域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerSubDomain: String
        # @param TradeIsolateStatus: 服务的计费状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TradeIsolateStatus: Integer
        # @param Tags: 服务绑定的标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceId: 独享实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param SetType: 集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetType: String
        # @param DeploymentType: 服务部署的集群类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeploymentType: String

        attr_accessor :InnerHttpsPort, :ServiceDesc, :Protocol, :ModifiedTime, :NetTypes, :ExclusiveSetName, :ServiceId, :IpVersion, :AvailableEnvironments, :ServiceName, :OuterSubDomain, :CreatedTime, :InnerHttpPort, :InnerSubDomain, :TradeIsolateStatus, :Tags, :InstanceId, :SetType, :DeploymentType

        def initialize(innerhttpsport=nil, servicedesc=nil, protocol=nil, modifiedtime=nil, nettypes=nil, exclusivesetname=nil, serviceid=nil, ipversion=nil, availableenvironments=nil, servicename=nil, outersubdomain=nil, createdtime=nil, innerhttpport=nil, innersubdomain=nil, tradeisolatestatus=nil, tags=nil, instanceid=nil, settype=nil, deploymenttype=nil)
          @InnerHttpsPort = innerhttpsport
          @ServiceDesc = servicedesc
          @Protocol = protocol
          @ModifiedTime = modifiedtime
          @NetTypes = nettypes
          @ExclusiveSetName = exclusivesetname
          @ServiceId = serviceid
          @IpVersion = ipversion
          @AvailableEnvironments = availableenvironments
          @ServiceName = servicename
          @OuterSubDomain = outersubdomain
          @CreatedTime = createdtime
          @InnerHttpPort = innerhttpport
          @InnerSubDomain = innersubdomain
          @TradeIsolateStatus = tradeisolatestatus
          @Tags = tags
          @InstanceId = instanceid
          @SetType = settype
          @DeploymentType = deploymenttype
        end

        def deserialize(params)
          @InnerHttpsPort = params['InnerHttpsPort']
          @ServiceDesc = params['ServiceDesc']
          @Protocol = params['Protocol']
          @ModifiedTime = params['ModifiedTime']
          @NetTypes = params['NetTypes']
          @ExclusiveSetName = params['ExclusiveSetName']
          @ServiceId = params['ServiceId']
          @IpVersion = params['IpVersion']
          @AvailableEnvironments = params['AvailableEnvironments']
          @ServiceName = params['ServiceName']
          @OuterSubDomain = params['OuterSubDomain']
          @CreatedTime = params['CreatedTime']
          @InnerHttpPort = params['InnerHttpPort']
          @InnerSubDomain = params['InnerSubDomain']
          @TradeIsolateStatus = params['TradeIsolateStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @SetType = params['SetType']
          @DeploymentType = params['DeploymentType']
        end
      end

      # ServiceConfig配置
      class ServiceConfig < TencentCloud::Common::AbstractModel
        # @param Product: 后端类型。启用vpc时生效，目前支持的类型为clb, cvm和upstream
        # @type Product: String
        # @param UniqVpcId: vpc 的唯一ID。
        # @type UniqVpcId: String
        # @param Url: API 的后端服务url。如果ServiceType是HTTP，则此参数必传。
        # @type Url: String
        # @param Path: API 的后端服务路径，如 /path。如果 ServiceType 是 HTTP，则此参数必传。前后端路径可不同。
        # @type Path: String
        # @param Method: API的后端服务请求方法，如 GET。如果 ServiceType 是 HTTP，则此参数必传。前后端方法可不同。
        # @type Method: String
        # @param UpstreamId: 当绑定vpc通道才需要
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamId: String
        # @param CosConfig: API后端COS配置。如果 ServiceType 是 COS，则此参数必传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosConfig: :class:`Tencentcloud::Apigateway.v20180808.models.CosConfig`

        attr_accessor :Product, :UniqVpcId, :Url, :Path, :Method, :UpstreamId, :CosConfig

        def initialize(product=nil, uniqvpcid=nil, url=nil, path=nil, method=nil, upstreamid=nil, cosconfig=nil)
          @Product = product
          @UniqVpcId = uniqvpcid
          @Url = url
          @Path = path
          @Method = method
          @UpstreamId = upstreamid
          @CosConfig = cosconfig
        end

        def deserialize(params)
          @Product = params['Product']
          @UniqVpcId = params['UniqVpcId']
          @Url = params['Url']
          @Path = params['Path']
          @Method = params['Method']
          @UpstreamId = params['UpstreamId']
          unless params['CosConfig'].nil?
            @CosConfig = CosConfig.new
            @CosConfig.deserialize(params['CosConfig'])
          end
        end
      end

      # 服务绑定环境详情
      class ServiceEnvironmentSet < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务绑定环境总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EnvironmentList: 服务绑定环境列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentList: Array

        attr_accessor :TotalCount, :EnvironmentList

        def initialize(totalcount=nil, environmentlist=nil)
          @TotalCount = totalcount
          @EnvironmentList = environmentlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EnvironmentList'].nil?
            @EnvironmentList = []
            params['EnvironmentList'].each do |i|
              environment_tmp = Environment.new
              environment_tmp.deserialize(i)
              @EnvironmentList << environment_tmp
            end
          end
        end
      end

      # 服务环境策略
      class ServiceEnvironmentStrategy < TencentCloud::Common::AbstractModel
        # @param EnvironmentName: 环境名。
        # @type EnvironmentName: String
        # @param Url: 访问服务对应环境的url。
        # @type Url: String
        # @param Status: 发布状态。
        # @type Status: Integer
        # @param VersionName: 发布的版本号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param Strategy: 限流值。
        # @type Strategy: Integer
        # @param MaxStrategy: 最大限流值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxStrategy: Integer

        attr_accessor :EnvironmentName, :Url, :Status, :VersionName, :Strategy, :MaxStrategy

        def initialize(environmentname=nil, url=nil, status=nil, versionname=nil, strategy=nil, maxstrategy=nil)
          @EnvironmentName = environmentname
          @Url = url
          @Status = status
          @VersionName = versionname
          @Strategy = strategy
          @MaxStrategy = maxstrategy
        end

        def deserialize(params)
          @EnvironmentName = params['EnvironmentName']
          @Url = params['Url']
          @Status = params['Status']
          @VersionName = params['VersionName']
          @Strategy = params['Strategy']
          @MaxStrategy = params['MaxStrategy']
        end
      end

      # 环境绑定策略列表
      class ServiceEnvironmentStrategyStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 限流策略数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EnvironmentList: 限流策略列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentList: Array

        attr_accessor :TotalCount, :EnvironmentList

        def initialize(totalcount=nil, environmentlist=nil)
          @TotalCount = totalcount
          @EnvironmentList = environmentlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EnvironmentList'].nil?
            @EnvironmentList = []
            params['EnvironmentList'].each do |i|
              serviceenvironmentstrategy_tmp = ServiceEnvironmentStrategy.new
              serviceenvironmentstrategy_tmp.deserialize(i)
              @EnvironmentList << serviceenvironmentstrategy_tmp
            end
          end
        end
      end

      # ServiceParameter
      class ServiceParameter < TencentCloud::Common::AbstractModel
        # @param Name: API的后端服务参数名称。只有ServiceType是HTTP才会用到此参数。前后端参数名称可不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Position: API 的后端服务参数位置，如 head。只有 ServiceType 是 HTTP 才会用到此参数。前后端参数位置可配置不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: String
        # @param RelevantRequestParameterPosition: API 的后端服务参数对应的前端参数位置，如 head。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterPosition: String
        # @param RelevantRequestParameterName: API 的后端服务参数对应的前端参数名称。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterName: String
        # @param DefaultValue: API 的后端服务参数默认值。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultValue: String
        # @param RelevantRequestParameterDesc: API 的后端服务参数备注。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterDesc: String
        # @param RelevantRequestParameterType: API 的后端服务参数类型。只有 ServiceType 是 HTTP 才会用到此参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevantRequestParameterType: String

        attr_accessor :Name, :Position, :RelevantRequestParameterPosition, :RelevantRequestParameterName, :DefaultValue, :RelevantRequestParameterDesc, :RelevantRequestParameterType

        def initialize(name=nil, position=nil, relevantrequestparameterposition=nil, relevantrequestparametername=nil, defaultvalue=nil, relevantrequestparameterdesc=nil, relevantrequestparametertype=nil)
          @Name = name
          @Position = position
          @RelevantRequestParameterPosition = relevantrequestparameterposition
          @RelevantRequestParameterName = relevantrequestparametername
          @DefaultValue = defaultvalue
          @RelevantRequestParameterDesc = relevantrequestparameterdesc
          @RelevantRequestParameterType = relevantrequestparametertype
        end

        def deserialize(params)
          @Name = params['Name']
          @Position = params['Position']
          @RelevantRequestParameterPosition = params['RelevantRequestParameterPosition']
          @RelevantRequestParameterName = params['RelevantRequestParameterName']
          @DefaultValue = params['DefaultValue']
          @RelevantRequestParameterDesc = params['RelevantRequestParameterDesc']
          @RelevantRequestParameterType = params['RelevantRequestParameterType']
        end
      end

      # 服务发布历史
      class ServiceReleaseHistory < TencentCloud::Common::AbstractModel
        # @param TotalCount: 发布版本总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param VersionList: 历史版本列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionList: Array

        attr_accessor :TotalCount, :VersionList

        def initialize(totalcount=nil, versionlist=nil)
          @TotalCount = totalcount
          @VersionList = versionlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VersionList'].nil?
            @VersionList = []
            params['VersionList'].each do |i|
              servicereleasehistoryinfo_tmp = ServiceReleaseHistoryInfo.new
              servicereleasehistoryinfo_tmp.deserialize(i)
              @VersionList << servicereleasehistoryinfo_tmp
            end
          end
        end
      end

      # 服务发布列表详情
      class ServiceReleaseHistoryInfo < TencentCloud::Common::AbstractModel
        # @param VersionName: 版本号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionName: String
        # @param VersionDesc: 版本描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionDesc: String
        # @param ReleaseTime: 版本发布时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseTime: String

        attr_accessor :VersionName, :VersionDesc, :ReleaseTime

        def initialize(versionname=nil, versiondesc=nil, releasetime=nil)
          @VersionName = versionname
          @VersionDesc = versiondesc
          @ReleaseTime = releasetime
        end

        def deserialize(params)
          @VersionName = params['VersionName']
          @VersionDesc = params['VersionDesc']
          @ReleaseTime = params['ReleaseTime']
        end
      end

      # 服务发布版本
      class ServiceReleaseVersion < TencentCloud::Common::AbstractModel
        # @param TotalCount: 发布版本总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param VersionList: 发布版本列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionList: Array

        attr_accessor :TotalCount, :VersionList

        def initialize(totalcount=nil, versionlist=nil)
          @TotalCount = totalcount
          @VersionList = versionlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VersionList'].nil?
            @VersionList = []
            params['VersionList'].each do |i|
              describeservicereleaseversionresultversionlistinfo_tmp = DescribeServiceReleaseVersionResultVersionListInfo.new
              describeservicereleaseversionresultversionlistinfo_tmp.deserialize(i)
              @VersionList << describeservicereleaseversionresultversionlistinfo_tmp
            end
          end
        end
      end

      # 服务自定义域名路径映射
      class ServiceSubDomainMappings < TencentCloud::Common::AbstractModel
        # @param IsDefaultMapping: 是否使用默认路径映射，为 True 表示使用默认路径映射；为 False 的话，表示使用自定义路径映射，此时 PathMappingSet 不为空。
        # @type IsDefaultMapping: Boolean
        # @param PathMappingSet: 自定义路径映射列表。
        # @type PathMappingSet: Array

        attr_accessor :IsDefaultMapping, :PathMappingSet

        def initialize(isdefaultmapping=nil, pathmappingset=nil)
          @IsDefaultMapping = isdefaultmapping
          @PathMappingSet = pathmappingset
        end

        def deserialize(params)
          @IsDefaultMapping = params['IsDefaultMapping']
          unless params['PathMappingSet'].nil?
            @PathMappingSet = []
            params['PathMappingSet'].each do |i|
              pathmapping_tmp = PathMapping.new
              pathmapping_tmp.deserialize(i)
              @PathMappingSet << pathmapping_tmp
            end
          end
        end
      end

      # 服务绑定使用计划列表
      class ServiceUsagePlanSet < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务上绑定的使用计划总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ServiceUsagePlanList: 服务上绑定的使用计划列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceUsagePlanList: Array

        attr_accessor :TotalCount, :ServiceUsagePlanList

        def initialize(totalcount=nil, serviceusageplanlist=nil)
          @TotalCount = totalcount
          @ServiceUsagePlanList = serviceusageplanlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceUsagePlanList'].nil?
            @ServiceUsagePlanList = []
            params['ServiceUsagePlanList'].each do |i|
              apiusageplan_tmp = ApiUsagePlan.new
              apiusageplan_tmp.deserialize(i)
              @ServiceUsagePlanList << apiusageplan_tmp
            end
          end
        end
      end

      # 服务列表展示
      class ServicesStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 服务列表总数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ServiceSet: 服务列表详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceSet: Array

        attr_accessor :TotalCount, :ServiceSet

        def initialize(totalcount=nil, serviceset=nil)
          @TotalCount = totalcount
          @ServiceSet = serviceset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ServiceSet'].nil?
            @ServiceSet = []
            params['ServiceSet'].each do |i|
              service_tmp = Service.new
              service_tmp.deserialize(i)
              @ServiceSet << service_tmp
            end
          end
        end
      end

      # API绑定的标签信息。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签的 key。
        # @type Key: String
        # @param Value: 便签的 value。
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

      # tsf serverless入参
      class TargetServicesReq < TencentCloud::Common::AbstractModel
        # @param VmIp: vm ip
        # @type VmIp: String
        # @param VpcId: vpc id
        # @type VpcId: String
        # @param VmPort: vm port
        # @type VmPort: Integer
        # @param HostIp: cvm所在宿主机ip
        # @type HostIp: String
        # @param DockerIp: docker ip
        # @type DockerIp: String

        attr_accessor :VmIp, :VpcId, :VmPort, :HostIp, :DockerIp

        def initialize(vmip=nil, vpcid=nil, vmport=nil, hostip=nil, dockerip=nil)
          @VmIp = vmip
          @VpcId = vpcid
          @VmPort = vmport
          @HostIp = hostip
          @DockerIp = dockerip
        end

        def deserialize(params)
          @VmIp = params['VmIp']
          @VpcId = params['VpcId']
          @VmPort = params['VmPort']
          @HostIp = params['HostIp']
          @DockerIp = params['DockerIp']
        end
      end

      # TsfLoadBalanceConf 出参使用
      class TsfLoadBalanceConfResp < TencentCloud::Common::AbstractModel
        # @param IsLoadBalance: 是否开启负载均衡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLoadBalance: Boolean
        # @param Method: 负载均衡方式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param SessionStickRequired: 是否开启会话保持。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionStickRequired: Boolean
        # @param SessionStickTimeout: 会话保持超时时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionStickTimeout: Integer

        attr_accessor :IsLoadBalance, :Method, :SessionStickRequired, :SessionStickTimeout

        def initialize(isloadbalance=nil, method=nil, sessionstickrequired=nil, sessionsticktimeout=nil)
          @IsLoadBalance = isloadbalance
          @Method = method
          @SessionStickRequired = sessionstickrequired
          @SessionStickTimeout = sessionsticktimeout
        end

        def deserialize(params)
          @IsLoadBalance = params['IsLoadBalance']
          @Method = params['Method']
          @SessionStickRequired = params['SessionStickRequired']
          @SessionStickTimeout = params['SessionStickTimeout']
        end
      end

      # UnBindEnvironment请求参数结构体
      class UnBindEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param BindType: 绑定类型，取值为 API、SERVICE，默认值为 SERVICE。
        # @type BindType: String
        # @param UsagePlanIds: 待绑定的使用计划唯一 ID 列表。
        # @type UsagePlanIds: Array
        # @param Environment: 待解绑的服务环境。
        # @type Environment: String
        # @param ServiceId: 待解绑的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiIds: API 唯一 ID 数组，当 BindType=API 时，需要传入此参数。
        # @type ApiIds: Array

        attr_accessor :BindType, :UsagePlanIds, :Environment, :ServiceId, :ApiIds

        def initialize(bindtype=nil, usageplanids=nil, environment=nil, serviceid=nil, apiids=nil)
          @BindType = bindtype
          @UsagePlanIds = usageplanids
          @Environment = environment
          @ServiceId = serviceid
          @ApiIds = apiids
        end

        def deserialize(params)
          @BindType = params['BindType']
          @UsagePlanIds = params['UsagePlanIds']
          @Environment = params['Environment']
          @ServiceId = params['ServiceId']
          @ApiIds = params['ApiIds']
        end
      end

      # UnBindEnvironment返回参数结构体
      class UnBindEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解绑操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UnBindIPStrategy请求参数结构体
      class UnBindIPStrategyRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待解绑的服务唯一ID。
        # @type ServiceId: String
        # @param StrategyId: 待解绑的IP策略唯一ID。
        # @type StrategyId: String
        # @param EnvironmentName: 待解绑的环境。
        # @type EnvironmentName: String
        # @param UnBindApiIds: 待解绑的 API 列表。
        # @type UnBindApiIds: Array

        attr_accessor :ServiceId, :StrategyId, :EnvironmentName, :UnBindApiIds

        def initialize(serviceid=nil, strategyid=nil, environmentname=nil, unbindapiids=nil)
          @ServiceId = serviceid
          @StrategyId = strategyid
          @EnvironmentName = environmentname
          @UnBindApiIds = unbindapiids
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @StrategyId = params['StrategyId']
          @EnvironmentName = params['EnvironmentName']
          @UnBindApiIds = params['UnBindApiIds']
        end
      end

      # UnBindIPStrategy返回参数结构体
      class UnBindIPStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解绑操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UnBindSecretIds请求参数结构体
      class UnBindSecretIdsRequest < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 待解绑的使用计划唯一 ID。
        # @type UsagePlanId: String
        # @param AccessKeyIds: 待解绑的密钥 ID 数组。
        # @type AccessKeyIds: Array

        attr_accessor :UsagePlanId, :AccessKeyIds

        def initialize(usageplanid=nil, accesskeyids=nil)
          @UsagePlanId = usageplanid
          @AccessKeyIds = accesskeyids
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @AccessKeyIds = params['AccessKeyIds']
        end
      end

      # UnBindSecretIds返回参数结构体
      class UnBindSecretIdsResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解绑操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UnBindSubDomain请求参数结构体
      class UnBindSubDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 服务唯一 ID。
        # @type ServiceId: String
        # @param SubDomain: 待解绑的自定义的域名。
        # @type SubDomain: String

        attr_accessor :ServiceId, :SubDomain

        def initialize(serviceid=nil, subdomain=nil)
          @ServiceId = serviceid
          @SubDomain = subdomain
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @SubDomain = params['SubDomain']
        end
      end

      # UnBindSubDomain返回参数结构体
      class UnBindSubDomainResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解绑自定义域名操作是否成功。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UnReleaseService请求参数结构体
      class UnReleaseServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待下线服务的唯一 ID。
        # @type ServiceId: String
        # @param EnvironmentName: 待下线的环境名称，当前支持三个环境，test（测试环境）、prepub（预发布环境）和 release（发布环境）。
        # @type EnvironmentName: String
        # @param ApiIds: 保留字段，待下线的API列表。
        # @type ApiIds: Array

        attr_accessor :ServiceId, :EnvironmentName, :ApiIds

        def initialize(serviceid=nil, environmentname=nil, apiids=nil)
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @ApiIds = apiids
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @ApiIds = params['ApiIds']
        end
      end

      # UnReleaseService返回参数结构体
      class UnReleaseServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 下线操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UnbindApiApp请求参数结构体
      class UnbindApiAppRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 待绑定的应用唯一 ID 。
        # @type ApiAppId: String
        # @param Environment: 待绑定的环境。
        # @type Environment: String
        # @param ServiceId: 待绑定的服务唯一 ID。
        # @type ServiceId: String
        # @param ApiId: 待绑定的API唯一ID。
        # @type ApiId: String

        attr_accessor :ApiAppId, :Environment, :ServiceId, :ApiId

        def initialize(apiappid=nil, environment=nil, serviceid=nil, apiid=nil)
          @ApiAppId = apiappid
          @Environment = environment
          @ServiceId = serviceid
          @ApiId = apiid
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
          @Environment = params['Environment']
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
        end
      end

      # UnbindApiApp返回参数结构体
      class UnbindApiAppResponse < TencentCloud::Common::AbstractModel
        # @param Result: 解除绑定操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UpdateApiAppKey请求参数结构体
      class UpdateApiAppKeyRequest < TencentCloud::Common::AbstractModel
        # @param ApiAppId: 应用唯一 ID。
        # @type ApiAppId: String
        # @param ApiAppKey: 应用的Key。
        # @type ApiAppKey: String
        # @param ApiAppSecret: 应用的Secret。
        # @type ApiAppSecret: String

        attr_accessor :ApiAppId, :ApiAppKey, :ApiAppSecret

        def initialize(apiappid=nil, apiappkey=nil, apiappsecret=nil)
          @ApiAppId = apiappid
          @ApiAppKey = apiappkey
          @ApiAppSecret = apiappsecret
        end

        def deserialize(params)
          @ApiAppId = params['ApiAppId']
          @ApiAppKey = params['ApiAppKey']
          @ApiAppSecret = params['ApiAppSecret']
        end
      end

      # UpdateApiAppKey返回参数结构体
      class UpdateApiAppKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更新操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # UpdateApiKey请求参数结构体
      class UpdateApiKeyRequest < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 待更换的密钥 ID。
        # @type AccessKeyId: String
        # @param AccessKeySecret: 待更换的密钥 Key，更新自定义密钥时，该字段为必传。长度10 - 50字符，包括字母、数字、英文下划线。
        # @type AccessKeySecret: String

        attr_accessor :AccessKeyId, :AccessKeySecret

        def initialize(accesskeyid=nil, accesskeysecret=nil)
          @AccessKeyId = accesskeyid
          @AccessKeySecret = accesskeysecret
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @AccessKeySecret = params['AccessKeySecret']
        end
      end

      # UpdateApiKey返回参数结构体
      class UpdateApiKeyResponse < TencentCloud::Common::AbstractModel
        # @param Result: 更换后的密钥详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: :class:`Tencentcloud::Apigateway.v20180808.models.ApiKey`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = ApiKey.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateService请求参数结构体
      class UpdateServiceRequest < TencentCloud::Common::AbstractModel
        # @param ServiceId: 待切换服务的唯一 Id。
        # @type ServiceId: String
        # @param EnvironmentName: 待切换的环境名称，当前支持三个环境，test（测试环境）、prepub（预发布环境）和 release（发布环境）。
        # @type EnvironmentName: String
        # @param VersionName: 切换的版本号。
        # @type VersionName: String
        # @param UpdateDesc: 本次的切换描述。
        # @type UpdateDesc: String

        attr_accessor :ServiceId, :EnvironmentName, :VersionName, :UpdateDesc

        def initialize(serviceid=nil, environmentname=nil, versionname=nil, updatedesc=nil)
          @ServiceId = serviceid
          @EnvironmentName = environmentname
          @VersionName = versionname
          @UpdateDesc = updatedesc
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @EnvironmentName = params['EnvironmentName']
          @VersionName = params['VersionName']
          @UpdateDesc = params['UpdateDesc']
        end
      end

      # UpdateService返回参数结构体
      class UpdateServiceResponse < TencentCloud::Common::AbstractModel
        # @param Result: 切换版本操作是否成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 后端通道健康检查参数配置
      class UpstreamHealthChecker < TencentCloud::Common::AbstractModel
        # @param EnableActiveCheck: 标识是否开启主动健康检查。
        # @type EnableActiveCheck: Boolean
        # @param EnablePassiveCheck: 标识是否开启被动健康检查。
        # @type EnablePassiveCheck: Boolean
        # @param HealthyHttpStatus: 健康检查时，判断为成功请求的 HTTP 状态码。
        # @type HealthyHttpStatus: String
        # @param UnhealthyHttpStatus: 健康检查时，判断为失败请求的 HTTP 状态码。
        # @type UnhealthyHttpStatus: String
        # @param TcpFailureThreshold: TCP连续错误阈值。0 表示禁用 TCP 检查。取值范围：[0, 254]。
        # @type TcpFailureThreshold: Integer
        # @param TimeoutThreshold: 连续超时阈值。0 表示禁用超时检查。取值范围：[0, 254]。
        # @type TimeoutThreshold: Integer
        # @param HttpFailureThreshold: HTTP连续错误阈值。0 表示禁用HTTP检查。取值范围：[0, 254]。
        # @type HttpFailureThreshold: Integer
        # @param ActiveCheckHttpPath: 主动健康检查时探测请求的路径。默认为"/"。
        # @type ActiveCheckHttpPath: String
        # @param ActiveCheckTimeout: 主动健康检查的探测请求超时，单位秒。默认为5秒。
        # @type ActiveCheckTimeout: Integer
        # @param ActiveCheckInterval: 主动健康检查的时间间隔，默认5秒。
        # @type ActiveCheckInterval: Integer
        # @param ActiveRequestHeader: 主动健康检查时探测请求的的请求头。
        # @type ActiveRequestHeader: Array
        # @param UnhealthyTimeout: 异常节点的状态自动恢复时间，单位秒。当只开启被动检查的话，必须设置为 > 0 的值，否则被动异常节点将无法恢复。默认30秒。
        # @type UnhealthyTimeout: Integer

        attr_accessor :EnableActiveCheck, :EnablePassiveCheck, :HealthyHttpStatus, :UnhealthyHttpStatus, :TcpFailureThreshold, :TimeoutThreshold, :HttpFailureThreshold, :ActiveCheckHttpPath, :ActiveCheckTimeout, :ActiveCheckInterval, :ActiveRequestHeader, :UnhealthyTimeout

        def initialize(enableactivecheck=nil, enablepassivecheck=nil, healthyhttpstatus=nil, unhealthyhttpstatus=nil, tcpfailurethreshold=nil, timeoutthreshold=nil, httpfailurethreshold=nil, activecheckhttppath=nil, activechecktimeout=nil, activecheckinterval=nil, activerequestheader=nil, unhealthytimeout=nil)
          @EnableActiveCheck = enableactivecheck
          @EnablePassiveCheck = enablepassivecheck
          @HealthyHttpStatus = healthyhttpstatus
          @UnhealthyHttpStatus = unhealthyhttpstatus
          @TcpFailureThreshold = tcpfailurethreshold
          @TimeoutThreshold = timeoutthreshold
          @HttpFailureThreshold = httpfailurethreshold
          @ActiveCheckHttpPath = activecheckhttppath
          @ActiveCheckTimeout = activechecktimeout
          @ActiveCheckInterval = activecheckinterval
          @ActiveRequestHeader = activerequestheader
          @UnhealthyTimeout = unhealthytimeout
        end

        def deserialize(params)
          @EnableActiveCheck = params['EnableActiveCheck']
          @EnablePassiveCheck = params['EnablePassiveCheck']
          @HealthyHttpStatus = params['HealthyHttpStatus']
          @UnhealthyHttpStatus = params['UnhealthyHttpStatus']
          @TcpFailureThreshold = params['TcpFailureThreshold']
          @TimeoutThreshold = params['TimeoutThreshold']
          @HttpFailureThreshold = params['HttpFailureThreshold']
          @ActiveCheckHttpPath = params['ActiveCheckHttpPath']
          @ActiveCheckTimeout = params['ActiveCheckTimeout']
          @ActiveCheckInterval = params['ActiveCheckInterval']
          unless params['ActiveRequestHeader'].nil?
            @ActiveRequestHeader = []
            params['ActiveRequestHeader'].each do |i|
              upstreamhealthcheckerreqheaders_tmp = UpstreamHealthCheckerReqHeaders.new
              upstreamhealthcheckerreqheaders_tmp.deserialize(i)
              @ActiveRequestHeader << upstreamhealthcheckerreqheaders_tmp
            end
          end
          @UnhealthyTimeout = params['UnhealthyTimeout']
        end
      end

      # 后端通道主动健康检查的请求头配置
      class UpstreamHealthCheckerReqHeaders < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # 后端通道详细信息
      class UpstreamInfo < TencentCloud::Common::AbstractModel
        # @param UpstreamId: 后端通道唯一ID
        # @type UpstreamId: String
        # @param UpstreamName: 后端通道名字
        # @type UpstreamName: String
        # @param UpstreamDescription: 后端通道描述
        # @type UpstreamDescription: String
        # @param Scheme: 后端协议，取值范围：HTTP, HTTPS
        # @type Scheme: String
        # @param Algorithm: 负载均衡算法，取值范围：ROUND_ROBIN
        # @type Algorithm: String
        # @param UniqVpcId: VPC唯一ID
        # @type UniqVpcId: String
        # @param Retries: 请求重试次数
        # @type Retries: Integer
        # @param Nodes: 后端节点
        # @type Nodes: Array
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param HealthChecker: 健康检查配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthChecker: :class:`Tencentcloud::Apigateway.v20180808.models.UpstreamHealthChecker`
        # @param UpstreamType: 后端的类型，取值范围：IP_PORT, K8S
        # @type UpstreamType: String
        # @param K8sServices: K8S容器服务配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type K8sServices: Array
        # @param UpstreamHost: 网关转发给后端的Host请求头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHost: String

        attr_accessor :UpstreamId, :UpstreamName, :UpstreamDescription, :Scheme, :Algorithm, :UniqVpcId, :Retries, :Nodes, :CreatedTime, :Tags, :HealthChecker, :UpstreamType, :K8sServices, :UpstreamHost

        def initialize(upstreamid=nil, upstreamname=nil, upstreamdescription=nil, scheme=nil, algorithm=nil, uniqvpcid=nil, retries=nil, nodes=nil, createdtime=nil, tags=nil, healthchecker=nil, upstreamtype=nil, k8sservices=nil, upstreamhost=nil)
          @UpstreamId = upstreamid
          @UpstreamName = upstreamname
          @UpstreamDescription = upstreamdescription
          @Scheme = scheme
          @Algorithm = algorithm
          @UniqVpcId = uniqvpcid
          @Retries = retries
          @Nodes = nodes
          @CreatedTime = createdtime
          @Tags = tags
          @HealthChecker = healthchecker
          @UpstreamType = upstreamtype
          @K8sServices = k8sservices
          @UpstreamHost = upstreamhost
        end

        def deserialize(params)
          @UpstreamId = params['UpstreamId']
          @UpstreamName = params['UpstreamName']
          @UpstreamDescription = params['UpstreamDescription']
          @Scheme = params['Scheme']
          @Algorithm = params['Algorithm']
          @UniqVpcId = params['UniqVpcId']
          @Retries = params['Retries']
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              upstreamnode_tmp = UpstreamNode.new
              upstreamnode_tmp.deserialize(i)
              @Nodes << upstreamnode_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['HealthChecker'].nil?
            @HealthChecker = UpstreamHealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          @UpstreamType = params['UpstreamType']
          unless params['K8sServices'].nil?
            @K8sServices = []
            params['K8sServices'].each do |i|
              k8sservice_tmp = K8sService.new
              k8sservice_tmp.deserialize(i)
              @K8sServices << k8sservice_tmp
            end
          end
          @UpstreamHost = params['UpstreamHost']
        end
      end

      # 后端通道后端节点元数据
      class UpstreamNode < TencentCloud::Common::AbstractModel
        # @param Host: IP或域名
        # @type Host: String
        # @param Port: 端口[0, 65535]
        # @type Port: Integer
        # @param Weight: 权重[0, 100], 0为禁用
        # @type Weight: Integer
        # @param VmInstanceId: CVM实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VmInstanceId: String
        # @param Tags: 染色标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Healthy: 节点健康状态，创建、编辑时不需要传该参数。OFF：关闭，HEALTHY：健康，UNHEALTHY：异常，NO_DATA：数据未上报。目前只支持VPC通道。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Healthy: String
        # @param ServiceName: K8S容器服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String
        # @param NameSpace: K8S命名空间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameSpace: String
        # @param ClusterId: TKE集群的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param Source: Node的来源，取值范围：K8S
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param UniqueServiceName: API网关内部记录唯一的服务名字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqueServiceName: String

        attr_accessor :Host, :Port, :Weight, :VmInstanceId, :Tags, :Healthy, :ServiceName, :NameSpace, :ClusterId, :Source, :UniqueServiceName

        def initialize(host=nil, port=nil, weight=nil, vminstanceid=nil, tags=nil, healthy=nil, servicename=nil, namespace=nil, clusterid=nil, source=nil, uniqueservicename=nil)
          @Host = host
          @Port = port
          @Weight = weight
          @VmInstanceId = vminstanceid
          @Tags = tags
          @Healthy = healthy
          @ServiceName = servicename
          @NameSpace = namespace
          @ClusterId = clusterid
          @Source = source
          @UniqueServiceName = uniqueservicename
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @Weight = params['Weight']
          @VmInstanceId = params['VmInstanceId']
          @Tags = params['Tags']
          @Healthy = params['Healthy']
          @ServiceName = params['ServiceName']
          @NameSpace = params['NameSpace']
          @ClusterId = params['ClusterId']
          @Source = params['Source']
          @UniqueServiceName = params['UniqueServiceName']
        end
      end

      # usagePlan详情
      class UsagePlan < TencentCloud::Common::AbstractModel
        # @param Environment: 环境名称。
        # @type Environment: String
        # @param UsagePlanId: 使用计划唯一ID。
        # @type UsagePlanId: String
        # @param UsagePlanName: 使用计划名称。
        # @type UsagePlanName: String
        # @param UsagePlanDesc: 使用计划描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanDesc: String
        # @param MaxRequestNumPreSec: 使用计划qps，-1表示没有限制。
        # @type MaxRequestNumPreSec: Integer
        # @param CreatedTime: 使用计划时间。
        # @type CreatedTime: String
        # @param ModifiedTime: 使用计划修改时间。
        # @type ModifiedTime: String

        attr_accessor :Environment, :UsagePlanId, :UsagePlanName, :UsagePlanDesc, :MaxRequestNumPreSec, :CreatedTime, :ModifiedTime

        def initialize(environment=nil, usageplanid=nil, usageplanname=nil, usageplandesc=nil, maxrequestnumpresec=nil, createdtime=nil, modifiedtime=nil)
          @Environment = environment
          @UsagePlanId = usageplanid
          @UsagePlanName = usageplanname
          @UsagePlanDesc = usageplandesc
          @MaxRequestNumPreSec = maxrequestnumpresec
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
        end

        def deserialize(params)
          @Environment = params['Environment']
          @UsagePlanId = params['UsagePlanId']
          @UsagePlanName = params['UsagePlanName']
          @UsagePlanDesc = params['UsagePlanDesc']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
        end
      end

      # 使用计划绑定环境信息
      class UsagePlanBindEnvironment < TencentCloud::Common::AbstractModel
        # @param EnvironmentName: 环境名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentName: String
        # @param ServiceId: 服务唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String

        attr_accessor :EnvironmentName, :ServiceId

        def initialize(environmentname=nil, serviceid=nil)
          @EnvironmentName = environmentname
          @ServiceId = serviceid
        end

        def deserialize(params)
          @EnvironmentName = params['EnvironmentName']
          @ServiceId = params['ServiceId']
        end
      end

      # 使用计划绑定密钥
      class UsagePlanBindSecret < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 密钥ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKeyId: String
        # @param SecretName: 密钥名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretName: String
        # @param Status: 密钥状态，0表示已禁用，1表示启用中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :AccessKeyId, :SecretName, :Status

        def initialize(accesskeyid=nil, secretname=nil, status=nil)
          @AccessKeyId = accesskeyid
          @SecretName = secretname
          @Status = status
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @SecretName = params['SecretName']
          @Status = params['Status']
        end
      end

      # 使用计划绑定密钥列表
      class UsagePlanBindSecretStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 使用计划绑定密钥的数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param AccessKeyList: 密钥详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessKeyList: Array

        attr_accessor :TotalCount, :AccessKeyList

        def initialize(totalcount=nil, accesskeylist=nil)
          @TotalCount = totalcount
          @AccessKeyList = accesskeylist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccessKeyList'].nil?
            @AccessKeyList = []
            params['AccessKeyList'].each do |i|
              usageplanbindsecret_tmp = UsagePlanBindSecret.new
              usageplanbindsecret_tmp.deserialize(i)
              @AccessKeyList << usageplanbindsecret_tmp
            end
          end
        end
      end

      # 使用计划绑定环境详情。
      class UsagePlanEnvironment < TencentCloud::Common::AbstractModel
        # @param ServiceId: 绑定的服务唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceId: String
        # @param ApiId: API 的唯一ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiId: String
        # @param ApiName: API 的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ApiName: String
        # @param Path: API 的路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param Method: API 的方法。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Method: String
        # @param Environment: 已经绑定的环境名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environment: String
        # @param InUseRequestNum: 已经使用的配额。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InUseRequestNum: Integer
        # @param MaxRequestNum: 最大请求量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNum: Integer
        # @param MaxRequestNumPreSec: 每秒最大请求次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNumPreSec: Integer
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param ServiceName: 服务名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServiceName: String

        attr_accessor :ServiceId, :ApiId, :ApiName, :Path, :Method, :Environment, :InUseRequestNum, :MaxRequestNum, :MaxRequestNumPreSec, :CreatedTime, :ModifiedTime, :ServiceName

        def initialize(serviceid=nil, apiid=nil, apiname=nil, path=nil, method=nil, environment=nil, inuserequestnum=nil, maxrequestnum=nil, maxrequestnumpresec=nil, createdtime=nil, modifiedtime=nil, servicename=nil)
          @ServiceId = serviceid
          @ApiId = apiid
          @ApiName = apiname
          @Path = path
          @Method = method
          @Environment = environment
          @InUseRequestNum = inuserequestnum
          @MaxRequestNum = maxrequestnum
          @MaxRequestNumPreSec = maxrequestnumpresec
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @ServiceName = servicename
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ApiId = params['ApiId']
          @ApiName = params['ApiName']
          @Path = params['Path']
          @Method = params['Method']
          @Environment = params['Environment']
          @InUseRequestNum = params['InUseRequestNum']
          @MaxRequestNum = params['MaxRequestNum']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @ServiceName = params['ServiceName']
        end
      end

      # 使用计划绑定环境的列表。
      class UsagePlanEnvironmentStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 使用计划绑定的服务的环境数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param EnvironmentList: 使用计划已经绑定的各个服务的环境状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvironmentList: Array

        attr_accessor :TotalCount, :EnvironmentList

        def initialize(totalcount=nil, environmentlist=nil)
          @TotalCount = totalcount
          @EnvironmentList = environmentlist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EnvironmentList'].nil?
            @EnvironmentList = []
            params['EnvironmentList'].each do |i|
              usageplanenvironment_tmp = UsagePlanEnvironment.new
              usageplanenvironment_tmp.deserialize(i)
              @EnvironmentList << usageplanenvironment_tmp
            end
          end
        end
      end

      # 使用计划详情。
      class UsagePlanInfo < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 使用计划唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanId: String
        # @param UsagePlanName: 使用计划名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanName: String
        # @param UsagePlanDesc: 使用计划描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanDesc: String
        # @param MaxRequestNumPreSec: 每秒请求限制数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNumPreSec: Integer
        # @param MaxRequestNum: 最大调用次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNum: Integer
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param BindSecretIdTotalCount: 绑定密钥的数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindSecretIdTotalCount: Integer
        # @param BindSecretIds: 绑定密钥的详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindSecretIds: Array
        # @param BindEnvironmentTotalCount: 绑定环境数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindEnvironmentTotalCount: Integer
        # @param BindEnvironments: 绑定环境详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindEnvironments: Array
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :UsagePlanId, :UsagePlanName, :UsagePlanDesc, :MaxRequestNumPreSec, :MaxRequestNum, :CreatedTime, :ModifiedTime, :BindSecretIdTotalCount, :BindSecretIds, :BindEnvironmentTotalCount, :BindEnvironments, :Tags

        def initialize(usageplanid=nil, usageplanname=nil, usageplandesc=nil, maxrequestnumpresec=nil, maxrequestnum=nil, createdtime=nil, modifiedtime=nil, bindsecretidtotalcount=nil, bindsecretids=nil, bindenvironmenttotalcount=nil, bindenvironments=nil, tags=nil)
          @UsagePlanId = usageplanid
          @UsagePlanName = usageplanname
          @UsagePlanDesc = usageplandesc
          @MaxRequestNumPreSec = maxrequestnumpresec
          @MaxRequestNum = maxrequestnum
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @BindSecretIdTotalCount = bindsecretidtotalcount
          @BindSecretIds = bindsecretids
          @BindEnvironmentTotalCount = bindenvironmenttotalcount
          @BindEnvironments = bindenvironments
          @Tags = tags
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @UsagePlanName = params['UsagePlanName']
          @UsagePlanDesc = params['UsagePlanDesc']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
          @MaxRequestNum = params['MaxRequestNum']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          @BindSecretIdTotalCount = params['BindSecretIdTotalCount']
          @BindSecretIds = params['BindSecretIds']
          @BindEnvironmentTotalCount = params['BindEnvironmentTotalCount']
          unless params['BindEnvironments'].nil?
            @BindEnvironments = []
            params['BindEnvironments'].each do |i|
              usageplanbindenvironment_tmp = UsagePlanBindEnvironment.new
              usageplanbindenvironment_tmp.deserialize(i)
              @BindEnvironments << usageplanbindenvironment_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 用于使用计划列表展示
      class UsagePlanStatusInfo < TencentCloud::Common::AbstractModel
        # @param UsagePlanId: 使用计划唯一 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanId: String
        # @param UsagePlanName: 用户自定义的使用计划名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanName: String
        # @param UsagePlanDesc: 用户自定义的使用计划描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanDesc: String
        # @param MaxRequestNumPreSec: 每秒最大请求次数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNumPreSec: Integer
        # @param MaxRequestNum: 请求配额总量，-1表示没有限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRequestNum: Integer
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ModifiedTime: 最后修改时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :UsagePlanId, :UsagePlanName, :UsagePlanDesc, :MaxRequestNumPreSec, :MaxRequestNum, :CreatedTime, :ModifiedTime, :Tags

        def initialize(usageplanid=nil, usageplanname=nil, usageplandesc=nil, maxrequestnumpresec=nil, maxrequestnum=nil, createdtime=nil, modifiedtime=nil, tags=nil)
          @UsagePlanId = usageplanid
          @UsagePlanName = usageplanname
          @UsagePlanDesc = usageplandesc
          @MaxRequestNumPreSec = maxrequestnumpresec
          @MaxRequestNum = maxrequestnum
          @CreatedTime = createdtime
          @ModifiedTime = modifiedtime
          @Tags = tags
        end

        def deserialize(params)
          @UsagePlanId = params['UsagePlanId']
          @UsagePlanName = params['UsagePlanName']
          @UsagePlanDesc = params['UsagePlanDesc']
          @MaxRequestNumPreSec = params['MaxRequestNumPreSec']
          @MaxRequestNum = params['MaxRequestNum']
          @CreatedTime = params['CreatedTime']
          @ModifiedTime = params['ModifiedTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 使用计划列表
      class UsagePlansStatus < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的使用计划数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param UsagePlanStatusSet: 使用计划列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsagePlanStatusSet: Array

        attr_accessor :TotalCount, :UsagePlanStatusSet

        def initialize(totalcount=nil, usageplanstatusset=nil)
          @TotalCount = totalcount
          @UsagePlanStatusSet = usageplanstatusset
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UsagePlanStatusSet'].nil?
            @UsagePlanStatusSet = []
            params['UsagePlanStatusSet'].each do |i|
              usageplanstatusinfo_tmp = UsagePlanStatusInfo.new
              usageplanstatusinfo_tmp.deserialize(i)
              @UsagePlanStatusSet << usageplanstatusinfo_tmp
            end
          end
        end
      end

      # 独享实例vpc配置信息
      class VpcConfig < TencentCloud::Common::AbstractModel
        # @param UniqVpcId: vpcid
        # @type UniqVpcId: String
        # @param UniqSubnetId: subnetid
        # @type UniqSubnetId: String

        attr_accessor :UniqVpcId, :UniqSubnetId

        def initialize(uniqvpcid=nil, uniqsubnetid=nil)
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
        end

        def deserialize(params)
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
        end
      end

    end
  end
end

