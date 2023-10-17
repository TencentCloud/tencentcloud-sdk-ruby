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
  module Ms
    module V20180408
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-04-08'
            api_endpoint = 'ms.tencentcloudapi.com'
            sdk_version = 'MS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，取消渠道合作加固中的任务

        # @param request: Request instance for CancelEncryptTask.
        # @type request: :class:`Tencentcloud::ms::V20180408::CancelEncryptTaskRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CancelEncryptTaskResponse`
        def CancelEncryptTask(request)
          body = send_request('CancelEncryptTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelEncryptTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将应用和资源进行绑定。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for CreateBindInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateBindInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateBindInstanceResponse`
        def CreateBindInstance(request)
          body = send_request('CreateBindInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBindInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云COS文件存储临时密钥，密钥仅限于临时上传文件，有访问限制和时效性，请保管好临时密钥。

        # @param request: Request instance for CreateCosSecKeyInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateCosSecKeyInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateCosSecKeyInstanceResponse`
        def CreateCosSecKeyInstance(request)
          body = send_request('CreateCosSecKeyInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCosSecKeyInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于创建加固任务。

        # @param request: Request instance for CreateEncryptInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateEncryptInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateEncryptInstanceResponse`
        def CreateEncryptInstance(request)
          body = send_request('CreateEncryptInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEncryptInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。
        # 订单类型有：免费试用、按年收费、按次收费。
        # 应用加固支持的平台类型有：android加固 、ios源码混淆 、sdk加固、applet小程序加固

        # @param request: Request instance for CreateOrderInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateOrderInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateOrderInstanceResponse`
        def CreateOrderInstance(request)
          body = send_request('CreateOrderInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrderInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户可以使用该接口自建资源，只支持白名单用户

        # @param request: Request instance for CreateResourceInstances.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateResourceInstancesRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateResourceInstancesResponse`
        def CreateResourceInstances(request)
          body = send_request('CreateResourceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateResourceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用户通过该接口提交应用进行应用加固，加固后需通过DescribeShieldResult接口查询加固结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for CreateShieldInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateShieldInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateShieldInstanceResponse`
        def CreateShieldInstance(request)
          body = send_request('CreateShieldInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateShieldInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对资源进行策略新增。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for CreateShieldPlanInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::CreateShieldPlanInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::CreateShieldPlanInstanceResponse`
        def CreateShieldPlanInstance(request)
          body = send_request('CreateShieldPlanInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateShieldPlanInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除一个或者多个app加固信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for DeleteShieldInstances.
        # @type request: :class:`Tencentcloud::ms::V20180408::DeleteShieldInstancesRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DeleteShieldInstancesResponse`
        def DeleteShieldInstances(request)
          body = send_request('DeleteShieldInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteShieldInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口采用同步模式请求腾讯APK云检测服务，即时返回检测数据，需要用户用轮询的方式调用本接口来进行样本送检并获取检测结果(每隔60s发送一次请求，传相同的参数，重试30次)，一般情况下0.5h内会出检测结果，最长时间是3h。当Result为ok并且ResultList数组非空有值时，代表检测完毕，若长时间获取不到检测结果，请联系客服。

        # @param request: Request instance for DescribeApkDetectionResult.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeApkDetectionResultRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeApkDetectionResultResponse`
        def DescribeApkDetectionResult(request)
          body = send_request('DescribeApkDetectionResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApkDetectionResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口供渠道合作应用加固使用，接口调用有白名单用户限制，用于查询加固任务，入参中的条件过滤字段均为精准匹配。支持功能点: 1. 多任务分页查询  2.根据任务Id唯一值查询单记录

        # @param request: Request instance for DescribeEncryptInstances.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeEncryptInstancesRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeEncryptInstancesResponse`
        def DescribeEncryptInstances(request)
          body = send_request('DescribeEncryptInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEncryptInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。入参中的条件过滤字段均为精准匹配。

        # @param request: Request instance for DescribeEncryptPlan.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeEncryptPlanRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeEncryptPlanResponse`
        def DescribeEncryptPlan(request)
          body = send_request('DescribeEncryptPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEncryptPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口供渠道合作应用加固使用，接口调用有白名单用户限制。 接口返回的结果为：创建订单后，订单审批状态信息，以及与订单关联的资源状态等信息，入参中的条件过滤字段均为精准匹配.
        # 接口功能点：
        # 1.支持多订单分页查询；
        # 2.支持唯一订单号精准匹配查询；
        # 3.支持唯一资源号精准匹配查询；

        # @param request: Request instance for DescribeOrderInstances.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeOrderInstancesRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeOrderInstancesResponse`
        def DescribeOrderInstances(request)
          body = send_request('DescribeOrderInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOrderInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for DescribeResourceInstances.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeResourceInstancesRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeResourceInstancesResponse`
        def DescribeResourceInstances(request)
          body = send_request('DescribeResourceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查看app列表。
        # 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for DescribeShieldInstances.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeShieldInstancesRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeShieldInstancesResponse`
        def DescribeShieldInstances(request)
          body = send_request('DescribeShieldInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShieldInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询加固策略。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for DescribeShieldPlanInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeShieldPlanInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeShieldPlanInstanceResponse`
        def DescribeShieldPlanInstance(request)
          body = send_request('DescribeShieldPlanInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShieldPlanInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过唯一标识获取加固的结果。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）

        # @param request: Request instance for DescribeShieldResult.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeShieldResultRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeShieldResultResponse`
        def DescribeShieldResult(request)
          body = send_request('DescribeShieldResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeShieldResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 移动安全-网址检测服务

        # @param request: Request instance for DescribeUrlDetectionResult.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeUrlDetectionResultRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeUrlDetectionResultResponse`
        def DescribeUrlDetectionResult(request)
          body = send_request('DescribeUrlDetectionResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUrlDetectionResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取用户基础信息

        # @param request: Request instance for DescribeUserBaseInfoInstance.
        # @type request: :class:`Tencentcloud::ms::V20180408::DescribeUserBaseInfoInstanceRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::DescribeUserBaseInfoInstanceResponse`
        def DescribeUserBaseInfoInstance(request)
          body = send_request('DescribeUserBaseInfoInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserBaseInfoInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # client任务请求

        # @param request: Request instance for RequestLocalTask.
        # @type request: :class:`Tencentcloud::ms::V20180408::RequestLocalTaskRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::RequestLocalTaskResponse`
        def RequestLocalTask(request)
          body = send_request('RequestLocalTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RequestLocalTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新client状态，需要白名单

        # @param request: Request instance for UpdateClientState.
        # @type request: :class:`Tencentcloud::ms::V20180408::UpdateClientStateRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::UpdateClientStateResponse`
        def UpdateClientState(request)
          body = send_request('UpdateClientState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateClientStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新本地任务执行结果

        # @param request: Request instance for UpdateLocalTaskResult.
        # @type request: :class:`Tencentcloud::ms::V20180408::UpdateLocalTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ms::V20180408::UpdateLocalTaskResultResponse`
        def UpdateLocalTaskResult(request)
          body = send_request('UpdateLocalTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateLocalTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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