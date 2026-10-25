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

require 'json'

module TencentCloud
  module Rum
    module V20210622
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-22'
            api_endpoint = 'rum.tencentcloudapi.com'
            sdk_version = 'RUM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建字段配置规则

        # @param request: Request instance for CreateFieldTransformRule.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateFieldTransformRuleRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateFieldTransformRuleResponse`
        def CreateFieldTransformRule(request)
          body = send_request('CreateFieldTransformRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFieldTransformRuleResponse.new
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

        # 创建对应项目的文件记录

        # @param request: Request instance for CreateReleaseFile.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateReleaseFileRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateReleaseFileResponse`
        def CreateReleaseFile(request)
          body = send_request('CreateReleaseFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReleaseFileResponse.new
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

        # 个人用户添加星标项目

        # @param request: Request instance for CreateStarProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateStarProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateStarProjectResponse`
        def CreateStarProject(request)
          body = send_request('CreateStarProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStarProjectResponse.new
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

        # 在指定业务系统下创建应用。

        # @param request: Request instance for CreateTDEMApplication.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateTDEMApplicationRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateTDEMApplicationResponse`
        def CreateTDEMApplication(request)
          body = send_request('CreateTDEMApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDEMApplicationResponse.new
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

        # 创建业务系统。InstanceId 由后端生成，格式 rum-<12 位随机字母数字>。重名返回 InvalidParameterValue。

        # @param request: Request instance for CreateTDEMBusinessSystem.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateTDEMBusinessSystemRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateTDEMBusinessSystemResponse`
        def CreateTDEMBusinessSystem(request)
          body = send_request('CreateTDEMBusinessSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDEMBusinessSystemResponse.new
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

        # 创建一条移动拨测任务。同一应用处于 active 的任务最多 50 条。四项启动范围都为空时不限制启动；填写多项时必须同时满足，同一项多个值命中任意一个即可。

        # @param request: Request instance for CreateTDEMDialTask.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateTDEMDialTaskRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateTDEMDialTaskResponse`
        def CreateTDEMDialTask(request)
          body = send_request('CreateTDEMDialTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDEMDialTaskResponse.new
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

        # 为应用创建字段值替换规则，单应用上限 50 条。替代已废弃的 CreateFieldTransformRule；AppId 为 string。

        # @param request: Request instance for CreateTDEMFieldTransformRule.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateTDEMFieldTransformRuleRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateTDEMFieldTransformRuleResponse`
        def CreateTDEMFieldTransformRule(request)
          body = send_request('CreateTDEMFieldTransformRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDEMFieldTransformRuleResponse.new
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

        # 创建漏斗

        # @param request: Request instance for CreateTDEMFunnel.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateTDEMFunnelRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateTDEMFunnelResponse`
        def CreateTDEMFunnel(request)
          body = send_request('CreateTDEMFunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDEMFunnelResponse.new
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

        # 创建白名单

        # @param request: Request instance for CreateWhitelist.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateWhitelistRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateWhitelistResponse`
        def CreateWhitelist(request)
          body = send_request('CreateWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWhitelistResponse.new
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

        # 删除字段配置规则

        # @param request: Request instance for DeleteFieldTransformRule.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteFieldTransformRuleRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteFieldTransformRuleResponse`
        def DeleteFieldTransformRule(request)
          body = send_request('DeleteFieldTransformRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFieldTransformRuleResponse.new
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

        # 删除实例，谨慎操作，不可恢复

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteInstanceResponse`
        def DeleteInstance(request)
          body = send_request('DeleteInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceResponse.new
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

        # 删除回放包元数据，并尽力删除COS上回放包与源码zip。不存在返回ResourceNotFound。

        # @param request: Request instance for DeleteMiniProgramReplayPack.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteMiniProgramReplayPackRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteMiniProgramReplayPackResponse`
        def DeleteMiniProgramReplayPack(request)
          body = send_request('DeleteMiniProgramReplayPack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMiniProgramReplayPackResponse.new
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

        # 删除给定的 rum 的项目

        # @param request: Request instance for DeleteProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteProjectResponse`
        def DeleteProject(request)
          body = send_request('DeleteProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProjectResponse.new
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

        # 将对应 sourcemap 文件删除

        # @param request: Request instance for DeleteReleaseFile.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteReleaseFileRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteReleaseFileResponse`
        def DeleteReleaseFile(request)
          body = send_request('DeleteReleaseFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReleaseFileResponse.new
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

        # 删除用户名下的星标项目

        # @param request: Request instance for DeleteStarProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteStarProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteStarProjectResponse`
        def DeleteStarProject(request)
          body = send_request('DeleteStarProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteStarProjectResponse.new
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

        # 删除指定的符号制品。

        # @param request: Request instance for DeleteSymbolArtifact.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteSymbolArtifactRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteSymbolArtifactResponse`
        def DeleteSymbolArtifact(request)
          body = send_request('DeleteSymbolArtifact', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSymbolArtifactResponse.new
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

        # 逻辑删除应用，ProjectKey 即刻失效。

        # @param request: Request instance for DeleteTDEMApplication.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteTDEMApplicationRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteTDEMApplicationResponse`
        def DeleteTDEMApplication(request)
          body = send_request('DeleteTDEMApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTDEMApplicationResponse.new
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

        # 删除业务系统。名下存在未删除应用时返回 ResourceInUse。

        # @param request: Request instance for DeleteTDEMBusinessSystem.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteTDEMBusinessSystemRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteTDEMBusinessSystemResponse`
        def DeleteTDEMBusinessSystem(request)
          body = send_request('DeleteTDEMBusinessSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTDEMBusinessSystemResponse.new
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

        # 将拨测任务标记为已删除。已删除的任务再次删除视为成功。不物理删除任务行，也不删除历史拨测结果。

        # @param request: Request instance for DeleteTDEMDialTask.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteTDEMDialTaskRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteTDEMDialTaskResponse`
        def DeleteTDEMDialTask(request)
          body = send_request('DeleteTDEMDialTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTDEMDialTaskResponse.new
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

        # 按规则 Id 删除字段值替换规则。替代已废弃的 DeleteFieldTransformRule；AppId 为 string。

        # @param request: Request instance for DeleteTDEMFieldTransformRule.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteTDEMFieldTransformRuleRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteTDEMFieldTransformRuleResponse`
        def DeleteTDEMFieldTransformRule(request)
          body = send_request('DeleteTDEMFieldTransformRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTDEMFieldTransformRuleResponse.new
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

        # 删除漏斗

        # @param request: Request instance for DeleteTDEMFunnel.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteTDEMFunnelRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteTDEMFunnelResponse`
        def DeleteTDEMFunnel(request)
          body = send_request('DeleteTDEMFunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTDEMFunnelResponse.new
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

        # 删除白名单

        # @param request: Request instance for DeleteWhitelist.
        # @type request: :class:`Tencentcloud::rum::V20210622::DeleteWhitelistRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DeleteWhitelistResponse`
        def DeleteWhitelist(request)
          body = send_request('DeleteWhitelist', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWhitelistResponse.new
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

        # 用于查询 app 监控多维分析数据

        # @param request: Request instance for DescribeAppDimensionMetrics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeAppDimensionMetricsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeAppDimensionMetricsResponse`
        def DescribeAppDimensionMetrics(request)
          body = send_request('DescribeAppDimensionMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppDimensionMetricsResponse.new
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

        # 获取 app 监控指标数据

        # @param request: Request instance for DescribeAppMetricsData.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeAppMetricsDataRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeAppMetricsDataResponse`
        def DescribeAppMetricsData(request)
          body = send_request('DescribeAppMetricsData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppMetricsDataResponse.new
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

        # 查询 app 监控个例样本详情列表

        # @param request: Request instance for DescribeAppSingleCaseDetailList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeAppSingleCaseDetailListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeAppSingleCaseDetailListResponse`
        def DescribeAppSingleCaseDetailList(request)
          body = send_request('DescribeAppSingleCaseDetailList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppSingleCaseDetailListResponse.new
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

        # 查询 app 监控个例聚合列表

        # @param request: Request instance for DescribeAppSingleCaseList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeAppSingleCaseListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeAppSingleCaseListResponse`
        def DescribeAppSingleCaseList(request)
          body = send_request('DescribeAppSingleCaseList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAppSingleCaseListResponse.new
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

        # 获取应用退出个例上报详情

        # @param request: Request instance for DescribeApplicationExitReportDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeApplicationExitReportDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeApplicationExitReportDetailResponse`
        def DescribeApplicationExitReportDetail(request)
          body = send_request('DescribeApplicationExitReportDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationExitReportDetailResponse.new
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

        # 获取应用退出个例上报列表

        # @param request: Request instance for DescribeApplicationExitReportList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeApplicationExitReportListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeApplicationExitReportListResponse`
        def DescribeApplicationExitReportList(request)
          body = send_request('DescribeApplicationExitReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationExitReportListResponse.new
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

        # 转发monitor查询

        # @param request: Request instance for DescribeData.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataResponse`
        def DescribeData(request)
          body = send_request('DescribeData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataResponse.new
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

        # 获取DescribeDataBridgeUrl信息

        # @param request: Request instance for DescribeDataBridgeUrlV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataBridgeUrlV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataBridgeUrlV2Response`
        def DescribeDataBridgeUrlV2(request)
          body = send_request('DescribeDataBridgeUrlV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataBridgeUrlV2Response.new
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

        # 获取DescribeDataCustomUrl信息

        # @param request: Request instance for DescribeDataCustomUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataCustomUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataCustomUrlResponse`
        def DescribeDataCustomUrl(request)
          body = send_request('DescribeDataCustomUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataCustomUrlResponse.new
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

        # 获取DescribeDataCustomUrl信息

        # @param request: Request instance for DescribeDataCustomUrlV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataCustomUrlV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataCustomUrlV2Response`
        def DescribeDataCustomUrlV2(request)
          body = send_request('DescribeDataCustomUrlV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataCustomUrlV2Response.new
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

        # 获取DescribeDataEventUrl信息

        # @param request: Request instance for DescribeDataEventUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlResponse`
        def DescribeDataEventUrl(request)
          body = send_request('DescribeDataEventUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEventUrlResponse.new
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

        # 获取DescribeDataEventUrl信息

        # @param request: Request instance for DescribeDataEventUrlV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlV2Response`
        def DescribeDataEventUrlV2(request)
          body = send_request('DescribeDataEventUrlV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEventUrlV2Response.new
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

        # 获取DescribeDataFetchProject信息。已下线，请使用DescribeDataFetchUrl

        # @param request: Request instance for DescribeDataFetchProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchProjectResponse`
        def DescribeDataFetchProject(request)
          body = send_request('DescribeDataFetchProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchProjectResponse.new
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

        # 获取DescribeDataFetchUrl信息

        # @param request: Request instance for DescribeDataFetchUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlResponse`
        def DescribeDataFetchUrl(request)
          body = send_request('DescribeDataFetchUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchUrlResponse.new
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

        # 获取DescribeDataFetchUrlInfo信息

        # @param request: Request instance for DescribeDataFetchUrlInfo.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlInfoRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlInfoResponse`
        def DescribeDataFetchUrlInfo(request)
          body = send_request('DescribeDataFetchUrlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchUrlInfoResponse.new
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

        # 获取DescribeDataFetchUrl信息

        # @param request: Request instance for DescribeDataFetchUrlV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataFetchUrlV2Response`
        def DescribeDataFetchUrlV2(request)
          body = send_request('DescribeDataFetchUrlV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataFetchUrlV2Response.new
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

        # 获取loginfo信息

        # @param request: Request instance for DescribeDataLogUrlInfo.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlInfoRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlInfoResponse`
        def DescribeDataLogUrlInfo(request)
          body = send_request('DescribeDataLogUrlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataLogUrlInfoResponse.new
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

        # 获取LogUrlStatistics信息

        # @param request: Request instance for DescribeDataLogUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsResponse`
        def DescribeDataLogUrlStatistics(request)
          body = send_request('DescribeDataLogUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataLogUrlStatisticsResponse.new
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

        # 获取LogUrlStatistics信息

        # @param request: Request instance for DescribeDataLogUrlStatisticsV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsV2Response`
        def DescribeDataLogUrlStatisticsV2(request)
          body = send_request('DescribeDataLogUrlStatisticsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataLogUrlStatisticsV2Response.new
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

        # 获取PerformancePage信息

        # @param request: Request instance for DescribeDataPerformancePage.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageResponse`
        def DescribeDataPerformancePage(request)
          body = send_request('DescribeDataPerformancePage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPerformancePageResponse.new
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

        # 获取PerformancePage信息

        # @param request: Request instance for DescribeDataPerformancePageV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageV2Response`
        def DescribeDataPerformancePageV2(request)
          body = send_request('DescribeDataPerformancePageV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPerformancePageV2Response.new
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

        # 获取PvUrlInfo信息

        # @param request: Request instance for DescribeDataPvUrlInfo.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlInfoRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlInfoResponse`
        def DescribeDataPvUrlInfo(request)
          body = send_request('DescribeDataPvUrlInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPvUrlInfoResponse.new
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

        # 获取DescribeDataPvUrlStatistics信息

        # @param request: Request instance for DescribeDataPvUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsResponse`
        def DescribeDataPvUrlStatistics(request)
          body = send_request('DescribeDataPvUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPvUrlStatisticsResponse.new
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

        # 获取DescribeDataPvUrlStatistics信息

        # @param request: Request instance for DescribeDataPvUrlStatisticsV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsV2Response`
        def DescribeDataPvUrlStatisticsV2(request)
          body = send_request('DescribeDataPvUrlStatisticsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPvUrlStatisticsV2Response.new
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

        # 获取项目上报量

        # @param request: Request instance for DescribeDataReportCount.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataReportCountRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataReportCountResponse`
        def DescribeDataReportCount(request)
          body = send_request('DescribeDataReportCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataReportCountResponse.new
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

        # 获取项目上报量

        # @param request: Request instance for DescribeDataReportCountV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataReportCountV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataReportCountV2Response`
        def DescribeDataReportCountV2(request)
          body = send_request('DescribeDataReportCountV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataReportCountV2Response.new
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

        # 获取DescribeDataSetUrlStatistics信息

        # @param request: Request instance for DescribeDataSetUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataSetUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataSetUrlStatisticsResponse`
        def DescribeDataSetUrlStatistics(request)
          body = send_request('DescribeDataSetUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSetUrlStatisticsResponse.new
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

        # 获取DescribeDataSetUrlStatistics信息

        # @param request: Request instance for DescribeDataSetUrlStatisticsV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataSetUrlStatisticsV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataSetUrlStatisticsV2Response`
        def DescribeDataSetUrlStatisticsV2(request)
          body = send_request('DescribeDataSetUrlStatisticsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataSetUrlStatisticsV2Response.new
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

        # 获取DescribeDataStaticProject信息

        # @param request: Request instance for DescribeDataStaticProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticProjectResponse`
        def DescribeDataStaticProject(request)
          body = send_request('DescribeDataStaticProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticProjectResponse.new
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

        # 获取DescribeDataStaticProject信息

        # @param request: Request instance for DescribeDataStaticProjectV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticProjectV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticProjectV2Response`
        def DescribeDataStaticProjectV2(request)
          body = send_request('DescribeDataStaticProjectV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticProjectV2Response.new
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

        # 获取DescribeDataStaticResource信息

        # @param request: Request instance for DescribeDataStaticResource.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticResourceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticResourceResponse`
        def DescribeDataStaticResource(request)
          body = send_request('DescribeDataStaticResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticResourceResponse.new
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

        # 获取DescribeDataStaticResource信息

        # @param request: Request instance for DescribeDataStaticResourceV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticResourceV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticResourceV2Response`
        def DescribeDataStaticResourceV2(request)
          body = send_request('DescribeDataStaticResourceV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticResourceV2Response.new
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

        # 获取DescribeDataStaticUrl信息

        # @param request: Request instance for DescribeDataStaticUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticUrlResponse`
        def DescribeDataStaticUrl(request)
          body = send_request('DescribeDataStaticUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticUrlResponse.new
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

        # 获取DescribeDataStaticUrl信息

        # @param request: Request instance for DescribeDataStaticUrlV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticUrlV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataStaticUrlV2Response`
        def DescribeDataStaticUrlV2(request)
          body = send_request('DescribeDataStaticUrlV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataStaticUrlV2Response.new
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

        # 获取DescribeDataWebVitalsPage信息，用户核心活动信息
        # 页面加载性能之Web Vitals。性能关键点

        # @param request: Request instance for DescribeDataWebVitalsPage.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataWebVitalsPageRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataWebVitalsPageResponse`
        def DescribeDataWebVitalsPage(request)
          body = send_request('DescribeDataWebVitalsPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataWebVitalsPageResponse.new
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

        # 获取DescribeDataWebVitalsPage信息，用户核心活动信息
        # 页面加载性能之Web Vitals。性能关键点

        # @param request: Request instance for DescribeDataWebVitalsPageV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataWebVitalsPageV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataWebVitalsPageV2Response`
        def DescribeDataWebVitalsPageV2(request)
          body = send_request('DescribeDataWebVitalsPageV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataWebVitalsPageV2Response.new
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

        # 获取首页错误信息

        # @param request: Request instance for DescribeError.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeErrorRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeErrorResponse`
        def DescribeError(request)
          body = send_request('DescribeError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeErrorResponse.new
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

        # 获取异常问题详情数据

        # @param request: Request instance for DescribeExceptionDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeExceptionDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeExceptionDetailResponse`
        def DescribeExceptionDetail(request)
          body = send_request('DescribeExceptionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExceptionDetailResponse.new
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

        # 获取异常个例列表

        # @param request: Request instance for DescribeExceptionReportList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeExceptionReportListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeExceptionReportListResponse`
        def DescribeExceptionReportList(request)
          body = send_request('DescribeExceptionReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExceptionReportListResponse.new
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

        # 获取FOOM内存分配问题详情数据

        # @param request: Request instance for DescribeFOOMMallocProblemDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFOOMMallocProblemDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFOOMMallocProblemDetailResponse`
        def DescribeFOOMMallocProblemDetail(request)
          body = send_request('DescribeFOOMMallocProblemDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFOOMMallocProblemDetailResponse.new
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

        # 获取FOOM内存分配问题列表数据

        # @param request: Request instance for DescribeFOOMMallocProblemList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFOOMMallocProblemListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFOOMMallocProblemListResponse`
        def DescribeFOOMMallocProblemList(request)
          body = send_request('DescribeFOOMMallocProblemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFOOMMallocProblemListResponse.new
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

        # 获取FOOM内存分配问题上报列表

        # @param request: Request instance for DescribeFOOMMallocReportList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFOOMMallocReportListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFOOMMallocReportListResponse`
        def DescribeFOOMMallocReportList(request)
          body = send_request('DescribeFOOMMallocReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFOOMMallocReportListResponse.new
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

        # 获取FOOM问题详情数据

        # @param request: Request instance for DescribeFOOMProblemDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFOOMProblemDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFOOMProblemDetailResponse`
        def DescribeFOOMProblemDetail(request)
          body = send_request('DescribeFOOMProblemDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFOOMProblemDetailResponse.new
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

        # 获取FOOM问题列表数据

        # @param request: Request instance for DescribeFOOMProblemList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFOOMProblemListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFOOMProblemListResponse`
        def DescribeFOOMProblemList(request)
          body = send_request('DescribeFOOMProblemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFOOMProblemListResponse.new
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

        # 获取FOOM问题上报列表

        # @param request: Request instance for DescribeFOOMReportList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFOOMReportListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFOOMReportListResponse`
        def DescribeFOOMReportList(request)
          body = send_request('DescribeFOOMReportList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFOOMReportListResponse.new
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

        # 获取字段配置规则

        # @param request: Request instance for DescribeFieldTransformRules.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFieldTransformRulesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFieldTransformRulesResponse`
        def DescribeFieldTransformRules(request)
          body = send_request('DescribeFieldTransformRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFieldTransformRulesResponse.new
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

        # 获取TDEM字段值列表

        # @param request: Request instance for DescribeFieldValues.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFieldValuesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFieldValuesResponse`
        def DescribeFieldValues(request)
          body = send_request('DescribeFieldValues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFieldValuesResponse.new
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

        # 获取COS存储的临时密钥，具体到ProjectId

        # @param request: Request instance for DescribeFileCertificate.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeFileCertificateRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeFileCertificateResponse`
        def DescribeFileCertificate(request)
          body = send_request('DescribeFileCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFileCertificateResponse.new
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

        # 按用户维度聚合某问题的受影响用户清单，服务端分页。AppId 与 IssueId 必填；AppVersion / StartTime / EndTime / Keyword 用于收窄范围，同时作用于清单与 Total，因此 Total 为当前条件下去重后的用户数， 条件全空时等于问题详情的影响用户数。OrderKey / OrderBy 只改变行序、不改变结果集合；排序一律由服务端执行， 并保留 uid 作为次级键以保证翻页不重不漏。接口只读。

        # @param request: Request instance for DescribeIssueAffectedUsers.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueAffectedUsersRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueAffectedUsersResponse`
        def DescribeIssueAffectedUsers(request)
          body = send_request('DescribeIssueAffectedUsers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueAffectedUsersResponse.new
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

        # 获取指定 Issue 当前事件或最新事件之前的 Breadcrumbs 面包屑序列

        # @param request: Request instance for DescribeIssueBreadcrumbs.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueBreadcrumbsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueBreadcrumbsResponse`
        def DescribeIssueBreadcrumbs(request)
          body = send_request('DescribeIssueBreadcrumbs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueBreadcrumbsResponse.new
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

        # 获取日志下载链接

        # @param request: Request instance for DescribeIssueCrashLogDownloadURL.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueCrashLogDownloadURLRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueCrashLogDownloadURLResponse`
        def DescribeIssueCrashLogDownloadURL(request)
          body = send_request('DescribeIssueCrashLogDownloadURL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueCrashLogDownloadURLResponse.new
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

        # 获取指定 Issue 的摘要信息以及默认选中的最新事件详情

        # @param request: Request instance for DescribeIssueDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueDetailResponse`
        def DescribeIssueDetail(request)
          body = send_request('DescribeIssueDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueDetailResponse.new
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

        # 获取指定 Issue 下单个事件的完整详情，包括栈信息、上下文和符号化状态等字段

        # @param request: Request instance for DescribeIssueEventDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueEventDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueEventDetailResponse`
        def DescribeIssueEventDetail(request)
          body = send_request('DescribeIssueEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueEventDetailResponse.new
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

        # 根据条件获取指定 Issue 的错误事件列表，支持按时间范围、关键字和扩展过滤器查询，返回分页事件数据

        # @param request: Request instance for DescribeIssueEvents.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueEventsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueEventsResponse`
        def DescribeIssueEvents(request)
          body = send_request('DescribeIssueEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueEventsResponse.new
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

        # 获取指定 Issue 在给定时间范围内的趋势分桶统计数据

        # @param request: Request instance for DescribeIssueTrend.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssueTrendRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssueTrendResponse`
        def DescribeIssueTrend(request)
          body = send_request('DescribeIssueTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssueTrendResponse.new
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

        # 根据筛选条件分页查询 Issue 列表，支持环境、Issue 类型、状态、关键字、扩展过滤器和排序条件

        # @param request: Request instance for DescribeIssues.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssuesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssuesResponse`
        def DescribeIssues(request)
          body = send_request('DescribeIssues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssuesResponse.new
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

        # 获取问题分布数据

        # @param request: Request instance for DescribeIssuesDistribution.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssuesDistributionRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssuesDistributionResponse`
        def DescribeIssuesDistribution(request)
          body = send_request('DescribeIssuesDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssuesDistributionResponse.new
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

        # 获取问题列表数据

        # @param request: Request instance for DescribeIssuesList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssuesListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssuesListResponse`
        def DescribeIssuesList(request)
          body = send_request('DescribeIssuesList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssuesListResponse.new
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

        # 获取问题趋势数据

        # @param request: Request instance for DescribeIssuesStatisticsTrend.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeIssuesStatisticsTrendRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeIssuesStatisticsTrendResponse`
        def DescribeIssuesStatisticsTrend(request)
          body = send_request('DescribeIssuesStatisticsTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIssuesStatisticsTrendResponse.new
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

        # 获取卡顿ANR问题用户详情

        # @param request: Request instance for DescribeLagANRProblemAccountDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeLagANRProblemAccountDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeLagANRProblemAccountDetailResponse`
        def DescribeLagANRProblemAccountDetail(request)
          body = send_request('DescribeLagANRProblemAccountDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLagANRProblemAccountDetailResponse.new
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

        # 获取卡顿ANR问题用户列表

        # @param request: Request instance for DescribeLagANRProblemFeatureAccounts.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeLagANRProblemFeatureAccountsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeLagANRProblemFeatureAccountsResponse`
        def DescribeLagANRProblemFeatureAccounts(request)
          body = send_request('DescribeLagANRProblemFeatureAccounts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLagANRProblemFeatureAccountsResponse.new
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

        # 获取卡顿ANR问题列表数据

        # @param request: Request instance for DescribeLagANRProblemList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeLagANRProblemListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeLagANRProblemListResponse`
        def DescribeLagANRProblemList(request)
          body = send_request('DescribeLagANRProblemList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLagANRProblemListResponse.new
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

        # 按AppId+BundleHash取已编译回放包正文。成功含Pack（tmpl/css/js/manifest/hash），不返回WXML/WXSS源码。不存在返回ResourceNotFound。

        # @param request: Request instance for DescribeMiniProgramReplayPack.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeMiniProgramReplayPackRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeMiniProgramReplayPackResponse`
        def DescribeMiniProgramReplayPack(request)
          body = send_request('DescribeMiniProgramReplayPack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMiniProgramReplayPackResponse.new
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

        # 按AppId列出回放包元数据，不含Pack正文。可按Status过滤。Limit默认20、最大100。

        # @param request: Request instance for DescribeMiniProgramReplayPacks.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeMiniProgramReplayPacksRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeMiniProgramReplayPacksResponse`
        def DescribeMiniProgramReplayPacks(request)
          body = send_request('DescribeMiniProgramReplayPacks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMiniProgramReplayPacksResponse.new
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

        # 获取TDEM性能指标数据

        # @param request: Request instance for DescribePerformanceMetrics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribePerformanceMetricsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribePerformanceMetricsResponse`
        def DescribePerformanceMetrics(request)
          body = send_request('DescribePerformanceMetrics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePerformanceMetricsResponse.new
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

        # 获取应用上报抽样信息

        # @param request: Request instance for DescribeProjectLimits.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeProjectLimitsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeProjectLimitsResponse`
        def DescribeProjectLimits(request)
          body = send_request('DescribeProjectLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectLimitsResponse.new
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

        # 获取项目列表（实例创建的团队下的项目列表）

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
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

        # 获取项目下的PV列表

        # @param request: Request instance for DescribePvList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribePvListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribePvListResponse`
        def DescribePvList(request)
          body = send_request('DescribePvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePvListResponse.new
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

        # 获取上传文件存储的临时密钥

        # @param request: Request instance for DescribeReleaseFileSign.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFileSignRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFileSignResponse`
        def DescribeReleaseFileSign(request)
          body = send_request('DescribeReleaseFileSign', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseFileSignResponse.new
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

        # 获取应用对应sourcemap文件列表

        # @param request: Request instance for DescribeReleaseFiles.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFilesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReleaseFilesResponse`
        def DescribeReleaseFiles(request)
          body = send_request('DescribeReleaseFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReleaseFilesResponse.new
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

        # 从对象存储读取录屏帧数据

        # @param request: Request instance for DescribeReplayData.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReplayDataRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReplayDataResponse`
        def DescribeReplayData(request)
          body = send_request('DescribeReplayData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplayDataResponse.new
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

        # 获取回放日志

        # @param request: Request instance for DescribeReplayDetails.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReplayDetailsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReplayDetailsResponse`
        def DescribeReplayDetails(request)
          body = send_request('DescribeReplayDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplayDetailsResponse.new
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

        # 获取回放元数据

        # @param request: Request instance for DescribeReplayMeta.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeReplayMetaRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeReplayMetaResponse`
        def DescribeReplayMeta(request)
          body = send_request('DescribeReplayMeta', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplayMetaResponse.new
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

        # 获取项目下的日志聚合信息

        # @param request: Request instance for DescribeRumGroupLog.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumGroupLogRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumGroupLogResponse`
        def DescribeRumGroupLog(request)
          body = send_request('DescribeRumGroupLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumGroupLogResponse.new
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

        # 根据label 聚合分析日志

        # @param request: Request instance for DescribeRumGroupLogV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumGroupLogV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumGroupLogV2Response`
        def DescribeRumGroupLogV2(request)
          body = send_request('DescribeRumGroupLogV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumGroupLogV2Response.new
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

        # 查询日志明细

        # @param request: Request instance for DescribeRumLogDetailsV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogDetailsV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogDetailsV2Response`
        def DescribeRumLogDetailsV2(request)
          body = send_request('DescribeRumLogDetailsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogDetailsV2Response.new
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

        # 获取项目下的日志列表（实例创建的项目下的日志列表）

        # @param request: Request instance for DescribeRumLogExport.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportResponse`
        def DescribeRumLogExport(request)
          body = send_request('DescribeRumLogExport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogExportResponse.new
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

        # 创建日志导出

        # @param request: Request instance for DescribeRumLogExportV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportV2Response`
        def DescribeRumLogExportV2(request)
          body = send_request('DescribeRumLogExportV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogExportV2Response.new
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

        # 获取项目下的日志导出列表

        # @param request: Request instance for DescribeRumLogExports.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportsResponse`
        def DescribeRumLogExports(request)
          body = send_request('DescribeRumLogExports', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogExportsResponse.new
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

        # 获取日志导出列表

        # @param request: Request instance for DescribeRumLogExportsV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportsV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogExportsV2Response`
        def DescribeRumLogExportsV2(request)
          body = send_request('DescribeRumLogExportsV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogExportsV2Response.new
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

        # 获取项目下的日志列表（实例创建的项目下的日志列表）

        # @param request: Request instance for DescribeRumLogList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogListResponse`
        def DescribeRumLogList(request)
          body = send_request('DescribeRumLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogListResponse.new
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

        # 查询原始日志总量

        # @param request: Request instance for DescribeRumLogTotalV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumLogTotalV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumLogTotalV2Response`
        def DescribeRumLogTotalV2(request)
          body = send_request('DescribeRumLogTotalV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumLogTotalV2Response.new
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

        # 获取项目下的日志列表，分钟级

        # @param request: Request instance for DescribeRumStatsLogList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumStatsLogListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumStatsLogListResponse`
        def DescribeRumStatsLogList(request)
          body = send_request('DescribeRumStatsLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumStatsLogListResponse.new
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

        # 查询日志时间分布

        # @param request: Request instance for DescribeRumStatsLogListV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeRumStatsLogListV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeRumStatsLogListV2Response`
        def DescribeRumStatsLogListV2(request)
          body = send_request('DescribeRumStatsLogListV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRumStatsLogListV2Response.new
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

        # 获取应用的采样率

        # @param request: Request instance for DescribeSampleRate.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeSampleRateRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeSampleRateResponse`
        def DescribeSampleRate(request)
          body = send_request('DescribeSampleRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSampleRateResponse.new
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

        # 获取首页分数列表

        # @param request: Request instance for DescribeScores.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeScoresRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeScoresResponse`
        def DescribeScores(request)
          body = send_request('DescribeScores', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScoresResponse.new
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

        # 获取首页分数列表

        # @param request: Request instance for DescribeScoresV2.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeScoresV2Request`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeScoresV2Response`
        def DescribeScoresV2(request)
          body = send_request('DescribeScoresV2', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScoresV2Response.new
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

        # 查询会话列表

        # @param request: Request instance for DescribeSessionList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeSessionListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeSessionListResponse`
        def DescribeSessionList(request)
          body = send_request('DescribeSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSessionListResponse.new
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

        # 获取挣扎事件分布数据

        # @param request: Request instance for DescribeStruggleDistribution.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeStruggleDistributionRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeStruggleDistributionResponse`
        def DescribeStruggleDistribution(request)
          body = send_request('DescribeStruggleDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStruggleDistributionResponse.new
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

        # 获取符号制品上传临时凭证。

        # @param request: Request instance for DescribeSymbolArtifactUploadCredential.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeSymbolArtifactUploadCredentialRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeSymbolArtifactUploadCredentialResponse`
        def DescribeSymbolArtifactUploadCredential(request)
          body = send_request('DescribeSymbolArtifactUploadCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSymbolArtifactUploadCredentialResponse.new
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

        # 分页查询指定类型的符号制品。

        # @param request: Request instance for DescribeSymbolArtifacts.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeSymbolArtifactsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeSymbolArtifactsResponse`
        def DescribeSymbolArtifacts(request)
          body = send_request('DescribeSymbolArtifacts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSymbolArtifactsResponse.new
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

        # 查询应用列表，默认仅当前用户名下有权限的应用；可按业务系统 InstanceId 筛选。

        # @param request: Request instance for DescribeTDEMApplications.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMApplicationsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMApplicationsResponse`
        def DescribeTDEMApplications(request)
          body = send_request('DescribeTDEMApplications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMApplicationsResponse.new
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

        # 查询当前用户名下业务系统列表（超管返回全部）。分页 Offset/Limit，默认 Limit=20 上限 100。

        # @param request: Request instance for DescribeTDEMBusinessSystems.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMBusinessSystemsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMBusinessSystemsResponse`
        def DescribeTDEMBusinessSystems(request)
          body = send_request('DescribeTDEMBusinessSystems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMBusinessSystemsResponse.new
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

        # 按一个维度拆分拨测指标。Dimension 取值说明：platform、app_version、device、net_type、operator、region、country、target_ip。target_region 不是合法值。region 对应客户端省份，country 对应国家。

        # @param request: Request instance for DescribeTDEMDialDimensions.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialDimensionsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialDimensionsResponse`
        def DescribeTDEMDialDimensions(request)
          body = send_request('DescribeTDEMDialDimensions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMDialDimensionsResponse.new
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

        # 返回一个拨测批次的探测结果和路由追踪。Probes 的 Region、Operator 是目标 IP 归属。逐跳归属同时写在 Probes.MTR.Hops 和顶层 MTR.Hops。

        # @param request: Request instance for DescribeTDEMDialExecutionDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialExecutionDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialExecutionDetailResponse`
        def DescribeTDEMDialExecutionDetail(request)
          body = send_request('DescribeTDEMDialExecutionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMDialExecutionDetailResponse.new
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

        # 按批次返回拨测执行记录，一批次一行。TargetIps 是目标地址，TargetIpGeo 是这些地址的地区和运营商。行上的 Region 和 Operator 仍是客户端地区和运营商。

        # @param request: Request instance for DescribeTDEMDialExecutionList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialExecutionListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialExecutionListResponse`
        def DescribeTDEMDialExecutionList(request)
          body = send_request('DescribeTDEMDialExecutionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMDialExecutionListResponse.new
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

        # 按时间窗汇总拨测批次。一次多 IP 探测计为 1 个批次。

        # @param request: Request instance for DescribeTDEMDialOverview.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialOverviewRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialOverviewResponse`
        def DescribeTDEMDialOverview(request)
          body = send_request('DescribeTDEMDialOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMDialOverviewResponse.new
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

        # 查询应用下未删除的拨测任务，包含启动范围。

        # @param request: Request instance for DescribeTDEMDialTasks.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialTasksRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialTasksResponse`
        def DescribeTDEMDialTasks(request)
          body = send_request('DescribeTDEMDialTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMDialTasksResponse.new
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

        # 按小时或天返回拨测趋势。Granularity 不传时按小时。

        # @param request: Request instance for DescribeTDEMDialTrend.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialTrendRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMDialTrendResponse`
        def DescribeTDEMDialTrend(request)
          body = send_request('DescribeTDEMDialTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMDialTrendResponse.new
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

        # 按 AppId+EventId 查询事件详情，含主表字段与可选符号化结果。Date 推荐传以命中分区；或用 StartDate+EndDate（<=2 天）。越权与不存在统一 ResourceNotFound。

        # @param request: Request instance for DescribeTDEMEventDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventDetailResponse`
        def DescribeTDEMEventDetail(request)
          body = send_request('DescribeTDEMEventDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMEventDetailResponse.new
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

        # 错误指纹或 API/资源 URL（含按访问页、状态、标签）排行。读 tdem_events，不走主分析立方 GroupBy。Kind：error/api/resource/api_page/resource_page/api_status/api_status_top/resource_status/tag。 Kind=exception_dimension返回当前普通维度或标签值的同批完整分类计数；展开不另行取数。

        # @param request: Request instance for DescribeTDEMEventRank.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventRankRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventRankResponse`
        def DescribeTDEMEventRank(request)
          body = send_request('DescribeTDEMEventRank', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMEventRankResponse.new
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

        # 数据探索事件明细分页。会话分类不得调用本接口（Category 禁止 session）。时间单位 Unix 毫秒。

        # @param request: Request instance for DescribeTDEMEventSearch.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventSearchRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventSearchResponse`
        def DescribeTDEMEventSearch(request)
          body = send_request('DescribeTDEMEventSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMEventSearchResponse.new
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

        # 同一筛选下的分类计数、访问用户、业务用户、窗口合计与分桶趋势。Category 可含 session。空窗返回 0 与空 Series。

        # @param request: Request instance for DescribeTDEMEventSearchSummary.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventSearchSummaryRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMEventSearchSummaryResponse`
        def DescribeTDEMEventSearchSummary(request)
          body = send_request('DescribeTDEMEventSearchSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMEventSearchSummaryResponse.new
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

        # 查询应用下字段值替换规则列表。替代已废弃的 DescribeFieldTransformRules；AppId 为 string。

        # @param request: Request instance for DescribeTDEMFieldTransformRules.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFieldTransformRulesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFieldTransformRulesResponse`
        def DescribeTDEMFieldTransformRules(request)
          body = send_request('DescribeTDEMFieldTransformRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFieldTransformRulesResponse.new
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

        # 获取漏斗详情

        # @param request: Request instance for DescribeTDEMFunnelDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelDetailResponse`
        def DescribeTDEMFunnelDetail(request)
          body = send_request('DescribeTDEMFunnelDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFunnelDetailResponse.new
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

        # 获取漏斗分析报告维度数据

        # @param request: Request instance for DescribeTDEMFunnelDimensions.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelDimensionsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelDimensionsResponse`
        def DescribeTDEMFunnelDimensions(request)
          body = send_request('DescribeTDEMFunnelDimensions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFunnelDimensionsResponse.new
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

        # 获取漏斗列表

        # @param request: Request instance for DescribeTDEMFunnelList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelListResponse`
        def DescribeTDEMFunnelList(request)
          body = send_request('DescribeTDEMFunnelList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFunnelListResponse.new
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

        # 获取漏斗报告

        # @param request: Request instance for DescribeTDEMFunnelReport.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelReportRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelReportResponse`
        def DescribeTDEMFunnelReport(request)
          body = send_request('DescribeTDEMFunnelReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFunnelReportResponse.new
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

        # 获取漏斗步骤会话

        # @param request: Request instance for DescribeTDEMFunnelStepSessionList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelStepSessionListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelStepSessionListResponse`
        def DescribeTDEMFunnelStepSessionList(request)
          body = send_request('DescribeTDEMFunnelStepSessionList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFunnelStepSessionListResponse.new
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

        # 获取漏斗趋势

        # @param request: Request instance for DescribeTDEMFunnelTrend.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelTrendRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMFunnelTrendResponse`
        def DescribeTDEMFunnelTrend(request)
          body = send_request('DescribeTDEMFunnelTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMFunnelTrendResponse.new
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

        # 按单维度 GroupBy 查询分析指标分布。读 tdem_metric_agg。

        # @param request: Request instance for DescribeTDEMMetricDistribution.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMMetricDistributionRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMMetricDistributionResponse`
        def DescribeTDEMMetricDistribution(request)
          body = send_request('DescribeTDEMMetricDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMMetricDistributionResponse.new
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

        # 查询指定应用与时间窗内的分析指标区间合计。单查返回 Metrics；传 Queries 时返回 Results。读 tdem_metric_agg。

        # @param request: Request instance for DescribeTDEMMetricSummary.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMMetricSummaryRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMMetricSummaryResponse`
        def DescribeTDEMMetricSummary(request)
          body = send_request('DescribeTDEMMetricSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMMetricSummaryResponse.new
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

        # 查询分析指标时序。可传 CompareStartTime/CompareEndTime 做对比窗（仅批量）。读 tdem_metric_agg。

        # @param request: Request instance for DescribeTDEMMetricTrend.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMMetricTrendRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMMetricTrendResponse`
        def DescribeTDEMMetricTrend(request)
          body = send_request('DescribeTDEMMetricTrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMMetricTrendResponse.new
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

        # 客户端总览列表批量评分。按应用列表一次返回各计分项单项分与加权总分。AppIds 1-200；不归属当前用户的应用不出现在响应中。

        # @param request: Request instance for DescribeTDEMOverviewScores.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMOverviewScoresRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMOverviewScoresResponse`
        def DescribeTDEMOverviewScores(request)
          body = send_request('DescribeTDEMOverviewScores', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMOverviewScoresResponse.new
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

        # 会话时间线 / 页面子事件 / 错误前轨迹。Mode：timeline / page / breadcrumb。Limit 默认 200，上限 200。

        # @param request: Request instance for DescribeTDEMRelatedEvents.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMRelatedEventsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMRelatedEventsResponse`
        def DescribeTDEMRelatedEvents(request)
          body = send_request('DescribeTDEMRelatedEvents', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMRelatedEventsResponse.new
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

        # 按一个维度返回大模型对话次数和当前指标值，按指标值降序，最多 200 行。region 由 country 与 province 拼接。

        # @param request: Request instance for DescribeTDEMSSEDimensions.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSEDimensionsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSEDimensionsResponse`
        def DescribeTDEMSSEDimensions(request)
          body = send_request('DescribeTDEMSSEDimensions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSSEDimensionsResponse.new
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

        # 返回吞吐率、首次消息时延或流畅度的分档分布。档位左闭右开，最后一档有限区间右端闭合，超出右端的样本进入溢出档。错误率与卡死率返回 InvalidParameter。

        # @param request: Request instance for DescribeTDEMSSEDistribution.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSEDistributionRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSEDistributionResponse`
        def DescribeTDEMSSEDistribution(request)
          body = send_request('DescribeTDEMSSEDistribution', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSSEDistributionResponse.new
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

        # 返回吞吐率、首次消息时延或流畅度在整个时间窗及各时间桶上的平均值和 P50、P75、P95、P99。错误率与卡死率返回 InvalidParameter。

        # @param request: Request instance for DescribeTDEMSSEPercentile.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSEPercentileRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSEPercentileResponse`
        def DescribeTDEMSSEPercentile(request)
          body = send_request('DescribeTDEMSSEPercentile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSSEPercentileResponse.new
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

        # 查询指定应用与时间窗内的大模型对话汇总，包含对话次数、token 总数、吞吐率、首次消息时延、错误率、卡死率和流畅度。只读 tdem.tdem_events 中 event_type 为 sse_call 的事件。

        # @param request: Request instance for DescribeTDEMSSESummary.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSESummaryRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSESummaryResponse`
        def DescribeTDEMSSESummary(request)
          body = send_request('DescribeTDEMSSESummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSSESummaryResponse.new
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

        # 按时间桶返回大模型对话趋势。overall 填充 Points，其他维度按整个窗口的指标值从高到低取 TopN 并填充 Series。

        # @param request: Request instance for DescribeTDEMSSETrend.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSETrendRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSSETrendResponse`
        def DescribeTDEMSSETrend(request)
          body = send_request('DescribeTDEMSSETrend', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSSETrendResponse.new
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

        # 读取当前生效的 Web 规则化采样文档。ProjectId 必填且 > 0。无行则返回内置缺省（Event.Enabled=true、Types 空、Replay 关闭且体验率 0），不自动插库。SnapshotId 无快照为 0。query handler 做 PascalCase ↔ 存储 snake_case 映射。非 Web 应用不得走本接口，继续 DescribeSampleRate。

        # @param request: Request instance for DescribeTDEMSampleConfig.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSampleConfigRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSampleConfigResponse`
        def DescribeTDEMSampleConfig(request)
          body = send_request('DescribeTDEMSampleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSampleConfigResponse.new
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

        # 查询单个应用的采集采样率与会话回放采样率。替代已废弃的 DescribeSampleRate；AppId 为 string。

        # @param request: Request instance for DescribeTDEMSampleRate.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSampleRateRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSampleRateResponse`
        def DescribeTDEMSampleRate(request)
          body = send_request('DescribeTDEMSampleRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSampleRateResponse.new
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

        # 获取回放时间线数据

        # @param request: Request instance for DescribeTDEMSessionReplayTimeline.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSessionReplayTimelineRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMSessionReplayTimelineResponse`
        def DescribeTDEMSessionReplayTimeline(request)
          body = send_request('DescribeTDEMSessionReplayTimeline', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMSessionReplayTimelineResponse.new
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

        # 按业务系统/应用查询用量明细（含行趋势、端类型、删除/停用标记）。Keyword 匹配业务系统名、应用名或应用 ID。

        # @param request: Request instance for DescribeTDEMUsageDetail.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMUsageDetailRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMUsageDetailResponse`
        def DescribeTDEMUsageDetail(request)
          body = send_request('DescribeTDEMUsageDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMUsageDetailResponse.new
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

        # 查询当前使用者名下（超管为全部）上报总量与趋势。时间 StartTime/EndTime 为 YYYY-MM-DD HH:00:00 小时对齐。不要求请求体带 AppId。

        # @param request: Request instance for DescribeTDEMUsageSummary.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTDEMUsageSummaryRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTDEMUsageSummaryResponse`
        def DescribeTDEMUsageSummary(request)
          body = send_request('DescribeTDEMUsageSummary', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTDEMUsageSummaryResponse.new
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

        # 查询片区信息

        # @param request: Request instance for DescribeTawAreas.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTawAreasRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTawAreasResponse`
        def DescribeTawAreas(request)
          body = send_request('DescribeTawAreas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTawAreasResponse.new
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

        # 查询实例信息

        # @param request: Request instance for DescribeTawInstances.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTawInstancesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTawInstancesResponse`
        def DescribeTawInstances(request)
          body = send_request('DescribeTawInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTawInstancesResponse.new
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

        # 查询令牌

        # @param request: Request instance for DescribeToken.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTokenRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTokenResponse`
        def DescribeToken(request)
          body = send_request('DescribeToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTokenResponse.new
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

        # 查询top问题列表

        # @param request: Request instance for DescribeTopIssues.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeTopIssuesRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeTopIssuesResponse`
        def DescribeTopIssues(request)
          body = send_request('DescribeTopIssues', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopIssuesResponse.new
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

        # 获取用户旅程数据

        # @param request: Request instance for DescribeUserJourneySanKey.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeUserJourneySanKeyRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeUserJourneySanKeyResponse`
        def DescribeUserJourneySanKey(request)
          body = send_request('DescribeUserJourneySanKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserJourneySanKeyResponse.new
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

        # 获取项目下的UV列表

        # @param request: Request instance for DescribeUvList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeUvListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeUvListResponse`
        def DescribeUvList(request)
          body = send_request('DescribeUvList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUvListResponse.new
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

        # 获取白名单列表

        # @param request: Request instance for DescribeWhitelists.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeWhitelistsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeWhitelistsResponse`
        def DescribeWhitelists(request)
          body = send_request('DescribeWhitelists', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWhitelistsResponse.new
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

        # 修改字段配置规则

        # @param request: Request instance for ModifyFieldTransformRule.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyFieldTransformRuleRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyFieldTransformRuleResponse`
        def ModifyFieldTransformRule(request)
          body = send_request('ModifyFieldTransformRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFieldTransformRuleResponse.new
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

        # 修改 RUM 业务系统

        # @param request: Request instance for ModifyInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyInstanceResponse`
        def ModifyInstance(request)
          body = send_request('ModifyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceResponse.new
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

        # 更新 Issue 状态，支持 resolve、ignore、reopen 等状态流转动作

        # @param request: Request instance for ModifyIssueStatus.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyIssueStatusRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyIssueStatusResponse`
        def ModifyIssueStatus(request)
          body = send_request('ModifyIssueStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIssueStatusResponse.new
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

        # 更新回放包元数据，仅支持改Release，不重编译。换源码请再调UploadMiniProgramSource。

        # @param request: Request instance for ModifyMiniProgramReplayPack.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyMiniProgramReplayPackRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyMiniProgramReplayPackResponse`
        def ModifyMiniProgramReplayPack(request)
          body = send_request('ModifyMiniProgramReplayPack', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMiniProgramReplayPackResponse.new
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

        # 修改 RUM 应用信息

        # @param request: Request instance for ModifyProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyProjectResponse`
        def ModifyProject(request)
          body = send_request('ModifyProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectResponse.new
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

        # 新增修改限流

        # @param request: Request instance for ModifyProjectLimit.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyProjectLimitRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyProjectLimitResponse`
        def ModifyProjectLimit(request)
          body = send_request('ModifyProjectLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProjectLimitResponse.new
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

        # 配置tdem采样率

        # @param request: Request instance for ModifySampleRate.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifySampleRateRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifySampleRateResponse`
        def ModifySampleRate(request)
          body = send_request('ModifySampleRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySampleRateResponse.new
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

        # 修改应用，仅传需修改字段。AppId 必填。

        # @param request: Request instance for ModifyTDEMApplication.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMApplicationRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMApplicationResponse`
        def ModifyTDEMApplication(request)
          body = send_request('ModifyTDEMApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMApplicationResponse.new
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

        # 修改业务系统名称或描述。越权 UnauthorizedOperation；不存在或已删除 ResourceNotFound。

        # @param request: Request instance for ModifyTDEMBusinessSystem.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMBusinessSystemRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMBusinessSystemResponse`
        def ModifyTDEMBusinessSystem(request)
          body = send_request('ModifyTDEMBusinessSystem', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMBusinessSystemResponse.new
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

        # 修改拨测任务。未出现在请求中的字段保持原值。启动范围传空字符串表示清空该项。Type 和 ExecutionTime 创建后不可修改。暂停和恢复通过 Status 完成，不提供单独的状态接口。

        # @param request: Request instance for ModifyTDEMDialTask.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMDialTaskRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMDialTaskResponse`
        def ModifyTDEMDialTask(request)
          body = send_request('ModifyTDEMDialTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMDialTaskResponse.new
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

        # 按规则 Id 修改字段值替换规则。替代已废弃的 ModifyFieldTransformRule；AppId 为 string。

        # @param request: Request instance for ModifyTDEMFieldTransformRule.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMFieldTransformRuleRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMFieldTransformRuleResponse`
        def ModifyTDEMFieldTransformRule(request)
          body = send_request('ModifyTDEMFieldTransformRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMFieldTransformRuleResponse.new
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

        # 修改漏斗

        # @param request: Request instance for ModifyTDEMFunnel.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMFunnelRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMFunnelResponse`
        def ModifyTDEMFunnel(request)
          body = send_request('ModifyTDEMFunnel', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMFunnelResponse.new
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

        # 整页保存 Web 规则化采样文档：校验 → INSERT 快照 → UPSERT 当前行 → 刷新 Redis 下发缓存。不写 tdem_sample_rate。采样率 0–100、最多两位小数；规则 Conditions 不可为空；Types 含非闭集 key 返回 InvalidParameter。校验失败不写库。无 Restore/Import/Export/Diff。

        # @param request: Request instance for ModifyTDEMSampleConfig.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMSampleConfigRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMSampleConfigResponse`
        def ModifyTDEMSampleConfig(request)
          body = send_request('ModifyTDEMSampleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMSampleConfigResponse.new
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

        # 设置或更新应用采集采样率；ReplaySampleRate 可选。替代已废弃的 ModifySampleRate；AppId 为 string。

        # @param request: Request instance for ModifyTDEMSampleRate.
        # @type request: :class:`Tencentcloud::rum::V20210622::ModifyTDEMSampleRateRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ModifyTDEMSampleRateResponse`
        def ModifyTDEMSampleRate(request)
          body = send_request('ModifyTDEMSampleRate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTDEMSampleRateResponse.new
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

        # 根据步骤配置直接生成漏斗预览报告（不保存漏斗，不需要FunnelId）

        # @param request: Request instance for PreviewTDEMFunnelReport.
        # @type request: :class:`Tencentcloud::rum::V20210622::PreviewTDEMFunnelReportRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::PreviewTDEMFunnelReportResponse`
        def PreviewTDEMFunnelReport(request)
          body = send_request('PreviewTDEMFunnelReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PreviewTDEMFunnelReportResponse.new
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

        # 恢复 RUM 业务系统，恢复后，用户可以正常使用和上报数据

        # @param request: Request instance for ResumeInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::ResumeInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ResumeInstanceResponse`
        def ResumeInstance(request)
          body = send_request('ResumeInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeInstanceResponse.new
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

        # 恢复应用使用与上报数据

        # @param request: Request instance for ResumeProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::ResumeProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ResumeProjectResponse`
        def ResumeProject(request)
          body = send_request('ResumeProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeProjectResponse.new
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

        # 恢复已停止的应用，Status 变为 2。

        # @param request: Request instance for ResumeTDEMApplication.
        # @type request: :class:`Tencentcloud::rum::V20210622::ResumeTDEMApplicationRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::ResumeTDEMApplicationResponse`
        def ResumeTDEMApplication(request)
          body = send_request('ResumeTDEMApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeTDEMApplicationResponse.new
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

        # 停止实例

        # @param request: Request instance for StopInstance.
        # @type request: :class:`Tencentcloud::rum::V20210622::StopInstanceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::StopInstanceResponse`
        def StopInstance(request)
          body = send_request('StopInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInstanceResponse.new
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

        # 停止项目使用与上报数据

        # @param request: Request instance for StopProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::StopProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::StopProjectResponse`
        def StopProject(request)
          body = send_request('StopProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopProjectResponse.new
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

        # 停止应用采集，Status 变为 6。

        # @param request: Request instance for StopTDEMApplication.
        # @type request: :class:`Tencentcloud::rum::V20210622::StopTDEMApplicationRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::StopTDEMApplicationResponse`
        def StopTDEMApplication(request)
          body = send_request('StopTDEMApplication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopTDEMApplicationResponse.new
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

        # 上传微信小程序源码zip并同步编译回放包。控制台传FileBase64；zip需含app.json，跳过node_modules。同AppId+BundleHash且已ready则幂等。

        # @param request: Request instance for UploadMiniProgramSource.
        # @type request: :class:`Tencentcloud::rum::V20210622::UploadMiniProgramSourceRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::UploadMiniProgramSourceResponse`
        def UploadMiniProgramSource(request)
          body = send_request('UploadMiniProgramSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadMiniProgramSourceResponse.new
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

        # 登记已上传的符号制品。请先获取上传凭证并将文件上传到 COS。

        # @param request: Request instance for UploadSymbolArtifact.
        # @type request: :class:`Tencentcloud::rum::V20210622::UploadSymbolArtifactRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::UploadSymbolArtifactResponse`
        def UploadSymbolArtifact(request)
          body = send_request('UploadSymbolArtifact', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadSymbolArtifactResponse.new
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