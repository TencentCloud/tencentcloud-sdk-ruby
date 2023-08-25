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

require 'json'

module TencentCloud
  module Dsgc
    module V20190723
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-07-23'
            api_endpoint = 'dsgc.tencentcloudapi.com'
            sdk_version = 'DSGC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 授权用户云资源

        # @param request: Request instance for AuthorizeDSPAMetaResources.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::AuthorizeDSPAMetaResourcesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::AuthorizeDSPAMetaResourcesResponse`
        def AuthorizeDSPAMetaResources(request)
          body = send_request('AuthorizeDSPAMetaResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuthorizeDSPAMetaResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定或解绑COS桶

        # @param request: Request instance for BindDSPAResourceCosBuckets.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::BindDSPAResourceCosBucketsRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::BindDSPAResourceCosBucketsResponse`
        def BindDSPAResourceCosBuckets(request)
          body = send_request('BindDSPAResourceCosBuckets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDSPAResourceCosBucketsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定或解绑数据库实例DB

        # @param request: Request instance for BindDSPAResourceDatabases.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::BindDSPAResourceDatabasesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::BindDSPAResourceDatabasesResponse`
        def BindDSPAResourceDatabases(request)
          body = send_request('BindDSPAResourceDatabases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindDSPAResourceDatabasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 复制合规组模版

        # @param request: Request instance for CopyDSPATemplate.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CopyDSPATemplateRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CopyDSPATemplateResponse`
        def CopyDSPATemplate(request)
          body = send_request('CopyDSPATemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CopyDSPATemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产梳理报表导出重试任务

        # @param request: Request instance for CreateAssetSortingReportRetryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateAssetSortingReportRetryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateAssetSortingReportRetryTaskResponse`
        def CreateAssetSortingReportRetryTask(request)
          body = send_request('CreateAssetSortingReportRetryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetSortingReportRetryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建资产梳理报告任务

        # @param request: Request instance for CreateAssetSortingReportTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateAssetSortingReportTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateAssetSortingReportTaskResponse`
        def CreateAssetSortingReportTask(request)
          body = send_request('CreateAssetSortingReportTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssetSortingReportTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建识别规则

        # @param request: Request instance for CreateClassificationRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateClassificationRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateClassificationRuleResponse`
        def CreateClassificationRule(request)
          body = send_request('CreateClassificationRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClassificationRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险项页面---创建风险等级

        # @param request: Request instance for CreateDSPAAssessmentRiskLevel.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAAssessmentRiskLevelRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAAssessmentRiskLevelResponse`
        def CreateDSPAAssessmentRiskLevel(request)
          body = send_request('CreateDSPAAssessmentRiskLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPAAssessmentRiskLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险评估模版---创建风险评估模版

        # @param request: Request instance for CreateDSPAAssessmentRiskTemplate.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAAssessmentRiskTemplateRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAAssessmentRiskTemplateResponse`
        def CreateDSPAAssessmentRiskTemplate(request)
          body = send_request('CreateDSPAAssessmentRiskTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPAAssessmentRiskTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建DSPA风险评估任务

        # @param request: Request instance for CreateDSPAAssessmentTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAAssessmentTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAAssessmentTaskResponse`
        def CreateDSPAAssessmentTask(request)
          body = send_request('CreateDSPAAssessmentTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPAAssessmentTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增COS分类分级扫描任务，单个用户最多允许创建100个任务。

        # @param request: Request instance for CreateDSPACOSDiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACOSDiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACOSDiscoveryTaskResponse`
        def CreateDSPACOSDiscoveryTask(request)
          body = send_request('CreateDSPACOSDiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPACOSDiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增分类，单个用户最多允许创建100个数据分类。

        # @param request: Request instance for CreateDSPACategory.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACategoryRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACategoryResponse`
        def CreateDSPACategory(request)
          body = send_request('CreateDSPACategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPACategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建分类关联关系

        # @param request: Request instance for CreateDSPACategoryRelation.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACategoryRelationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACategoryRelationResponse`
        def CreateDSPACategoryRelation(request)
          body = send_request('CreateDSPACategoryRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPACategoryRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增分类分级模板，单个用户最多允许创建100个合规组。

        # @param request: Request instance for CreateDSPAComplianceGroup.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAComplianceGroupRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAComplianceGroupResponse`
        def CreateDSPAComplianceGroup(request)
          body = send_request('CreateDSPAComplianceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPAComplianceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建合规组分类规则关联关系

        # @param request: Request instance for CreateDSPAComplianceRules.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAComplianceRulesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAComplianceRulesResponse`
        def CreateDSPAComplianceRules(request)
          body = send_request('CreateDSPAComplianceRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPAComplianceRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加COS元数据

        # @param request: Request instance for CreateDSPACosMetaResources.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACosMetaResourcesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPACosMetaResourcesResponse`
        def CreateDSPACosMetaResources(request)
          body = send_request('CreateDSPACosMetaResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPACosMetaResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加用户云上数据库类型资源

        # @param request: Request instance for CreateDSPADbMetaResources.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPADbMetaResourcesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPADbMetaResourcesResponse`
        def CreateDSPADbMetaResources(request)
          body = send_request('CreateDSPADbMetaResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPADbMetaResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增分类分级规则，单个用户最多允许创建200个规则。

        # @param request: Request instance for CreateDSPADiscoveryRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPADiscoveryRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPADiscoveryRuleResponse`
        def CreateDSPADiscoveryRule(request)
          body = send_request('CreateDSPADiscoveryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPADiscoveryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增分类分级任务，单个用户最多允许创建100个任务。

        # @param request: Request instance for CreateDSPADiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPADiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPADiscoveryTaskResponse`
        def CreateDSPADiscoveryTask(request)
          body = send_request('CreateDSPADiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPADiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新增分级，单个Casb实例最多允许创建100个数据分级

        # @param request: Request instance for CreateDSPALevelGroup.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPALevelGroupRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPALevelGroupResponse`
        def CreateDSPALevelGroup(request)
          body = send_request('CreateDSPALevelGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPALevelGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加用户云上资源列表

        # @param request: Request instance for CreateDSPAMetaResources.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAMetaResourcesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPAMetaResourcesResponse`
        def CreateDSPAMetaResources(request)
          body = send_request('CreateDSPAMetaResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPAMetaResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建用户自建云资源

        # @param request: Request instance for CreateDSPASelfBuildMetaResource.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateDSPASelfBuildMetaResourceRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateDSPASelfBuildMetaResourceResponse`
        def CreateDSPASelfBuildMetaResource(request)
          body = send_request('CreateDSPASelfBuildMetaResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDSPASelfBuildMetaResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建规则别名

        # @param request: Request instance for CreateIdentifyRuleAnotherName.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateIdentifyRuleAnotherNameRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateIdentifyRuleAnotherNameResponse`
        def CreateIdentifyRuleAnotherName(request)
          body = send_request('CreateIdentifyRuleAnotherName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIdentifyRuleAnotherNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建新分类

        # @param request: Request instance for CreateNewClassification.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateNewClassificationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateNewClassificationResponse`
        def CreateNewClassification(request)
          body = send_request('CreateNewClassification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNewClassificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或复制分级分类模板

        # @param request: Request instance for CreateOrCopyStandard.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::CreateOrCopyStandardRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::CreateOrCopyStandardResponse`
        def CreateOrCopyStandard(request)
          body = send_request('CreateOrCopyStandard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrCopyStandardResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险等级的定义页面-创建风险等级的时候生成的一个默认的矩阵

        # @param request: Request instance for DecribeSuggestRiskLevelMatrix.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DecribeSuggestRiskLevelMatrixRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DecribeSuggestRiskLevelMatrixResponse`
        def DecribeSuggestRiskLevelMatrix(request)
          body = send_request('DecribeSuggestRiskLevelMatrix', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DecribeSuggestRiskLevelMatrixResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteCOSMetaData）用于删除COS元数据信息。

        # @param request: Request instance for DeleteCosMetaResource.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteCosMetaResourceRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteCosMetaResourceResponse`
        def DeleteCosMetaResource(request)
          body = send_request('DeleteCosMetaResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCosMetaResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除DSPA风险评估任务

        # @param request: Request instance for DeleteDSPAAssessmentTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPAAssessmentTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPAAssessmentTaskResponse`
        def DeleteDSPAAssessmentTask(request)
          body = send_request('DeleteDSPAAssessmentTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDSPAAssessmentTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除COS分类分级任务，该接口只有在任务状态为以下几个状态值时才支持正确删除：
        # 0 待扫描，
        # 2 扫描终止，
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for DeleteDSPACOSDiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPACOSDiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPACOSDiscoveryTaskResponse`
        def DeleteDSPACOSDiscoveryTask(request)
          body = send_request('DeleteDSPACOSDiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDSPACOSDiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除COS分类分级任务结果

        # @param request: Request instance for DeleteDSPACOSDiscoveryTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPACOSDiscoveryTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPACOSDiscoveryTaskResultResponse`
        def DeleteDSPACOSDiscoveryTaskResult(request)
          body = send_request('DeleteDSPACOSDiscoveryTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDSPACOSDiscoveryTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除分类分级识别任务，该接口只有在任务状态为以下几个状态值时才支持正确删除：
        # 0 待扫描，
        # 2 扫描终止，
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for DeleteDSPADiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPADiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPADiscoveryTaskResponse`
        def DeleteDSPADiscoveryTask(request)
          body = send_request('DeleteDSPADiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDSPADiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除分类分级识别任务结果

        # @param request: Request instance for DeleteDSPADiscoveryTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPADiscoveryTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPADiscoveryTaskResultResponse`
        def DeleteDSPADiscoveryTaskResult(request)
          body = send_request('DeleteDSPADiscoveryTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDSPADiscoveryTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户云资源

        # @param request: Request instance for DeleteDSPAMetaResource.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPAMetaResourceRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DeleteDSPAMetaResourceResponse`
        def DeleteDSPAMetaResource(request)
          body = send_request('DeleteDSPAMetaResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDSPAMetaResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询敏感数据导出结果URL

        # @param request: Request instance for DescribeAssetDetailDataExportResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeAssetDetailDataExportResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeAssetDetailDataExportResultResponse`
        def DescribeAssetDetailDataExportResult(request)
          body = send_request('DescribeAssetDetailDataExportResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetDetailDataExportResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告页面-查询数据资产概览接口（包括数据库资产详情和存储资产详情）

        # @param request: Request instance for DescribeAssetOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeAssetOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeAssetOverviewResponse`
        def DescribeAssetOverview(request)
          body = send_request('DescribeAssetOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssetOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询DB绑定的列表

        # @param request: Request instance for DescribeBindDBList.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeBindDBListRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeBindDBListResponse`
        def DescribeBindDBList(request)
          body = send_request('DescribeBindDBList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBindDBListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告-查询cos的资产分布详情接口

        # @param request: Request instance for DescribeCOSAssetSensitiveDistribution.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeCOSAssetSensitiveDistributionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeCOSAssetSensitiveDistributionResponse`
        def DescribeCOSAssetSensitiveDistribution(request)
          body = send_request('DescribeCOSAssetSensitiveDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCOSAssetSensitiveDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询分类信息

        # @param request: Request instance for DescribeClassificationInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeClassificationInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeClassificationInfoResponse`
        def DescribeClassificationInfo(request)
          body = send_request('DescribeClassificationInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassificationInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询标准下所有分类的识别规则数量(不算子分类下的识别规则)

        # @param request: Request instance for DescribeClassificationRuleCount.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeClassificationRuleCountRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeClassificationRuleCountResponse`
        def DescribeClassificationRuleCount(request)
          body = send_request('DescribeClassificationRuleCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassificationRuleCountResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询高风险资产的top10

        # @param request: Request instance for DescribeDSPAAssessmentHighRiskTop10Overview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentHighRiskTop10OverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentHighRiskTop10OverviewResponse`
        def DescribeDSPAAssessmentHighRiskTop10Overview(request)
          body = send_request('DescribeDSPAAssessmentHighRiskTop10Overview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentHighRiskTop10OverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最新风险项详情数据

        # @param request: Request instance for DescribeDSPAAssessmentLatestRiskDetailInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentLatestRiskDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentLatestRiskDetailInfoResponse`
        def DescribeDSPAAssessmentLatestRiskDetailInfo(request)
          body = send_request('DescribeDSPAAssessmentLatestRiskDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentLatestRiskDetailInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询最新的风险详情列表数据

        # @param request: Request instance for DescribeDSPAAssessmentLatestRiskList.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentLatestRiskListRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentLatestRiskListResponse`
        def DescribeDSPAAssessmentLatestRiskList(request)
          body = send_request('DescribeDSPAAssessmentLatestRiskList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentLatestRiskListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险概览-查询新发现风险统计数

        # @param request: Request instance for DescribeDSPAAssessmentNewDiscoveredRiskOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentNewDiscoveredRiskOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentNewDiscoveredRiskOverviewResponse`
        def DescribeDSPAAssessmentNewDiscoveredRiskOverview(request)
          body = send_request('DescribeDSPAAssessmentNewDiscoveredRiskOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentNewDiscoveredRiskOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险概览-查询待处理风险统计数

        # @param request: Request instance for DescribeDSPAAssessmentPendingRiskOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentPendingRiskOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentPendingRiskOverviewResponse`
        def DescribeDSPAAssessmentPendingRiskOverview(request)
          body = send_request('DescribeDSPAAssessmentPendingRiskOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentPendingRiskOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险概览-查询处理中风险统计数

        # @param request: Request instance for DescribeDSPAAssessmentProcessingRiskOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentProcessingRiskOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentProcessingRiskOverviewResponse`
        def DescribeDSPAAssessmentProcessingRiskOverview(request)
          body = send_request('DescribeDSPAAssessmentProcessingRiskOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentProcessingRiskOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险概览页风险数量和受影响资产数概览统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskAmountOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskAmountOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskAmountOverviewResponse`
        def DescribeDSPAAssessmentRiskAmountOverview(request)
          body = send_request('DescribeDSPAAssessmentRiskAmountOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskAmountOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 受影响资产TOP5统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskDatasourceTop5.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDatasourceTop5Request`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDatasourceTop5Response`
        def DescribeDSPAAssessmentRiskDatasourceTop5(request)
          body = send_request('DescribeDSPAAssessmentRiskDatasourceTop5', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskDatasourceTop5Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 遗留待处理&昨日完成风险处置概览统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskDealedOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDealedOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDealedOverviewResponse`
        def DescribeDSPAAssessmentRiskDealedOverview(request)
          body = send_request('DescribeDSPAAssessmentRiskDealedOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskDealedOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险项处理趋势统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskDealedTrend.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDealedTrendRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDealedTrendResponse`
        def DescribeDSPAAssessmentRiskDealedTrend(request)
          body = send_request('DescribeDSPAAssessmentRiskDealedTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskDealedTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询风险分布数据，包含风险类型分布，风险详情分布，风险资产的分布

        # @param request: Request instance for DescribeDSPAAssessmentRiskDistributionOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDistributionOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskDistributionOverviewResponse`
        def DescribeDSPAAssessmentRiskDistributionOverview(request)
          body = send_request('DescribeDSPAAssessmentRiskDistributionOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskDistributionOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险分类TOP5统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskItemTop5.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskItemTop5Request`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskItemTop5Response`
        def DescribeDSPAAssessmentRiskItemTop5(request)
          body = send_request('DescribeDSPAAssessmentRiskItemTop5', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskItemTop5Response.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险项页面----查询风险等级的详情数据

        # @param request: Request instance for DescribeDSPAAssessmentRiskLevelDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskLevelDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskLevelDetailResponse`
        def DescribeDSPAAssessmentRiskLevelDetail(request)
          body = send_request('DescribeDSPAAssessmentRiskLevelDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskLevelDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险项页面----查询风险等级的列表

        # @param request: Request instance for DescribeDSPAAssessmentRiskLevelList.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskLevelListRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskLevelListResponse`
        def DescribeDSPAAssessmentRiskLevelList(request)
          body = send_request('DescribeDSPAAssessmentRiskLevelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskLevelListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险级别趋势统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskLevelTrend.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskLevelTrendRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskLevelTrendResponse`
        def DescribeDSPAAssessmentRiskLevelTrend(request)
          body = send_request('DescribeDSPAAssessmentRiskLevelTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskLevelTrendResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险数量概览统计

        # @param request: Request instance for DescribeDSPAAssessmentRiskOverview.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskOverviewRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskOverviewResponse`
        def DescribeDSPAAssessmentRiskOverview(request)
          body = send_request('DescribeDSPAAssessmentRiskOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskOverviewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改最新评估风险项状态

        # @param request: Request instance for DescribeDSPAAssessmentRiskProcessHistory.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskProcessHistoryRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskProcessHistoryResponse`
        def DescribeDSPAAssessmentRiskProcessHistory(request)
          body = send_request('DescribeDSPAAssessmentRiskProcessHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskProcessHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险项页面--查看评估模版详情

        # @param request: Request instance for DescribeDSPAAssessmentRiskTemplateDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskTemplateDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskTemplateDetailResponse`
        def DescribeDSPAAssessmentRiskTemplateDetail(request)
          body = send_request('DescribeDSPAAssessmentRiskTemplateDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskTemplateDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险模版页面--查询风险模版中的脆弱项配置

        # @param request: Request instance for DescribeDSPAAssessmentRiskTemplateVulnerableList.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskTemplateVulnerableListRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRiskTemplateVulnerableListResponse`
        def DescribeDSPAAssessmentRiskTemplateVulnerableList(request)
          body = send_request('DescribeDSPAAssessmentRiskTemplateVulnerableList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRiskTemplateVulnerableListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DSPA评估风险项列表

        # @param request: Request instance for DescribeDSPAAssessmentRisks.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRisksRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentRisksResponse`
        def DescribeDSPAAssessmentRisks(request)
          body = send_request('DescribeDSPAAssessmentRisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentRisksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DSPA评估任务列表

        # @param request: Request instance for DescribeDSPAAssessmentTasks.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentTasksRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentTasksResponse`
        def DescribeDSPAAssessmentTasks(request)
          body = send_request('DescribeDSPAAssessmentTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DSPA评估模版关联的评估控制项列表

        # @param request: Request instance for DescribeDSPAAssessmentTemplateControlItems.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentTemplateControlItemsRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentTemplateControlItemsResponse`
        def DescribeDSPAAssessmentTemplateControlItems(request)
          body = send_request('DescribeDSPAAssessmentTemplateControlItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentTemplateControlItemsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DSPA评估模板列表

        # @param request: Request instance for DescribeDSPAAssessmentTemplates.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentTemplatesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAAssessmentTemplatesResponse`
        def DescribeDSPAAssessmentTemplates(request)
          body = send_request('DescribeDSPAAssessmentTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAAssessmentTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS敏感数据资产桶列表

        # @param request: Request instance for DescribeDSPACOSDataAssetBuckets.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDataAssetBucketsRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDataAssetBucketsResponse`
        def DescribeDSPACOSDataAssetBuckets(request)
          body = send_request('DescribeDSPACOSDataAssetBuckets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDataAssetBucketsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS单个模板下的敏感数据资产

        # @param request: Request instance for DescribeDSPACOSDataAssetByComplianceId.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDataAssetByComplianceIdRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDataAssetByComplianceIdResponse`
        def DescribeDSPACOSDataAssetByComplianceId(request)
          body = send_request('DescribeDSPACOSDataAssetByComplianceId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDataAssetByComplianceIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS分类分级数据资产详情

        # @param request: Request instance for DescribeDSPACOSDataAssetDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDataAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDataAssetDetailResponse`
        def DescribeDSPACOSDataAssetDetail(request)
          body = send_request('DescribeDSPACOSDataAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDataAssetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS分类分级任务详情

        # @param request: Request instance for DescribeDSPACOSDiscoveryTaskDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTaskDetailResponse`
        def DescribeDSPACOSDiscoveryTaskDetail(request)
          body = send_request('DescribeDSPACOSDiscoveryTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDiscoveryTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS分类分级任务结果详情文件列表

        # @param request: Request instance for DescribeDSPACOSDiscoveryTaskFiles.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTaskFilesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTaskFilesResponse`
        def DescribeDSPACOSDiscoveryTaskFiles(request)
          body = send_request('DescribeDSPACOSDiscoveryTaskFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDiscoveryTaskFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for DescribeDSPACOSDiscoveryTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTaskResultResponse`
        def DescribeDSPACOSDiscoveryTaskResult(request)
          body = send_request('DescribeDSPACOSDiscoveryTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDiscoveryTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS分类分级任务列表

        # @param request: Request instance for DescribeDSPACOSDiscoveryTasks.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTasksRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSDiscoveryTasksResponse`
        def DescribeDSPACOSDiscoveryTasks(request)
          body = send_request('DescribeDSPACOSDiscoveryTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSDiscoveryTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
        # 3 扫描成功

        # @param request: Request instance for DescribeDSPACOSTaskResultDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSTaskResultDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACOSTaskResultDetailResponse`
        def DescribeDSPACOSTaskResultDetail(request)
          body = send_request('DescribeDSPACOSTaskResultDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACOSTaskResultDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取敏感数据分类列表

        # @param request: Request instance for DescribeDSPACategories.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoriesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoriesResponse`
        def DescribeDSPACategories(request)
          body = send_request('DescribeDSPACategories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACategoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类规则统计信息

        # @param request: Request instance for DescribeDSPACategoryRuleStatistic.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryRuleStatisticRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryRuleStatisticResponse`
        def DescribeDSPACategoryRuleStatistic(request)
          body = send_request('DescribeDSPACategoryRuleStatistic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACategoryRuleStatisticResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取合规组分类规则信息

        # @param request: Request instance for DescribeDSPACategoryRules.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryRulesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryRulesResponse`
        def DescribeDSPACategoryRules(request)
          body = send_request('DescribeDSPACategoryRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACategoryRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类树信息

        # @param request: Request instance for DescribeDSPACategoryTree.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryTreeRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryTreeResponse`
        def DescribeDSPACategoryTree(request)
          body = send_request('DescribeDSPACategoryTree', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACategoryTreeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类规则树信息

        # @param request: Request instance for DescribeDSPACategoryTreeWithRules.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryTreeWithRulesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPACategoryTreeWithRulesResponse`
        def DescribeDSPACategoryTreeWithRules(request)
          body = send_request('DescribeDSPACategoryTreeWithRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPACategoryTreeWithRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模板详情信息

        # @param request: Request instance for DescribeDSPAComplianceGroupDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAComplianceGroupDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAComplianceGroupDetailResponse`
        def DescribeDSPAComplianceGroupDetail(request)
          body = send_request('DescribeDSPAComplianceGroupDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAComplianceGroupDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类分级模板列表

        # @param request: Request instance for DescribeDSPAComplianceGroups.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAComplianceGroupsRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAComplianceGroupsResponse`
        def DescribeDSPAComplianceGroups(request)
          body = send_request('DescribeDSPAComplianceGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAComplianceGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取模板更新提示信息

        # @param request: Request instance for DescribeDSPAComplianceUpdateNotification.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAComplianceUpdateNotificationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAComplianceUpdateNotificationResponse`
        def DescribeDSPAComplianceUpdateNotification(request)
          body = send_request('DescribeDSPAComplianceUpdateNotification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAComplianceUpdateNotificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取数据源的数据库信息

        # @param request: Request instance for DescribeDSPADataSourceDbInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADataSourceDbInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADataSourceDbInfoResponse`
        def DescribeDSPADataSourceDbInfo(request)
          body = send_request('DescribeDSPADataSourceDbInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADataSourceDbInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类分级规则列表

        # @param request: Request instance for DescribeDSPADiscoveryRules.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryRulesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryRulesResponse`
        def DescribeDSPADiscoveryRules(request)
          body = send_request('DescribeDSPADiscoveryRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADiscoveryRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询该用户是否已开通分类分级服务

        # @param request: Request instance for DescribeDSPADiscoveryServiceStatus.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryServiceStatusRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryServiceStatusResponse`
        def DescribeDSPADiscoveryServiceStatus(request)
          body = send_request('DescribeDSPADiscoveryServiceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADiscoveryServiceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类分级任务详情

        # @param request: Request instance for DescribeDSPADiscoveryTaskDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskDetailResponse`
        def DescribeDSPADiscoveryTaskDetail(request)
          body = send_request('DescribeDSPADiscoveryTaskDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADiscoveryTaskDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for DescribeDSPADiscoveryTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskResultResponse`
        def DescribeDSPADiscoveryTaskResult(request)
          body = send_request('DescribeDSPADiscoveryTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADiscoveryTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
        # 3 扫描成功

        # @param request: Request instance for DescribeDSPADiscoveryTaskResultDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskResultDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskResultDetailResponse`
        def DescribeDSPADiscoveryTaskResultDetail(request)
          body = send_request('DescribeDSPADiscoveryTaskResultDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADiscoveryTaskResultDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分级分级扫描的表集合

        # @param request: Request instance for DescribeDSPADiscoveryTaskTables.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskTablesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPADiscoveryTaskTablesResponse`
        def DescribeDSPADiscoveryTaskTables(request)
          body = send_request('DescribeDSPADiscoveryTaskTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPADiscoveryTaskTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据合规组id，去查询ES的概览页统计数据

        # @param request: Request instance for DescribeDSPAESDataAssetByComplianceId.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDataAssetByComplianceIdRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDataAssetByComplianceIdResponse`
        def DescribeDSPAESDataAssetByComplianceId(request)
          body = send_request('DescribeDSPAESDataAssetByComplianceId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAESDataAssetByComplianceIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据合规组id，去查询ES的概览页下的统计列表数据

        # @param request: Request instance for DescribeDSPAESDataAssetDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDataAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDataAssetDetailResponse`
        def DescribeDSPAESDataAssetDetail(request)
          body = send_request('DescribeDSPAESDataAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAESDataAssetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取ES扫描结果数据样本

        # @param request: Request instance for DescribeDSPAESDataSample.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDataSampleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDataSampleResponse`
        def DescribeDSPAESDataSample(request)
          body = send_request('DescribeDSPAESDataSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAESDataSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
        # 3 扫描成功

        # @param request: Request instance for DescribeDSPAESDiscoveryTaskResultDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDiscoveryTaskResultDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPAESDiscoveryTaskResultDetailResponse`
        def DescribeDSPAESDiscoveryTaskResultDetail(request)
          body = send_request('DescribeDSPAESDiscoveryTaskResultDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPAESDiscoveryTaskResultDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分级详情

        # @param request: Request instance for DescribeDSPALevelDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPALevelDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPALevelDetailResponse`
        def DescribeDSPALevelDetail(request)
          body = send_request('DescribeDSPALevelDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPALevelDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取分级列表，限制100个 不分页返回

        # @param request: Request instance for DescribeDSPALevelGroups.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPALevelGroupsRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPALevelGroupsResponse`
        def DescribeDSPALevelGroups(request)
          body = send_request('DescribeDSPALevelGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPALevelGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个合规组下的RDB关系数据库分类分级数据资产

        # @param request: Request instance for DescribeDSPARDBDataAssetByComplianceId.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPARDBDataAssetByComplianceIdRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPARDBDataAssetByComplianceIdResponse`
        def DescribeDSPARDBDataAssetByComplianceId(request)
          body = send_request('DescribeDSPARDBDataAssetByComplianceId', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPARDBDataAssetByComplianceIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取RDB关系数据库分类分级资产详情

        # @param request: Request instance for DescribeDSPARDBDataAssetDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPARDBDataAssetDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPARDBDataAssetDetailResponse`
        def DescribeDSPARDBDataAssetDetail(request)
          body = send_request('DescribeDSPARDBDataAssetDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPARDBDataAssetDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取DSPA支持的Meta元数据类型，返回包括：元数据类型，支持的元数据地域信息

        # @param request: Request instance for DescribeDSPASupportedMetas.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPASupportedMetasRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPASupportedMetasResponse`
        def DescribeDSPASupportedMetas(request)
          body = send_request('DescribeDSPASupportedMetas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPASupportedMetasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取扫描结果数据样本

        # @param request: Request instance for DescribeDSPATaskResultDataSample.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPATaskResultDataSampleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeDSPATaskResultDataSampleResponse`
        def DescribeDSPATaskResultDataSample(request)
          body = send_request('DescribeDSPATaskResultDataSample', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDSPATaskResultDataSampleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告-查询es的敏感资产报告，包含（数据库资产，设敏级别数据库top10，资产详情）

        # @param request: Request instance for DescribeESAssetSensitiveDistribution.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeESAssetSensitiveDistributionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeESAssetSensitiveDistributionResponse`
        def DescribeESAssetSensitiveDistribution(request)
          body = send_request('DescribeESAssetSensitiveDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeESAssetSensitiveDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取导出任务结果

        # @param request: Request instance for DescribeExportTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeExportTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeExportTaskResultResponse`
        def DescribeExportTaskResult(request)
          body = send_request('DescribeExportTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExportTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询标准下所有叶子节点分类

        # @param request: Request instance for DescribeLeafClassification.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeLeafClassificationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeLeafClassificationResponse`
        def DescribeLeafClassification(request)
          body = send_request('DescribeLeafClassification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLeafClassificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告-查询mongo 的敏感资产报告，包含（数据库资产，设敏级别数据库top10，资产详情）

        # @param request: Request instance for DescribeMongoAssetSensitiveDistribution.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeMongoAssetSensitiveDistributionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeMongoAssetSensitiveDistributionResponse`
        def DescribeMongoAssetSensitiveDistribution(request)
          body = send_request('DescribeMongoAssetSensitiveDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMongoAssetSensitiveDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告-查询rbd 的敏感资产报告，包含（数据库资产，设敏级别数据库top10，资产详情）

        # @param request: Request instance for DescribeRDBAssetSensitiveDistribution.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeRDBAssetSensitiveDistributionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeRDBAssetSensitiveDistributionResponse`
        def DescribeRDBAssetSensitiveDistribution(request)
          body = send_request('DescribeRDBAssetSensitiveDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRDBAssetSensitiveDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取报表下载链接

        # @param request: Request instance for DescribeReportTaskDownloadUrl.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeReportTaskDownloadUrlRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeReportTaskDownloadUrlResponse`
        def DescribeReportTaskDownloadUrl(request)
          body = send_request('DescribeReportTaskDownloadUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportTaskDownloadUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资产报表任务列表

        # @param request: Request instance for DescribeReportTasks.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeReportTasksRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeReportTasksResponse`
        def DescribeReportTasks(request)
          body = send_request('DescribeReportTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询分类规则详情

        # @param request: Request instance for DescribeRuleDetail.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeRuleDetailRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeRuleDetailResponse`
        def DescribeRuleDetail(request)
          body = send_request('DescribeRuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询分类下规则列表

        # @param request: Request instance for DescribeRuleList.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeRuleListRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeRuleListResponse`
        def DescribeRuleList(request)
          body = send_request('DescribeRuleList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告-查询cos的敏感数据分布（分级分布 分类分布 敏感规则分布详情列表）

        # @param request: Request instance for DescribeSensitiveCOSDataDistribution.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeSensitiveCOSDataDistributionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeSensitiveCOSDataDistributionResponse`
        def DescribeSensitiveCOSDataDistribution(request)
          body = send_request('DescribeSensitiveCOSDataDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSensitiveCOSDataDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 数据资产报告-查询rdb的敏感数据分布-敏感规则字段分布-敏感分布详情

        # @param request: Request instance for DescribeSensitiveRDBDataDistribution.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DescribeSensitiveRDBDataDistributionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DescribeSensitiveRDBDataDistributionResponse`
        def DescribeSensitiveRDBDataDistribution(request)
          body = send_request('DescribeSensitiveRDBDataDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSensitiveRDBDataDistributionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消用户云资源授权

        # @param request: Request instance for DisableDSPAMetaResourceAuth.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::DisableDSPAMetaResourceAuthRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::DisableDSPAMetaResourceAuthResponse`
        def DisableDSPAMetaResourceAuth(request)
          body = send_request('DisableDSPAMetaResourceAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableDSPAMetaResourceAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 打开或者关闭分类分级规则
        # 注：此API同时对该规则下的RDB跟COS规则操作。


        # @param request: Request instance for EnableDSPADiscoveryRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::EnableDSPADiscoveryRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::EnableDSPADiscoveryRuleResponse`
        def EnableDSPADiscoveryRule(request)
          body = send_request('EnableDSPADiscoveryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableDSPADiscoveryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用版本体验

        # @param request: Request instance for EnableTrialVersion.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::EnableTrialVersionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::EnableTrialVersionResponse`
        def EnableTrialVersion(request)
          body = send_request('EnableTrialVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableTrialVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建敏感数据导出任务

        # @param request: Request instance for ExportAssetDetailData.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ExportAssetDetailDataRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ExportAssetDetailDataResponse`
        def ExportAssetDetailData(request)
          body = send_request('ExportAssetDetailData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAssetDetailDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取授权资源的连接状态

        # @param request: Request instance for GetResourceConnectionStatus.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::GetResourceConnectionStatusRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::GetResourceConnectionStatusResponse`
        def GetResourceConnectionStatus(request)
          body = send_request('GetResourceConnectionStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetResourceConnectionStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取体验版本信息

        # @param request: Request instance for GetTrialVersion.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::GetTrialVersionRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::GetTrialVersionResponse`
        def GetTrialVersion(request)
          body = send_request('GetTrialVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTrialVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户购买配额信息

        # @param request: Request instance for GetUserQuotaInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::GetUserQuotaInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::GetUserQuotaInfoResponse`
        def GetUserQuotaInfo(request)
          body = send_request('GetUserQuotaInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetUserQuotaInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取DSPA集群列表

        # @param request: Request instance for ListDSPAClusters.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ListDSPAClustersRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ListDSPAClustersResponse`
        def ListDSPAClusters(request)
          body = send_request('ListDSPAClusters', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDSPAClustersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于获取COS元数据信息，返回COS元数据信息列表。

        # @param request: Request instance for ListDSPACosMetaResources.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ListDSPACosMetaResourcesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ListDSPACosMetaResourcesResponse`
        def ListDSPACosMetaResources(request)
          body = send_request('ListDSPACosMetaResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDSPACosMetaResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取用户云资源

        # @param request: Request instance for ListDSPAMetaResources.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ListDSPAMetaResourcesRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ListDSPAMetaResourcesResponse`
        def ListDSPAMetaResources(request)
          body = send_request('ListDSPAMetaResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDSPAMetaResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 编辑识别规则

        # @param request: Request instance for ModifyClassificationRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyClassificationRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyClassificationRuleResponse`
        def ModifyClassificationRule(request)
          body = send_request('ModifyClassificationRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClassificationRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改识别规则状态

        # @param request: Request instance for ModifyClassificationRuleState.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyClassificationRuleStateRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyClassificationRuleStateResponse`
        def ModifyClassificationRuleState(request)
          body = send_request('ModifyClassificationRuleState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyClassificationRuleStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DSPA评估风险项，支持修改Status

        # @param request: Request instance for ModifyDSPAAssessmentRisk.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskResponse`
        def ModifyDSPAAssessmentRisk(request)
          body = send_request('ModifyDSPAAssessmentRisk', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAAssessmentRiskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改最新评估风险项状态

        # @param request: Request instance for ModifyDSPAAssessmentRiskLatest.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskLatestRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskLatestResponse`
        def ModifyDSPAAssessmentRiskLatest(request)
          body = send_request('ModifyDSPAAssessmentRiskLatest', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAAssessmentRiskLatestResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险项页面----修改风险等级的详情数据

        # @param request: Request instance for ModifyDSPAAssessmentRiskLevel.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskLevelRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskLevelResponse`
        def ModifyDSPAAssessmentRiskLevel(request)
          body = send_request('ModifyDSPAAssessmentRiskLevel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAAssessmentRiskLevelResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 风险模版---修改风险模版

        # @param request: Request instance for ModifyDSPAAssessmentRiskTemplate.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskTemplateRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAAssessmentRiskTemplateResponse`
        def ModifyDSPAAssessmentRiskTemplate(request)
          body = send_request('ModifyDSPAAssessmentRiskTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAAssessmentRiskTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改COS分类分级任务，该接口只有在任务状态为以下状态时才支持正确修改：
        # 0 待扫描，
        # 2 扫描终止，
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for ModifyDSPACOSDiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACOSDiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACOSDiscoveryTaskResponse`
        def ModifyDSPACOSDiscoveryTask(request)
          body = send_request('ModifyDSPACOSDiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPACOSDiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整COS任务扫描结果

        # @param request: Request instance for ModifyDSPACOSTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACOSTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACOSTaskResultResponse`
        def ModifyDSPACOSTaskResult(request)
          body = send_request('ModifyDSPACOSTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPACOSTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分类，内置分类不支持修改。

        # @param request: Request instance for ModifyDSPACategory.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACategoryRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACategoryResponse`
        def ModifyDSPACategory(request)
          body = send_request('ModifyDSPACategory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPACategoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分类分级关系

        # @param request: Request instance for ModifyDSPACategoryRelation.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACategoryRelationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPACategoryRelationResponse`
        def ModifyDSPACategoryRelation(request)
          body = send_request('ModifyDSPACategoryRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPACategoryRelationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改DSPA集群信息

        # @param request: Request instance for ModifyDSPAClusterInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAClusterInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAClusterInfoResponse`
        def ModifyDSPAClusterInfo(request)
          body = send_request('ModifyDSPAClusterInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAClusterInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分类分级模板，内置模板不支持修改。

        # @param request: Request instance for ModifyDSPAComplianceGroup.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAComplianceGroupRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAComplianceGroupResponse`
        def ModifyDSPAComplianceGroup(request)
          body = send_request('ModifyDSPAComplianceGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAComplianceGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分类分级规则，单个用户最多允许创建200个规则。
        # 注：此API同时适用RDB跟COS类型数据。

        # @param request: Request instance for ModifyDSPADiscoveryRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPADiscoveryRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPADiscoveryRuleResponse`
        def ModifyDSPADiscoveryRule(request)
          body = send_request('ModifyDSPADiscoveryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPADiscoveryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分类分级任务，该接口只有在任务状态为以下状态时才支持正确修改：
        # 0 待扫描，
        # 2 扫描终止，
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for ModifyDSPADiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPADiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPADiscoveryTaskResponse`
        def ModifyDSPADiscoveryTask(request)
          body = send_request('ModifyDSPADiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPADiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整ES任务扫描结果

        # @param request: Request instance for ModifyDSPAESTaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAESTaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPAESTaskResultResponse`
        def ModifyDSPAESTaskResult(request)
          body = send_request('ModifyDSPAESTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPAESTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 调整任务扫描结果

        # @param request: Request instance for ModifyDSPATaskResult.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPATaskResultRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyDSPATaskResultResponse`
        def ModifyDSPATaskResult(request)
          body = send_request('ModifyDSPATaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDSPATaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改敏感级别信息

        # @param request: Request instance for ModifyLevelInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyLevelInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyLevelInfoResponse`
        def ModifyLevelInfo(request)
          body = send_request('ModifyLevelInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLevelInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改级别名称

        # @param request: Request instance for ModifyLevelName.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyLevelNameRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyLevelNameResponse`
        def ModifyLevelName(request)
          body = send_request('ModifyLevelName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLevelNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启级别或关闭级别

        # @param request: Request instance for ModifyLevelState.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyLevelStateRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyLevelStateResponse`
        def ModifyLevelState(request)
          body = send_request('ModifyLevelState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLevelStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 一个分类合并到另一个分类中（分类拖拽功能）

        # @param request: Request instance for ModifyMergeClassification.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyMergeClassificationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyMergeClassificationResponse`
        def ModifyMergeClassification(request)
          body = send_request('ModifyMergeClassification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMergeClassificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分类信息

        # @param request: Request instance for ModifyNewClassification.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyNewClassificationRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyNewClassificationResponse`
        def ModifyNewClassification(request)
          body = send_request('ModifyNewClassification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNewClassificationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改分级分类模板信息

        # @param request: Request instance for ModifyStandardInfo.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::ModifyStandardInfoRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::ModifyStandardInfoResponse`
        def ModifyStandardInfo(request)
          body = send_request('ModifyStandardInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyStandardInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询DSPA实例的db列表

        # @param request: Request instance for QueryDSPAMetaResourceDbList.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::QueryDSPAMetaResourceDbListRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::QueryDSPAMetaResourceDbListResponse`
        def QueryDSPAMetaResourceDbList(request)
          body = send_request('QueryDSPAMetaResourceDbList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDSPAMetaResourceDbListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取资源绑定DB状态

        # @param request: Request instance for QueryResourceDbBindStatus.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::QueryResourceDbBindStatusRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::QueryResourceDbBindStatusResponse`
        def QueryResourceDbBindStatus(request)
          body = send_request('QueryResourceDbBindStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryResourceDbBindStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重新启动DSPA风险评估任务

        # @param request: Request instance for RestartDSPAAssessmentTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::RestartDSPAAssessmentTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::RestartDSPAAssessmentTaskResponse`
        def RestartDSPAAssessmentTask(request)
          body = send_request('RestartDSPAAssessmentTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartDSPAAssessmentTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 立即启动分类分级任务，该接口只有在任务状态为以下状态时才支持正确执行立即扫描：
        # 0 待扫描，
        # 2 扫描终止，
        # 3 扫描成功，
        # 4 扫描失败

        # @param request: Request instance for StartDSPADiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::StartDSPADiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::StartDSPADiscoveryTaskResponse`
        def StartDSPADiscoveryTask(request)
          body = send_request('StartDSPADiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartDSPADiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止分类分级任务，该接口只有在任务状态为以下状态时才支持正确执行停止扫描：
        # 1 扫描中

        # @param request: Request instance for StopDSPADiscoveryTask.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::StopDSPADiscoveryTaskRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::StopDSPADiscoveryTaskResponse`
        def StopDSPADiscoveryTask(request)
          body = send_request('StopDSPADiscoveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopDSPADiscoveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新自建资源基础信息，包括：端口、账户名、密码。
        # 请注意：
        # 如果资源自身的VPC、VIP信息发生变化，后台会自动更新。
        # 如果监听的端口发生变化，请显式输入端口。
        # 如果账户名密码任意一个发生变化，请务必同时显式输入账户名密码。

        # @param request: Request instance for UpdateDSPASelfBuildResource.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::UpdateDSPASelfBuildResourceRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::UpdateDSPASelfBuildResourceResponse`
        def UpdateDSPASelfBuildResource(request)
          body = send_request('UpdateDSPASelfBuildResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDSPASelfBuildResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证COS分类分级规则

        # @param request: Request instance for VerifyDSPACOSRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::VerifyDSPACOSRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::VerifyDSPACOSRuleResponse`
        def VerifyDSPACOSRule(request)
          body = send_request('VerifyDSPACOSRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyDSPACOSRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证分类分级规则

        # @param request: Request instance for VerifyDSPADiscoveryRule.
        # @type request: :class:`Tencentcloud::dsgc::V20190723::VerifyDSPADiscoveryRuleRequest`
        # @rtype: :class:`Tencentcloud::dsgc::V20190723::VerifyDSPADiscoveryRuleResponse`
        def VerifyDSPADiscoveryRule(request)
          body = send_request('VerifyDSPADiscoveryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyDSPADiscoveryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end