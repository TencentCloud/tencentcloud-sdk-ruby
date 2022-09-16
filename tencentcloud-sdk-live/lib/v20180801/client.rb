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
  module Live
    module V20180801
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-08-01'
            api_endpoint = 'live.tencentcloudapi.com'
            sdk_version = 'LIVE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 针对大型活动直播，通过对直播流设置延时来控制现场与观众播放画面的时间间隔，避免突发状况造成影响。

        # 注意：如果在推流前设置延播，需要提前5分钟设置，目前该接口只支持流粒度。

        # @param request: Request instance for AddDelayLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::AddDelayLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AddDelayLiveStreamResponse`
        def AddDelayLiveStream(request)
          body = send_request('AddDelayLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddDelayLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加域名，一次只能提交一个域名。域名必须已备案。

        # @param request: Request instance for AddLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::AddLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AddLiveDomainResponse`
        def AddLiveDomain(request)
          body = send_request('AddLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLiveDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加水印，成功返回水印 ID 后，需要调用[CreateLiveWatermarkRule](/document/product/267/32629)接口将水印 ID 绑定到流使用。
        # 水印数量上限 100，超过后需要先删除，再添加。

        # @param request: Request instance for AddLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::AddLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AddLiveWatermarkResponse`
        def AddLiveWatermark(request)
          body = send_request('AddLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddLiveWatermarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证用户是否拥有特定直播域名。

        # @param request: Request instance for AuthenticateDomainOwner.
        # @type request: :class:`Tencentcloud::live::V20180801::AuthenticateDomainOwnerRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::AuthenticateDomainOwnerResponse`
        def AuthenticateDomainOwner(request)
          body = send_request('AuthenticateDomainOwner', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuthenticateDomainOwnerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用来取消混流。用法与 mix_streamv2.cancel_mix_stream 基本一致。

        # @param request: Request instance for CancelCommonMixStream.
        # @type request: :class:`Tencentcloud::live::V20180801::CancelCommonMixStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CancelCommonMixStreamResponse`
        def CancelCommonMixStream(request)
          body = send_request('CancelCommonMixStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CancelCommonMixStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用来创建通用混流。用法与旧接口 mix_streamv2.start_mix_stream_advanced 基本一致。
        # 注意：当前最多支持16路混流。
        # 最佳实践：https://cloud.tencent.com/document/product/267/45566

        # @param request: Request instance for CreateCommonMixStream.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateCommonMixStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateCommonMixStreamResponse`
        def CreateCommonMixStream(request)
          body = send_request('CreateCommonMixStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCommonMixStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建回调规则，需要先调用[CreateLiveCallbackTemplate](/document/product/267/32637)接口创建回调模板，将返回的模板id绑定到域名/路径进行使用。
        # <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。

        # @param request: Request instance for CreateLiveCallbackRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackRuleResponse`
        def CreateLiveCallbackRule(request)
          body = send_request('CreateLiveCallbackRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveCallbackRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建回调模板，成功返回模板id后，需要调用[CreateLiveCallbackRule](/document/product/267/32638)接口将模板 ID 绑定到域名/路径使用。
        # <br>回调协议相关文档：[事件消息通知](/document/product/267/32744)。
        # 注意：至少填写一个回调 URL。

        # @param request: Request instance for CreateLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveCallbackTemplateResponse`
        def CreateLiveCallbackTemplate(request)
          body = send_request('CreateLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveCallbackTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建直播拉流任务。支持将外部已有的点播文件，或者直播源拉取过来转推到指定的目标地址。
        # 注意：
        # 1. 默认支持任务数上限20个，如有特殊需求，可通过提单到售后进行评估增加上限。
        # 2. 源流视频编码目前只支持: H264, H265。其他编码格式建议先进行转码处理。
        # 3. 源流音频编码目前只支持: AAC。其他编码格式建议先进行转码处理。
        # 4. 可在控制台开启过期自动清理，避免过期任务占用任务数额度。
        # 5. 拉流转推功能为计费增值服务，计费规则详情可参见[计费文档](https://cloud.tencent.com/document/product/267/53308)。
        # 6. 拉流转推功能仅提供内容拉取与推送服务，请确保内容已获得授权并符合内容传播相关的法律法规。若内容有侵权或违规相关问题，云直播会停止相关的功能服务并保留追究法律责任的权利。

        # @param request: Request instance for CreateLivePullStreamTask.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLivePullStreamTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLivePullStreamTaskResponse`
        def CreateLivePullStreamTask(request)
          body = send_request('CreateLivePullStreamTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLivePullStreamTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # - 使用前提
        #   1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
        #   2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2838)。

        # - 模式说明
        #   该接口支持两种录制模式：
        #   1. 定时录制模式【默认模式】。
        #     需要传入开始时间与结束时间，录制任务根据起止时间自动开始与结束。在所设置结束时间过期之前（且未调用StopLiveRecord提前终止任务），录制任务都是有效的，期间多次断流然后重推都会启动录制任务。
        #   2. 实时视频录制模式。
        #     忽略传入的开始时间，在录制任务创建后立即开始录制，录制时长支持最大为30分钟，如果传入的结束时间与当前时间差大于30分钟，则按30分钟计算，实时视频录制主要用于录制精彩视频场景，时长建议控制在5分钟以内。

        # - 注意事项
        #   1. 调用接口超时设置应大于3秒，小于3秒重试以及按不同起止时间调用都有可能产生重复录制任务，进而导致额外录制费用。
        #   2. 受限于音视频文件格式（FLV/MP4/HLS）对编码类型的支持，视频编码类型支持 H.264，音频编码类型支持 AAC。
        #   3. 为避免恶意或非主观的频繁 API 请求，对定时录制模式最大创建任务数做了限制：其中，当天可以创建的最大任务数不超过4000（不含已删除的任务）；当前时刻并发运行的任务数不超过400。有超出此限制的需要提工单申请。
        #   4. 此调用方式暂时不支持海外推流录制。

        # @param request: Request instance for CreateLiveRecord.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveRecordRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveRecordResponse`
        def CreateLiveRecord(request)
          body = send_request('CreateLiveRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建录制规则，需要先调用[CreateLiveRecordTemplate](/document/product/267/32614)接口创建录制模板，将返回的模板id绑定到流使用。
        # <br>录制相关文档：[直播录制](/document/product/267/32739)。

        # @param request: Request instance for CreateLiveRecordRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveRecordRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveRecordRuleResponse`
        def CreateLiveRecordRule(request)
          body = send_request('CreateLiveRecordRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建录制模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveRecordRule](/document/product/267/32615)接口，将模板id绑定到流进行使用。
        # <br>录制相关文档：[直播录制](/document/product/267/32739)。

        # @param request: Request instance for CreateLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveRecordTemplateResponse`
        def CreateLiveRecordTemplate(request)
          body = send_request('CreateLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建截图规则，需要先调用[CreateLiveSnapshotTemplate](/document/product/267/32624)接口创建截图模板，然后将返回的模板 ID 绑定到流进行使用。
        # <br>截图相关文档：[直播截图](/document/product/267/32737)。
        # 注意：单个域名仅支持关联一个截图模板。

        # @param request: Request instance for CreateLiveSnapshotRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotRuleResponse`
        def CreateLiveSnapshotRule(request)
          body = send_request('CreateLiveSnapshotRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveSnapshotRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建截图模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveSnapshotRule](/document/product/267/32625)接口，将模板id绑定到流使用。
        # <br>截图相关文档：[直播截图](/document/product/267/32737)。

        # @param request: Request instance for CreateLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveSnapshotTemplateResponse`
        def CreateLiveSnapshotTemplate(request)
          body = send_request('CreateLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveSnapshotTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建转码规则，需要先调用[CreateLiveTranscodeTemplate](/document/product/267/32646)接口创建转码模板，将返回的模板id绑定到流使用。
        # <br>转码相关文档：[直播转封装及转码](/document/product/267/32736)。

        # @param request: Request instance for CreateLiveTranscodeRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeRuleResponse`
        def CreateLiveTranscodeRule(request)
          body = send_request('CreateLiveTranscodeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveTranscodeRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建转码模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveTranscodeRule](/document/product/267/32647)接口，将返回的模板id绑定到流使用。
        # <br>转码相关文档：[直播转封装及转码](/document/product/267/32736)。

        # @param request: Request instance for CreateLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveTranscodeTemplateResponse`
        def CreateLiveTranscodeTemplate(request)
          body = send_request('CreateLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveTranscodeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建水印规则，需要先调用[AddLiveWatermark](/document/product/267/30154)接口添加水印，将返回的水印id绑定到流使用。

        # @param request: Request instance for CreateLiveWatermarkRule.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateLiveWatermarkRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateLiveWatermarkRuleResponse`
        def CreateLiveWatermarkRule(request)
          body = send_request('CreateLiveWatermarkRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLiveWatermarkRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建临时拉流转推任务，目前限制添加10条任务。

        # 注意：该接口用于创建临时拉流转推任务，
        # 拉流源地址即 FromUrl 可以是腾讯或非腾讯数据源，
        # 但转推目标地址即 ToUrl 目前限制为已注册的腾讯直播域名。

        # @param request: Request instance for CreatePullStreamConfig.
        # @type request: :class:`Tencentcloud::live::V20180801::CreatePullStreamConfigRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreatePullStreamConfigResponse`
        def CreatePullStreamConfig(request)
          body = send_request('CreatePullStreamConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePullStreamConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个在指定时间启动、结束的录制任务，并使用指定录制模板ID对应的配置进行录制。
        # - 使用前提
        # 1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
        # 2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2837)。
        # - 注意事项
        # 1. 断流会结束当前录制并生成录制文件。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常录制，与是否多次推、断流无关。
        # 2. 使用上避免创建时间段相互重叠的录制任务。若同一条流当前存在多个时段重叠的任务，为避免重复录制系统将启动最多3个录制任务。
        # 3. 创建的录制任务记录在平台侧只保留3个月。
        # 4. 当前录制任务管理API（[CreateRecordTask](https://cloud.tencent.com/document/product/267/45983)/[StopRecordTask](https://cloud.tencent.com/document/product/267/45981)/[DeleteRecordTask](https://cloud.tencent.com/document/product/267/45982)）与旧API（CreateLiveRecord/StopLiveRecord/DeleteLiveRecord）不兼容，两套接口不能混用。
        # 5. 避免 创建录制任务 与 推流 操作同时进行，可能导致因录制任务未生效而引起任务延迟启动问题，两者操作间隔建议大于3秒。

        # @param request: Request instance for CreateRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateRecordTaskResponse`
        def CreateRecordTask(request)
          body = send_request('CreateRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRecordTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建一个在指定时间启动、结束的截图任务，并使用指定截图模板ID对应的配置进行截图。
        # - 注意事项
        # 1. 断流会结束当前截图。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常截图，与是否多次推、断流无关。
        # 2. 使用上避免创建时间段相互重叠的截图任务。若同一条流当前存在多个时段重叠的任务，为避免重复系统将启动最多3个截图任务。
        # 3. 创建的截图任务记录在平台侧只保留3个月。
        # 4. 当前截图任务管理API（CreateScreenshotTask/StopScreenshotTask/DeleteScreenshotTask）与旧API（CreateLiveInstantSnapshot/StopLiveInstantSnapshot）不兼容，两套接口不能混用。
        # 5. 避免 创建截图任务 与 推流 操作同时进行，可能导致因截图任务未生效而引起任务延迟启动问题，两者操作间隔建议大于3秒。

        # @param request: Request instance for CreateScreenshotTask.
        # @type request: :class:`Tencentcloud::live::V20180801::CreateScreenshotTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::CreateScreenshotTaskResponse`
        def CreateScreenshotTask(request)
          body = send_request('CreateScreenshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScreenshotTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除回调规则。

        # @param request: Request instance for DeleteLiveCallbackRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackRuleResponse`
        def DeleteLiveCallbackRule(request)
          body = send_request('DeleteLiveCallbackRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveCallbackRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除回调模板。

        # @param request: Request instance for DeleteLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveCallbackTemplateResponse`
        def DeleteLiveCallbackTemplate(request)
          body = send_request('DeleteLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveCallbackTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除已添加的直播域名

        # @param request: Request instance for DeleteLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveDomainResponse`
        def DeleteLiveDomain(request)
          body = send_request('DeleteLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除接口 CreateLivePullStreamTask 创建的拉流任务。
        # 注意：
        # 1. 入参中的 TaskId 为 CreateLivePullStreamTask 接口创建时返回的TaskId。
        # 2. 也可通过 DescribeLivePullStreamTasks 进行查询创建的任务。

        # @param request: Request instance for DeleteLivePullStreamTask.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLivePullStreamTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLivePullStreamTaskResponse`
        def DeleteLivePullStreamTask(request)
          body = send_request('DeleteLivePullStreamTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLivePullStreamTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注：DeleteLiveRecord 接口仅用于删除录制任务记录，不具备停止录制的功能，也不能删除正在进行中的录制。如果需要停止录制任务，请使用终止录制[StopLiveRecord](/document/product/267/30146) 接口。

        # @param request: Request instance for DeleteLiveRecord.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordResponse`
        def DeleteLiveRecord(request)
          body = send_request('DeleteLiveRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除录制规则。

        # @param request: Request instance for DeleteLiveRecordRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordRuleResponse`
        def DeleteLiveRecordRule(request)
          body = send_request('DeleteLiveRecordRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除录制模板。

        # @param request: Request instance for DeleteLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveRecordTemplateResponse`
        def DeleteLiveRecordTemplate(request)
          body = send_request('DeleteLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除截图规则。

        # @param request: Request instance for DeleteLiveSnapshotRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotRuleResponse`
        def DeleteLiveSnapshotRule(request)
          body = send_request('DeleteLiveSnapshotRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveSnapshotRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除截图模板

        # @param request: Request instance for DeleteLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveSnapshotTemplateResponse`
        def DeleteLiveSnapshotTemplate(request)
          body = send_request('DeleteLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveSnapshotTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除转码规则。
        # DomainName+AppName+StreamName+TemplateId唯一标识单个转码规则，如需删除需要强匹配。其中TemplateId必填，其余参数为空时也需要传空字符串进行强匹配。

        # @param request: Request instance for DeleteLiveTranscodeRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeRuleResponse`
        def DeleteLiveTranscodeRule(request)
          body = send_request('DeleteLiveTranscodeRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveTranscodeRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除转码模板。

        # @param request: Request instance for DeleteLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveTranscodeTemplateResponse`
        def DeleteLiveTranscodeTemplate(request)
          body = send_request('DeleteLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveTranscodeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除水印。

        # @param request: Request instance for DeleteLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkResponse`
        def DeleteLiveWatermark(request)
          body = send_request('DeleteLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveWatermarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除水印规则

        # @param request: Request instance for DeleteLiveWatermarkRule.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkRuleRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteLiveWatermarkRuleResponse`
        def DeleteLiveWatermarkRule(request)
          body = send_request('DeleteLiveWatermarkRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLiveWatermarkRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除直播拉流配置。

        # @param request: Request instance for DeletePullStreamConfig.
        # @type request: :class:`Tencentcloud::live::V20180801::DeletePullStreamConfigRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeletePullStreamConfigResponse`
        def DeletePullStreamConfig(request)
          body = send_request('DeletePullStreamConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePullStreamConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除录制任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。

        # @param request: Request instance for DeleteRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteRecordTaskResponse`
        def DeleteRecordTask(request)
          body = send_request('DeleteRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRecordTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除截图任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。

        # @param request: Request instance for DeleteScreenshotTask.
        # @type request: :class:`Tencentcloud::live::V20180801::DeleteScreenshotTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DeleteScreenshotTaskResponse`
        def DeleteScreenshotTask(request)
          body = send_request('DeleteScreenshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScreenshotTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 输入某个时间点（1分钟维度），查询该时间点所有流的下行信息。

        # @param request: Request instance for DescribeAllStreamPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeAllStreamPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeAllStreamPlayInfoListResponse`
        def DescribeAllStreamPlayInfoList(request)
          body = send_request('DescribeAllStreamPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllStreamPlayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 海外分区直播播放带宽和流量数据查询。

        # @param request: Request instance for DescribeAreaBillBandwidthAndFluxList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeAreaBillBandwidthAndFluxListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeAreaBillBandwidthAndFluxListResponse`
        def DescribeAreaBillBandwidthAndFluxList(request)
          body = send_request('DescribeAreaBillBandwidthAndFluxList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAreaBillBandwidthAndFluxListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播播放带宽和流量数据查询。

        # @param request: Request instance for DescribeBillBandwidthAndFluxList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeBillBandwidthAndFluxListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeBillBandwidthAndFluxListResponse`
        def DescribeBillBandwidthAndFluxList(request)
          body = send_request('DescribeBillBandwidthAndFluxList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillBandwidthAndFluxListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询回调事件。

        # @param request: Request instance for DescribeCallbackRecordsList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeCallbackRecordsListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeCallbackRecordsListResponse`
        def DescribeCallbackRecordsList(request)
          body = send_request('DescribeCallbackRecordsList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCallbackRecordsListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询并发录制路数，对慢直播和普通直播适用。

        # @param request: Request instance for DescribeConcurrentRecordStreamNum.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeConcurrentRecordStreamNumRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeConcurrentRecordStreamNumResponse`
        def DescribeConcurrentRecordStreamNum(request)
          body = send_request('DescribeConcurrentRecordStreamNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConcurrentRecordStreamNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询直播转推计费带宽，查询时间范围最大支持3个月内的数据，时间跨度最长31天。

        # @param request: Request instance for DescribeDeliverBandwidthList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeDeliverBandwidthListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeDeliverBandwidthListResponse`
        def DescribeDeliverBandwidthList(request)
          body = send_request('DescribeDeliverBandwidthList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeliverBandwidthListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询按省份和运营商分组的下行播放数据。

        # @param request: Request instance for DescribeGroupProIspPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeGroupProIspPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeGroupProIspPlayInfoListResponse`
        def DescribeGroupProIspPlayInfoList(request)
          body = send_request('DescribeGroupProIspPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupProIspPlayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某段时间内5分钟粒度的各播放http状态码的个数。
        # 备注：数据延迟1小时，如10:00-10:59点的数据12点才能查到。

        # @param request: Request instance for DescribeHttpStatusInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeHttpStatusInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeHttpStatusInfoListResponse`
        def DescribeHttpStatusInfoList(request)
          body = send_request('DescribeHttpStatusInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHttpStatusInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取回调规则列表

        # @param request: Request instance for DescribeLiveCallbackRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackRulesResponse`
        def DescribeLiveCallbackRules(request)
          body = send_request('DescribeLiveCallbackRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCallbackRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个回调模板。

        # @param request: Request instance for DescribeLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplateResponse`
        def DescribeLiveCallbackTemplate(request)
          body = send_request('DescribeLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCallbackTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取回调模板列表

        # @param request: Request instance for DescribeLiveCallbackTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCallbackTemplatesResponse`
        def DescribeLiveCallbackTemplates(request)
          body = send_request('DescribeLiveCallbackTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCallbackTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取证书信息

        # @param request: Request instance for DescribeLiveCert.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCertResponse`
        def DescribeLiveCert(request)
          body = send_request('DescribeLiveCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取证书信息列表

        # @param request: Request instance for DescribeLiveCerts.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveCertsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveCertsResponse`
        def DescribeLiveCerts(request)
          body = send_request('DescribeLiveCerts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveCertsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取直播延播列表。

        # @param request: Request instance for DescribeLiveDelayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDelayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDelayInfoListResponse`
        def DescribeLiveDelayInfoList(request)
          body = send_request('DescribeLiveDelayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDelayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询直播域名信息。

        # @param request: Request instance for DescribeLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainResponse`
        def DescribeLiveDomain(request)
          body = send_request('DescribeLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取域名证书信息。

        # @param request: Request instance for DescribeLiveDomainCert.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainCertResponse`
        def DescribeLiveDomainCert(request)
          body = send_request('DescribeLiveDomainCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询绑定证书的域名列表。

        # @param request: Request instance for DescribeLiveDomainCertBindings.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainCertBindingsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainCertBindingsResponse`
        def DescribeLiveDomainCertBindings(request)
          body = send_request('DescribeLiveDomainCertBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainCertBindingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实时的域名维度下行播放数据，由于数据处理有耗时，接口默认查询4分钟前的准实时数据。

        # @param request: Request instance for DescribeLiveDomainPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainPlayInfoListResponse`
        def DescribeLiveDomainPlayInfoList(request)
          body = send_request('DescribeLiveDomainPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainPlayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询直播域名 Referer 黑白名单配置。
        # 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。

        # @param request: Request instance for DescribeLiveDomainReferer.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainRefererRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainRefererResponse`
        def DescribeLiveDomainReferer(request)
          body = send_request('DescribeLiveDomainReferer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainRefererResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据域名状态、类型等信息查询用户的域名信息。

        # @param request: Request instance for DescribeLiveDomains.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveDomainsResponse`
        def DescribeLiveDomains(request)
          body = send_request('DescribeLiveDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取禁推流列表。

        # 注意：该接口仅作为直播辅助查询接口，重要业务场景不可强依赖该接口。

        # @param request: Request instance for DescribeLiveForbidStreamList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveForbidStreamListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveForbidStreamListResponse`
        def DescribeLiveForbidStreamList(request)
          body = send_request('DescribeLiveForbidStreamList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveForbidStreamListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户套餐包总量、使用量、剩余量、包状态、购买时间和过期时间等。

        # @param request: Request instance for DescribeLivePackageInfo.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePackageInfoRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePackageInfoResponse`
        def DescribeLivePackageInfo(request)
          body = send_request('DescribeLivePackageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePackageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询播放鉴权key。

        # @param request: Request instance for DescribeLivePlayAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePlayAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePlayAuthKeyResponse`
        def DescribeLivePlayAuthKey(request)
          body = send_request('DescribeLivePlayAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePlayAuthKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询使用 CreateLivePullStreamTask 接口创建的直播拉流任务。
        # 排序方式：默认按更新时间 倒序排列。

        # @param request: Request instance for DescribeLivePullStreamTasks.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePullStreamTasksRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePullStreamTasksResponse`
        def DescribeLivePullStreamTasks(request)
          body = send_request('DescribeLivePullStreamTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePullStreamTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询直播推流鉴权key

        # @param request: Request instance for DescribeLivePushAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLivePushAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLivePushAuthKeyResponse`
        def DescribeLivePushAuthKey(request)
          body = send_request('DescribeLivePushAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLivePushAuthKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取录制规则列表

        # @param request: Request instance for DescribeLiveRecordRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordRulesResponse`
        def DescribeLiveRecordRules(request)
          body = send_request('DescribeLiveRecordRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个录制模板。

        # @param request: Request instance for DescribeLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplateResponse`
        def DescribeLiveRecordTemplate(request)
          body = send_request('DescribeLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取录制模板列表。

        # @param request: Request instance for DescribeLiveRecordTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveRecordTemplatesResponse`
        def DescribeLiveRecordTemplates(request)
          body = send_request('DescribeLiveRecordTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveRecordTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取截图规则列表

        # @param request: Request instance for DescribeLiveSnapshotRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotRulesResponse`
        def DescribeLiveSnapshotRules(request)
          body = send_request('DescribeLiveSnapshotRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveSnapshotRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个截图模板。

        # @param request: Request instance for DescribeLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplateResponse`
        def DescribeLiveSnapshotTemplate(request)
          body = send_request('DescribeLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveSnapshotTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取截图模板列表。

        # @param request: Request instance for DescribeLiveSnapshotTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveSnapshotTemplatesResponse`
        def DescribeLiveSnapshotTemplates(request)
          body = send_request('DescribeLiveSnapshotTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveSnapshotTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询推断流事件。<br>

        # 注意：
        # 1. 该接口提供离线推断流记录查询功能，不可作为重要业务场景强依赖接口。
        # 2. 该接口可通过使用IsFilter进行过滤，返回推流历史记录。

        # @param request: Request instance for DescribeLiveStreamEventList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamEventListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamEventListResponse`
        def DescribeLiveStreamEventList(request)
          body = send_request('DescribeLiveStreamEventList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamEventListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回正在直播中的流列表。适用于推流成功后查询在线流信息。

        # 注意：
        # 1. 该接口仅提供辅助查询在线流列表功能，业务重要场景不可强依赖该接口。
        # 2. 该接口仅适用于流数少于2万路的情况，对于流数较大用户请联系售后。

        # @param request: Request instance for DescribeLiveStreamOnlineList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamOnlineListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamOnlineListResponse`
        def DescribeLiveStreamOnlineList(request)
          body = send_request('DescribeLiveStreamOnlineList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamOnlineListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回已经推过流的流列表。<br>
        # 注意：分页最多支持查询1万条记录，可通过调整查询时间范围来获取更多数据。

        # @param request: Request instance for DescribeLiveStreamPublishedList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPublishedListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPublishedListResponse`
        def DescribeLiveStreamPublishedList(request)
          body = send_request('DescribeLiveStreamPublishedList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamPublishedListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询所有实时流的推流信息，包括客户端IP，服务端IP，帧率，码率，域名，开始推流时间。

        # @param request: Request instance for DescribeLiveStreamPushInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPushInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamPushInfoListResponse`
        def DescribeLiveStreamPushInfoList(request)
          body = send_request('DescribeLiveStreamPushInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamPushInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 返回直播中、无推流或者禁播等状态。

        # 使用建议：
        # 该接口提供实时流状态查询功能，鉴于网络抖动等一些不可抗因素，使用该接口作为判断主播是否开播等重要业务场景时，请参考以下使用建议。
        # 1. 优先使用业务自身的房间开关播逻辑，判断主播是否在线，譬如客户端开播信令和主播在线心跳等。
        # 2. 对于没有房间管理的直播场景，可以结合以下方案综合判断。
        # 2.1 根据[推断流事件通知](/document/product/267/20388) 判断主播在线状态。
        # 2.2 通过定时（间隔>1min）查询[直播中的流接口](/document/api/267/20472)，判断主播是否在线。
        # 2.3 通过 本接口 查询直播流状态，判断主播是否在线。
        # 2.4 以上任一方式判断为在线，都认为主播开播中，并且接口查询超时或解析异常时，也默认为在线，减少对业务的影响。

        # @param request: Request instance for DescribeLiveStreamState.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamStateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveStreamStateResponse`
        def DescribeLiveStreamState(request)
          body = send_request('DescribeLiveStreamState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveStreamStateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提供给客户对账，按天统计，维度：推流域名、时移文件时长（累加）、配置天数（不累加）、时移总时长（累加）。

        # @param request: Request instance for DescribeLiveTimeShiftBillInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTimeShiftBillInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTimeShiftBillInfoListResponse`
        def DescribeLiveTimeShiftBillInfoList(request)
          body = send_request('DescribeLiveTimeShiftBillInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTimeShiftBillInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 支持查询某天或某段时间的转码详细信息。

        # @param request: Request instance for DescribeLiveTranscodeDetailInfo.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeDetailInfoRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeDetailInfoResponse`
        def DescribeLiveTranscodeDetailInfo(request)
          body = send_request('DescribeLiveTranscodeDetailInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeDetailInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取转码规则列表

        # @param request: Request instance for DescribeLiveTranscodeRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeRulesResponse`
        def DescribeLiveTranscodeRules(request)
          body = send_request('DescribeLiveTranscodeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个转码模板。

        # @param request: Request instance for DescribeLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplateResponse`
        def DescribeLiveTranscodeTemplate(request)
          body = send_request('DescribeLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取转码模板列表。

        # @param request: Request instance for DescribeLiveTranscodeTemplates.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTemplatesResponse`
        def DescribeLiveTranscodeTemplates(request)
          body = send_request('DescribeLiveTranscodeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询转码总量数据，可查询近三个月内的数据。
        # 注意：
        # 如果是查询某一天内，则返回5分钟粒度数据；
        # 如果是查询跨天或指定域名， 则返回1小时粒度数据。

        # @param request: Request instance for DescribeLiveTranscodeTotalInfo.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTotalInfoRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveTranscodeTotalInfoResponse`
        def DescribeLiveTranscodeTotalInfo(request)
          body = send_request('DescribeLiveTranscodeTotalInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveTranscodeTotalInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取单个水印信息。

        # @param request: Request instance for DescribeLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkResponse`
        def DescribeLiveWatermark(request)
          body = send_request('DescribeLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveWatermarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取水印规则列表。

        # @param request: Request instance for DescribeLiveWatermarkRules.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkRulesRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarkRulesResponse`
        def DescribeLiveWatermarkRules(request)
          body = send_request('DescribeLiveWatermarkRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveWatermarkRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询水印列表。

        # @param request: Request instance for DescribeLiveWatermarks.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarksRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLiveWatermarksResponse`
        def DescribeLiveWatermarks(request)
          body = send_request('DescribeLiveWatermarks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLiveWatermarksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量获取日志URL。

        # @param request: Request instance for DescribeLogDownloadList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeLogDownloadListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeLogDownloadListResponse`
        def DescribeLogDownloadList(request)
          body = send_request('DescribeLogDownloadList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogDownloadListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询下行播放错误码信息，某段时间内1分钟粒度的各http错误码出现的次数，包括4xx，5xx。


        # @param request: Request instance for DescribePlayErrorCodeDetailInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeDetailInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeDetailInfoListResponse`
        def DescribePlayErrorCodeDetailInfoList(request)
          body = send_request('DescribePlayErrorCodeDetailInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayErrorCodeDetailInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询下行播放错误码信息。

        # @param request: Request instance for DescribePlayErrorCodeSumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeSumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePlayErrorCodeSumInfoListResponse`
        def DescribePlayErrorCodeSumInfoList(request)
          body = send_request('DescribePlayErrorCodeSumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlayErrorCodeSumInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某段时间内每个国家地区每个省份每个运营商的平均每秒流量，总流量，总请求数信息。

        # @param request: Request instance for DescribeProIspPlaySumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeProIspPlaySumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeProIspPlaySumInfoListResponse`
        def DescribeProIspPlaySumInfoList(request)
          body = send_request('DescribeProIspPlaySumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProIspPlaySumInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某省份某运营商下行播放数据，包括带宽，流量，请求数，并发连接数信息。

        # @param request: Request instance for DescribeProvinceIspPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeProvinceIspPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeProvinceIspPlayInfoListResponse`
        def DescribeProvinceIspPlayInfoList(request)
          body = send_request('DescribeProvinceIspPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProvinceIspPlayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询直播拉流配置。

        # @param request: Request instance for DescribePullStreamConfigs.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePullStreamConfigsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePullStreamConfigsResponse`
        def DescribePullStreamConfigs(request)
          body = send_request('DescribePullStreamConfigs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePullStreamConfigsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播推流带宽和流量数据查询。
        # 推流计费会先取全球推流用量和全球播放用量进行比较，满足计费条件后再按各地区用量出账。详情参见[计费文档](https://cloud.tencent.com/document/product/267/34175)。

        # @param request: Request instance for DescribePushBandwidthAndFluxList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribePushBandwidthAndFluxListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribePushBandwidthAndFluxListResponse`
        def DescribePushBandwidthAndFluxList(request)
          body = send_request('DescribePushBandwidthAndFluxList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePushBandwidthAndFluxListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时间段范围内启动和结束的录制任务列表。
        # - 使用前提
        # 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
        # 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。

        # @param request: Request instance for DescribeRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeRecordTaskResponse`
        def DescribeRecordTask(request)
          body = send_request('DescribeRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRecordTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口用来查询直播增值业务--截图的张数

        # @param request: Request instance for DescribeScreenShotSheetNumList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeScreenShotSheetNumListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeScreenShotSheetNumListResponse`
        def DescribeScreenShotSheetNumList(request)
          body = send_request('DescribeScreenShotSheetNumList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenShotSheetNumListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定时间段范围内启动和结束的截图任务列表。
        # - 使用前提
        # 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
        # 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。

        # @param request: Request instance for DescribeScreenshotTask.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeScreenshotTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeScreenshotTaskResponse`
        def DescribeScreenshotTask(request)
          body = send_request('DescribeScreenshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScreenshotTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询天维度每条流的播放数据，包括总流量等。

        # @param request: Request instance for DescribeStreamDayPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeStreamDayPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeStreamDayPlayInfoListResponse`
        def DescribeStreamDayPlayInfoList(request)
          body = send_request('DescribeStreamDayPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamDayPlayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询播放数据，支持按流名称查询详细播放数据，也可按播放域名查询详细总数据，数据延迟4分钟左右。
        # 注意：按AppName查询请先联系工单申请，开通后配置生效预计需要5个工作日左右，具体时间以最终回复为准。

        # @param request: Request instance for DescribeStreamPlayInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeStreamPlayInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeStreamPlayInfoListResponse`
        def DescribeStreamPlayInfoList(request)
          body = send_request('DescribeStreamPlayInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamPlayInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询流id的上行推流质量数据，包括音视频的帧率，码率，流逝时间，编码格式等。

        # @param request: Request instance for DescribeStreamPushInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeStreamPushInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeStreamPushInfoListResponse`
        def DescribeStreamPushInfoList(request)
          body = send_request('DescribeStreamPushInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeStreamPushInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某段时间top n客户端ip汇总信息（暂支持top 1000）

        # @param request: Request instance for DescribeTopClientIpSumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeTopClientIpSumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeTopClientIpSumInfoListResponse`
        def DescribeTopClientIpSumInfoList(request)
          body = send_request('DescribeTopClientIpSumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopClientIpSumInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询转码任务数。

        # @param request: Request instance for DescribeTranscodeTaskNum.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeTranscodeTaskNumRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeTranscodeTaskNumResponse`
        def DescribeTranscodeTaskNum(request)
          body = send_request('DescribeTranscodeTaskNum', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTranscodeTaskNumResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 直播上行路数查询

        # @param request: Request instance for DescribeUploadStreamNums.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeUploadStreamNumsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeUploadStreamNumsResponse`
        def DescribeUploadStreamNums(request)
          body = send_request('DescribeUploadStreamNums', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUploadStreamNumsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某时间段top n的域名或流id信息（暂支持top 1000）。

        # @param request: Request instance for DescribeVisitTopSumInfoList.
        # @type request: :class:`Tencentcloud::live::V20180801::DescribeVisitTopSumInfoListRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DescribeVisitTopSumInfoListResponse`
        def DescribeVisitTopSumInfoList(request)
          body = send_request('DescribeVisitTopSumInfoList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVisitTopSumInfoListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 断开推流连接，但可以重新推流。
        # 注：对已经不活跃的流，调用该断流接口时，接口返回成功。

        # @param request: Request instance for DropLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::DropLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::DropLiveStreamResponse`
        def DropLiveStream(request)
          body = send_request('DropLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DropLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 启用状态为停用的直播域名。

        # @param request: Request instance for EnableLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::EnableLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::EnableLiveDomainResponse`
        def EnableLiveDomain(request)
          body = send_request('EnableLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableLiveDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 停止使用某个直播域名。

        # @param request: Request instance for ForbidLiveDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::ForbidLiveDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ForbidLiveDomainResponse`
        def ForbidLiveDomain(request)
          body = send_request('ForbidLiveDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidLiveDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁止某条流的推送，可以预设某个时刻将流恢复。

        # @param request: Request instance for ForbidLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::ForbidLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ForbidLiveStreamResponse`
        def ForbidLiveStream(request)
          body = send_request('ForbidLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ForbidLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改回调模板。

        # @param request: Request instance for ModifyLiveCallbackTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveCallbackTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveCallbackTemplateResponse`
        def ModifyLiveCallbackTemplate(request)
          body = send_request('ModifyLiveCallbackTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveCallbackTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量绑定证书对应的播放域名，并更新启用状态。
        # 新建自有证书将自动上传至腾讯云ssl。

        # @param request: Request instance for ModifyLiveDomainCertBindings.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveDomainCertBindingsRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveDomainCertBindingsResponse`
        def ModifyLiveDomainCertBindings(request)
          body = send_request('ModifyLiveDomainCertBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveDomainCertBindingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置直播域名 Referer 黑白名单。
        # 由于 Referer 信息包含在 http 协议中，在开启配置后，播放协议为 rtmp 或 WebRTC 不会校验 Referer 配置，仍可正常播放。如需配置 Referer 鉴权建议使用 http-flv 或 http-hls 协议播放。

        # @param request: Request instance for ModifyLiveDomainReferer.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveDomainRefererRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveDomainRefererResponse`
        def ModifyLiveDomainReferer(request)
          body = send_request('ModifyLiveDomainReferer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveDomainRefererResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改播放鉴权key

        # @param request: Request instance for ModifyLivePlayAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePlayAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePlayAuthKeyResponse`
        def ModifyLivePlayAuthKey(request)
          body = send_request('ModifyLivePlayAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePlayAuthKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改播放域名信息。

        # @param request: Request instance for ModifyLivePlayDomain.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePlayDomainRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePlayDomainResponse`
        def ModifyLivePlayDomain(request)
          body = send_request('ModifyLivePlayDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePlayDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新直播拉流任务。
        # 1. 不支持修改目标地址，如需推到新地址，请创建新任务。
        # 2. 不支持修改拉流源类型，如需更换，请创建新任务。

        # @param request: Request instance for ModifyLivePullStreamTask.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePullStreamTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePullStreamTaskResponse`
        def ModifyLivePullStreamTask(request)
          body = send_request('ModifyLivePullStreamTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePullStreamTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改直播推流鉴权key

        # @param request: Request instance for ModifyLivePushAuthKey.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLivePushAuthKeyRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLivePushAuthKeyResponse`
        def ModifyLivePushAuthKey(request)
          body = send_request('ModifyLivePushAuthKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLivePushAuthKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改录制模板配置。

        # @param request: Request instance for ModifyLiveRecordTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveRecordTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveRecordTemplateResponse`
        def ModifyLiveRecordTemplate(request)
          body = send_request('ModifyLiveRecordTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveRecordTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改截图模板配置。

        # @param request: Request instance for ModifyLiveSnapshotTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveSnapshotTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveSnapshotTemplateResponse`
        def ModifyLiveSnapshotTemplate(request)
          body = send_request('ModifyLiveSnapshotTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveSnapshotTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改转码模板配置。

        # @param request: Request instance for ModifyLiveTranscodeTemplate.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyLiveTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyLiveTranscodeTemplateResponse`
        def ModifyLiveTranscodeTemplate(request)
          body = send_request('ModifyLiveTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLiveTranscodeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新拉流配置。

        # @param request: Request instance for ModifyPullStreamConfig.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyPullStreamConfigRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyPullStreamConfigResponse`
        def ModifyPullStreamConfig(request)
          body = send_request('ModifyPullStreamConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPullStreamConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改直播拉流配置的状态。

        # @param request: Request instance for ModifyPullStreamStatus.
        # @type request: :class:`Tencentcloud::live::V20180801::ModifyPullStreamStatusRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ModifyPullStreamStatusResponse`
        def ModifyPullStreamStatus(request)
          body = send_request('ModifyPullStreamStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPullStreamStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 取消直播流设置的延时配置，恢复实时直播画面。

        # @param request: Request instance for ResumeDelayLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::ResumeDelayLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ResumeDelayLiveStreamResponse`
        def ResumeDelayLiveStream(request)
          body = send_request('ResumeDelayLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeDelayLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 恢复某条流的推流。

        # @param request: Request instance for ResumeLiveStream.
        # @type request: :class:`Tencentcloud::live::V20180801::ResumeLiveStreamRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::ResumeLiveStreamResponse`
        def ResumeLiveStream(request)
          body = send_request('ResumeLiveStream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeLiveStreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 说明：录制后的文件存放于点播平台。用户如需使用录制功能，需首先自行开通点播账号并确保账号可用。录制文件存放后，相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，请参考对应文档。

        # @param request: Request instance for StopLiveRecord.
        # @type request: :class:`Tencentcloud::live::V20180801::StopLiveRecordRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::StopLiveRecordResponse`
        def StopLiveRecord(request)
          body = send_request('StopLiveRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopLiveRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提前结束录制，中止运行中的录制任务并生成录制文件。任务被成功终止后，本次任务将不再启动。

        # @param request: Request instance for StopRecordTask.
        # @type request: :class:`Tencentcloud::live::V20180801::StopRecordTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::StopRecordTaskResponse`
        def StopRecordTask(request)
          body = send_request('StopRecordTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopRecordTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提前结束截图，中止运行中的截图任务。任务被成功终止后，本次任务将不再启动。

        # @param request: Request instance for StopScreenshotTask.
        # @type request: :class:`Tencentcloud::live::V20180801::StopScreenshotTaskRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::StopScreenshotTaskResponse`
        def StopScreenshotTask(request)
          body = send_request('StopScreenshotTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopScreenshotTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑域名证书

        # @param request: Request instance for UnBindLiveDomainCert.
        # @type request: :class:`Tencentcloud::live::V20180801::UnBindLiveDomainCertRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::UnBindLiveDomainCertResponse`
        def UnBindLiveDomainCert(request)
          body = send_request('UnBindLiveDomainCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindLiveDomainCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新水印。

        # @param request: Request instance for UpdateLiveWatermark.
        # @type request: :class:`Tencentcloud::live::V20180801::UpdateLiveWatermarkRequest`
        # @rtype: :class:`Tencentcloud::live::V20180801::UpdateLiveWatermarkResponse`
        def UpdateLiveWatermark(request)
          body = send_request('UpdateLiveWatermark', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateLiveWatermarkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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