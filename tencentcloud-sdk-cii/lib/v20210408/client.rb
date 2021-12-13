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
  module Cii
    module V20210408
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-04-08'
            api_endpoint = 'cii.tencentcloudapi.com'
            sdk_version = 'CII_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口(CreateAutoClassifyStructureTask)基于提供的客户及保单信息，创建并启动结构化识别任务。

        # @param request: Request instance for CreateAutoClassifyStructureTask.
        # @type request: :class:`Tencentcloud::cii::V20210408::CreateAutoClassifyStructureTaskRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::CreateAutoClassifyStructureTaskResponse`
        def CreateAutoClassifyStructureTask(request)
          body = send_request('CreateAutoClassifyStructureTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAutoClassifyStructureTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateStructureTask)基于提供的客户及保单信息，创建并启动结构化识别任务。

        # @param request: Request instance for CreateStructureTask.
        # @type request: :class:`Tencentcloud::cii::V20210408::CreateStructureTaskRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::CreateStructureTaskResponse`
        def CreateStructureTask(request)
          body = send_request('CreateStructureTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateStructureTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CreateUnderwriteTaskById)用于根据结构化任务ID创建核保任务

        # @param request: Request instance for CreateUnderwriteTaskById.
        # @type request: :class:`Tencentcloud::cii::V20210408::CreateUnderwriteTaskByIdRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::CreateUnderwriteTaskByIdResponse`
        def CreateUnderwriteTaskById(request)
          body = send_request('CreateUnderwriteTaskById', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUnderwriteTaskByIdResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeMachineUnderwrite)用于查询机器核保任务数据

        # @param request: Request instance for DescribeMachineUnderwrite.
        # @type request: :class:`Tencentcloud::cii::V20210408::DescribeMachineUnderwriteRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::DescribeMachineUnderwriteResponse`
        def DescribeMachineUnderwrite(request)
          body = send_request('DescribeMachineUnderwrite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMachineUnderwriteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 结构化对比查询接口，对比结构化复核前后数据差异，查询识别正确率，召回率。

        # @param request: Request instance for DescribeStructCompareData.
        # @type request: :class:`Tencentcloud::cii::V20210408::DescribeStructCompareDataRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::DescribeStructCompareDataResponse`
        def DescribeStructCompareData(request)
          body = send_request('DescribeStructCompareData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStructCompareDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 结构化复核差异查询接口，对比结构化复核前后数据差异，返回差异的部分。

        # @param request: Request instance for DescribeStructureDifference.
        # @type request: :class:`Tencentcloud::cii::V20210408::DescribeStructureDifferenceRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::DescribeStructureDifferenceResponse`
        def DescribeStructureDifference(request)
          body = send_request('DescribeStructureDifference', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStructureDifferenceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DescribeStructureResult)用于查询结构化结果接口

        # @param request: Request instance for DescribeStructureResult.
        # @type request: :class:`Tencentcloud::cii::V20210408::DescribeStructureResultRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::DescribeStructureResultResponse`
        def DescribeStructureResult(request)
          body = send_request('DescribeStructureResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStructureResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 依据任务ID获取结构化结果接口。

        # @param request: Request instance for DescribeStructureTaskResult.
        # @type request: :class:`Tencentcloud::cii::V20210408::DescribeStructureTaskResultRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::DescribeStructureTaskResultResponse`
        def DescribeStructureTaskResult(request)
          body = send_request('DescribeStructureTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStructureTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 上传医疗影像文件，可以用来做结构化。

        # @param request: Request instance for UploadMedicalFile.
        # @type request: :class:`Tencentcloud::cii::V20210408::UploadMedicalFileRequest`
        # @rtype: :class:`Tencentcloud::cii::V20210408::UploadMedicalFileResponse`
        def UploadMedicalFile(request)
            options = {'IsMultipart': True, 'BinaryParams': [u'File']}
          body = send_request('UploadMedicalFile', request.serialize, options)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadMedicalFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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