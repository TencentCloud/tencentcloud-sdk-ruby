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
  module Cdn
    module V20180606
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-06'
            api_endpoint = 'cdn.tencentcloudapi.com'
            sdk_version = 'CDN_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # AddCLSTopicDomains 用于新增域名到某日志主题下

        # @param request: Request instance for AddCLSTopicDomains.
        # @type request: :class:`Tencentcloud::cdn::V20180606::AddCLSTopicDomainsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::AddCLSTopicDomainsResponse`
        def AddCLSTopicDomains(request)
          body = send_request('AddCLSTopicDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCLSTopicDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # AddCdnDomain 用于新增内容分发网络加速域名。1分钟内最多可新增100个域名。

        # @param request: Request instance for AddCdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::AddCdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::AddCdnDomainResponse`
        def AddCdnDomain(request)
          body = send_request('AddCdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateClsLogTopic 用于创建日志主题。注意：一个日志集下至多可创建10个日志主题。

        # @param request: Request instance for CreateClsLogTopic.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateClsLogTopicRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateClsLogTopicResponse`
        def CreateClsLogTopic(request)
          body = send_request('CreateClsLogTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateClsLogTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateDiagnoseUrl 用于添加域名诊断任务URL， <font color=red>将于 **2023年5月31日** 下线</font><br>

        # @param request: Request instance for CreateDiagnoseUrl.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateDiagnoseUrlRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateDiagnoseUrlResponse`
        def CreateDiagnoseUrl(request)
          body = send_request('CreateDiagnoseUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDiagnoseUrlResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 动态打包任务提交接口

        # @param request: Request instance for CreateEdgePackTask.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateEdgePackTaskRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateEdgePackTaskResponse`
        def CreateEdgePackTask(request)
          body = send_request('CreateEdgePackTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEdgePackTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateScdnDomain 用于创建 SCDN 加速域名

        # @param request: Request instance for CreateScdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateScdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateScdnDomainResponse`
        def CreateScdnDomain(request)
          body = send_request('CreateScdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateScdnFailedLogTask 用于重试创建失败的事件日志任务

        # @param request: Request instance for CreateScdnFailedLogTask.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateScdnFailedLogTaskRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateScdnFailedLogTaskResponse`
        def CreateScdnFailedLogTask(request)
          body = send_request('CreateScdnFailedLogTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScdnFailedLogTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateScdnLogTask 用于创建事件日志任务

        # @param request: Request instance for CreateScdnLogTask.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateScdnLogTaskRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateScdnLogTaskResponse`
        def CreateScdnLogTask(request)
          body = send_request('CreateScdnLogTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateScdnLogTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CreateVerifyRecord 用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
        # 生成的解析记录可通过 [VerifyDomainRecord](https://cloud.tencent.com/document/product/228/48117) 完成归属权校验。
        # 注意：生成的解析记录有效期为24小时，超过24小时后，需重新生成。
        # 具体流程可参考：[使用API接口进行域名归属校验](https://cloud.tencent.com/document/product/228/61702#.E6.96.B9.E6.B3.95.E4.B8.89.EF.BC.9Aapi-.E6.8E.A5.E5.8F.A3.E6.93.8D.E4.BD.9C)

        # @param request: Request instance for CreateVerifyRecord.
        # @type request: :class:`Tencentcloud::cdn::V20180606::CreateVerifyRecordRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::CreateVerifyRecordResponse`
        def CreateVerifyRecord(request)
          body = send_request('CreateVerifyRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVerifyRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteCdnDomain 用于删除指定加速域名

        # @param request: Request instance for DeleteCdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DeleteCdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DeleteCdnDomainResponse`
        def DeleteCdnDomain(request)
          body = send_request('DeleteCdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DeleteClsLogTopic 用于删除日志主题。注意：删除后，所有该日志主题下绑定域名的日志将不再继续投递至该主题，已经投递的日志将会被全部清空。生效时间约为 5~15 分钟。

        # @param request: Request instance for DeleteClsLogTopic.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DeleteClsLogTopicRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DeleteClsLogTopicResponse`
        def DeleteClsLogTopic(request)
          body = send_request('DeleteClsLogTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteClsLogTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除SCDN域名

        # @param request: Request instance for DeleteScdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DeleteScdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DeleteScdnDomainResponse`
        def DeleteScdnDomain(request)
          body = send_request('DeleteScdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteScdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeBillingData 用于查询实际计费数据明细。

        # @param request: Request instance for DescribeBillingData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeBillingDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeBillingDataResponse`
        def DescribeBillingData(request)
          body = send_request('DescribeBillingData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # CC统计数据查询

        # @param request: Request instance for DescribeCcData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeCcDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeCcDataResponse`
        def DescribeCcData(request)
          body = send_request('DescribeCcData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeCdnData 用于查询 CDN 实时访问监控数据，支持以下指标查询：

        # + 流量（单位为 byte）
        # + 带宽（单位为 bps）
        # + 请求数（单位为 次）
        # + 命中请求数（单位为 次）
        # + 请求命中率（单位为 %）
        # + 命中流量（单位为 byte）
        # + 流量命中率（单位为 %）
        # + 状态码 2xx 汇总及各 2 开头状态码明细（单位为 个）
        # + 状态码 3xx 汇总及各 3 开头状态码明细（单位为 个）
        # + 状态码 4xx 汇总及各 4 开头状态码明细（单位为 个）
        # + 状态码 5xx 汇总及各 5 开头状态码明细（单位为 个）

        # @param request: Request instance for DescribeCdnData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeCdnDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeCdnDataResponse`
        def DescribeCdnData(request)
          body = send_request('DescribeCdnData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdnDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。

        # @param request: Request instance for DescribeCdnDomainLogs.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeCdnDomainLogsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeCdnDomainLogsResponse`
        def DescribeCdnDomainLogs(request)
          body = send_request('DescribeCdnDomainLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdnDomainLogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeCdnIp 用于查询 CDN IP 归属。
        # （注意：此接口请求频率限制以 CDN 侧限制为准：200次/10分钟）

        # @param request: Request instance for DescribeCdnIp.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeCdnIpRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeCdnIpResponse`
        def DescribeCdnIp(request)
          body = send_request('DescribeCdnIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdnIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCdnOriginIp）用于查询 CDN 回源节点的IP信息。（注：此接口即将下线，不再进行维护，请通过DescribeIpStatus 接口进行查询）

        # @param request: Request instance for DescribeCdnOriginIp.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeCdnOriginIpRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeCdnOriginIpResponse`
        def DescribeCdnOriginIp(request)
          body = send_request('DescribeCdnOriginIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdnOriginIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeCertDomains 用于校验SSL证书并提取证书中包含的域名。

        # @param request: Request instance for DescribeCertDomains.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeCertDomainsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeCertDomainsResponse`
        def DescribeCertDomains(request)
          body = send_request('DescribeCertDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DDoS统计数据查询

        # @param request: Request instance for DescribeDDoSData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeDDoSDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeDDoSDataResponse`
        def DescribeDDoSData(request)
          body = send_request('DescribeDDoSData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeDiagnoseReport 用于获取指定报告id的内容， <font color=red>将于 **2023年5月31日** 下线</font><br>

        # @param request: Request instance for DescribeDiagnoseReport.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeDiagnoseReportRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeDiagnoseReportResponse`
        def DescribeDiagnoseReport(request)
          body = send_request('DescribeDiagnoseReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDiagnoseReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定域名的区域、运营商明细数据
        # 注意事项：接口尚未全量开放，未在内测名单中的账号不支持调用

        # @param request: Request instance for DescribeDistrictIspData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeDistrictIspDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeDistrictIspDataResponse`
        def DescribeDistrictIspData(request)
          body = send_request('DescribeDistrictIspData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDistrictIspDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeDomains 用于查询内容分发网络加速域名（含境内、境外）基本配置信息，包括项目ID、服务状态，业务类型、创建时间、更新时间等信息。

        # @param request: Request instance for DescribeDomains.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeDomainsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeDomainsResponse`
        def DescribeDomains(request)
          body = send_request('DescribeDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。

        # @param request: Request instance for DescribeDomainsConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeDomainsConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeDomainsConfigResponse`
        def DescribeDomainsConfig(request)
          body = send_request('DescribeDomainsConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainsConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEdgePackTaskStatus 用于查询动态打包任务状态列表

        # @param request: Request instance for DescribeEdgePackTaskStatus.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeEdgePackTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeEdgePackTaskStatusResponse`
        def DescribeEdgePackTaskStatus(request)
          body = send_request('DescribeEdgePackTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEdgePackTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeEventLogData 用于查询事件日志统计曲线

        # @param request: Request instance for DescribeEventLogData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeEventLogDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeEventLogDataResponse`
        def DescribeEventLogData(request)
          body = send_request('DescribeEventLogData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEventLogDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。

        # @param request: Request instance for DescribeHttpsPackages.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeHttpsPackagesRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeHttpsPackagesResponse`
        def DescribeHttpsPackages(request)
          body = send_request('DescribeHttpsPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHttpsPackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeImageConfig 用于获取域名图片优化的当前配置，支持Webp、TPG、 Guetzli 和 Avif。

        # @param request: Request instance for DescribeImageConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeImageConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeImageConfigResponse`
        def DescribeImageConfig(request)
          body = send_request('DescribeImageConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeIpStatus 用于查询域名所在加速平台的边缘节点、回源节点明细。注意事项：暂不支持查询边缘节点信息并且数据会存在一定延迟。

        # >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41954"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。

        # @param request: Request instance for DescribeIpStatus.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeIpStatusRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeIpStatusResponse`
        def DescribeIpStatus(request)
          body = send_request('DescribeIpStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeIpVisit 用于查询 5 分钟活跃用户数，及日活跃用户数明细

        # + 5 分钟活跃用户数：根据日志中客户端 IP，5 分钟粒度去重统计
        # + 日活跃用户数：根据日志中客户端 IP，按天粒度去重统计

        # @param request: Request instance for DescribeIpVisit.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeIpVisitRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeIpVisitResponse`
        def DescribeIpVisit(request)
          body = send_request('DescribeIpVisit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpVisitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeMapInfo 用于查询省份对应的 ID，运营商对应的 ID 信息。

        # @param request: Request instance for DescribeMapInfo.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeMapInfoRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeMapInfoResponse`
        def DescribeMapInfo(request)
          body = send_request('DescribeMapInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMapInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeOriginData 用于查询 CDN 实时回源监控数据，支持以下指标查询：

        # + 回源流量（单位为 byte）
        # + 回源带宽（单位为 bps）
        # + 回源请求数（单位为 次）
        # + 回源失败请求数（单位为 次）
        # + 回源失败率（单位为 %，小数点后保留两位）
        # + 回源状态码 2xx 汇总及各 2 开头回源状态码明细（单位为 个）
        # + 回源状态码 3xx 汇总及各 3 开头回源状态码明细（单位为 个）
        # + 回源状态码 4xx 汇总及各 4 开头回源状态码明细（单位为 个）
        # + 回源状态码 5xx 汇总及各 5 开头回源状态码明细（单位为 个）

        # @param request: Request instance for DescribeOriginData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeOriginDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeOriginDataResponse`
        def DescribeOriginData(request)
          body = send_request('DescribeOriginData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePayType 用于查询用户的计费类型，计费周期等信息。

        # @param request: Request instance for DescribePayType.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribePayTypeRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribePayTypeResponse`
        def DescribePayType(request)
          body = send_request('DescribePayType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePayTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePurgeQuota 用于查询账户刷新配额和每日可用量。

        # @param request: Request instance for DescribePurgeQuota.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribePurgeQuotaRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribePurgeQuotaResponse`
        def DescribePurgeQuota(request)
          body = send_request('DescribePurgeQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePurgeQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。

        # @param request: Request instance for DescribePurgeTasks.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribePurgeTasksRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribePurgeTasksResponse`
        def DescribePurgeTasks(request)
          body = send_request('DescribePurgeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePurgeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePushQuota  用于查询预热配额和每日可用量。

        # @param request: Request instance for DescribePushQuota.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribePushQuotaRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribePushQuotaResponse`
        def DescribePushQuota(request)
          body = send_request('DescribePushQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePushQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePushTasks  用于查询预热任务提交历史记录及执行进度。

        # @param request: Request instance for DescribePushTasks.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribePushTasksRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribePushTasksResponse`
        def DescribePushTasks(request)
          body = send_request('DescribePushTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePushTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeReportData 用于查询域名/项目维度的日/周/月报表数据。

        # @param request: Request instance for DescribeReportData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeReportDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeReportDataResponse`
        def DescribeReportData(request)
          body = send_request('DescribeReportData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReportDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取BOT统计数据列表

        # @param request: Request instance for DescribeScdnBotData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeScdnBotDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeScdnBotDataResponse`
        def DescribeScdnBotData(request)
          body = send_request('DescribeScdnBotData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScdnBotDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询BOT会话记录列表

        # @param request: Request instance for DescribeScdnBotRecords.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeScdnBotRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeScdnBotRecordsResponse`
        def DescribeScdnBotRecords(request)
          body = send_request('DescribeScdnBotRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScdnBotRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeScdnConfig 用于查询指定 SCDN 加速域名的安全相关配置

        # @param request: Request instance for DescribeScdnConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeScdnConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeScdnConfigResponse`
        def DescribeScdnConfig(request)
          body = send_request('DescribeScdnConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScdnConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询在SCDN IP安全策略

        # @param request: Request instance for DescribeScdnIpStrategy.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeScdnIpStrategyRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeScdnIpStrategyResponse`
        def DescribeScdnIpStrategy(request)
          body = send_request('DescribeScdnIpStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScdnIpStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取SCDN的Top数据

        # @param request: Request instance for DescribeScdnTopData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeScdnTopDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeScdnTopDataResponse`
        def DescribeScdnTopData(request)
          body = send_request('DescribeScdnTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScdnTopDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：

        # + 依据总流量、总请求数对访问 IP 排序，从大至小返回 TOP 100 IP
        # + 依据总流量、总请求数对访问 Refer 排序，从大至小返回 TOP 100 Refer
        # + 依据总流量、总请求数对访问 设备 排序，从大至小返回 设备类型
        # + 依据总流量、总请求数对访问 操作系统 排序，从大至小返回 操作系统
        # + 依据总流量、总请求数对访问 浏览器 排序，从大至小返回 浏览器

        # 注意：
        # + 仅支持 90 天内数据查询，且从2021年09月20日开始有数据
        # + 本接口为beta版，尚未正式全量发布

        # @param request: Request instance for DescribeTopData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeTopDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeTopDataResponse`
        def DescribeTopData(request)
          body = send_request('DescribeTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeTrafficPackages 用于查询 CDN 流量包详情。

        # @param request: Request instance for DescribeTrafficPackages.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeTrafficPackagesRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeTrafficPackagesResponse`
        def DescribeTrafficPackages(request)
          body = send_request('DescribeTrafficPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficPackagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribeUrlViolations 用于查询被 CDN 系统扫描到的域名违规 URL 列表及当前状态。
        # 对应内容分发网络控制台【图片鉴黄】页面。

        # @param request: Request instance for DescribeUrlViolations.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeUrlViolationsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeUrlViolationsResponse`
        def DescribeUrlViolations(request)
          body = send_request('DescribeUrlViolations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUrlViolationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # Waf统计数据查询

        # @param request: Request instance for DescribeWafData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DescribeWafDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DescribeWafDataResponse`
        def DescribeWafData(request)
          body = send_request('DescribeWafData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DisableCaches 用于禁用 CDN 上指定 URL 的访问，禁用完成后，中国境内访问会直接返回 403。（注：接口尚在内测中，暂未全量开放；封禁URL并非无限期永久封禁）

        # @param request: Request instance for DisableCaches.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DisableCachesRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DisableCachesResponse`
        def DisableCaches(request)
          body = send_request('DisableCaches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableCachesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DisableClsLogTopic 用于停止日志主题投递。注意：停止后，所有绑定该日志主题域名的日志将不再继续投递至该主题，已经投递的日志将会继续保留。生效时间约为 5~15 分钟。

        # @param request: Request instance for DisableClsLogTopic.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DisableClsLogTopicRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DisableClsLogTopicResponse`
        def DisableClsLogTopic(request)
          body = send_request('DisableClsLogTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableClsLogTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拷贝参考域名的配置至新域名。暂不支持自有证书以及定制化配置

        # @param request: Request instance for DuplicateDomainConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::DuplicateDomainConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::DuplicateDomainConfigResponse`
        def DuplicateDomainConfig(request)
          body = send_request('DuplicateDomainConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DuplicateDomainConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EnableCaches 用于解禁手工封禁的 URL，解禁成功后，全网生效时间约 5~10 分钟。（接口尚在内测中，暂未全量开放使用）

        # @param request: Request instance for EnableCaches.
        # @type request: :class:`Tencentcloud::cdn::V20180606::EnableCachesRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::EnableCachesResponse`
        def EnableCaches(request)
          body = send_request('EnableCaches', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableCachesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EnableClsLogTopic 用于启动日志主题投递。注意：启动后，所有绑定该日志主题域名的日志将继续投递至该主题。生效时间约为 5~15 分钟。

        # @param request: Request instance for EnableClsLogTopic.
        # @type request: :class:`Tencentcloud::cdn::V20180606::EnableClsLogTopicRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::EnableClsLogTopicResponse`
        def EnableClsLogTopic(request)
          body = send_request('EnableClsLogTopic', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableClsLogTopicResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # GetDisableRecords 用于查询资源禁用历史，及 URL 当前状态。（接口尚在内测中，暂未全量开放使用）

        # @param request: Request instance for GetDisableRecords.
        # @type request: :class:`Tencentcloud::cdn::V20180606::GetDisableRecordsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::GetDisableRecordsResponse`
        def GetDisableRecords(request)
          body = send_request('GetDisableRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDisableRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ListClsLogTopics 用于显示日志主题列表。注意：一个日志集下至多含10个日志主题。

        # @param request: Request instance for ListClsLogTopics.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListClsLogTopicsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListClsLogTopicsResponse`
        def ListClsLogTopics(request)
          body = send_request('ListClsLogTopics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListClsLogTopicsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ListClsTopicDomains 用于获取某日志主题下绑定的域名列表。

        # @param request: Request instance for ListClsTopicDomains.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListClsTopicDomainsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListClsTopicDomainsResponse`
        def ListClsTopicDomains(request)
          body = send_request('ListClsTopicDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListClsTopicDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ListDiagnoseReport 用于获取用户诊断URL访问后各个子任务的简要详情， <font color=red>将于 **2023年5月31日** 下线</font><br>

        # @param request: Request instance for ListDiagnoseReport.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListDiagnoseReportRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListDiagnoseReportResponse`
        def ListDiagnoseReport(request)
          body = send_request('ListDiagnoseReport', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListDiagnoseReportResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息

        # @param request: Request instance for ListScdnDomains.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListScdnDomainsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListScdnDomainsResponse`
        def ListScdnDomains(request)
          body = send_request('ListScdnDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListScdnDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ListScdnLogTasks 用于查询SCDN日志下载任务列表,以及展示下载任务基本信息

        # @param request: Request instance for ListScdnLogTasks.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListScdnLogTasksRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListScdnLogTasksResponse`
        def ListScdnLogTasks(request)
          body = send_request('ListScdnLogTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListScdnLogTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Bot攻击的Top数据列表

        # @param request: Request instance for ListScdnTopBotData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListScdnTopBotDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListScdnTopBotDataResponse`
        def ListScdnTopBotData(request)
          body = send_request('ListScdnTopBotData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListScdnTopBotDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Bot攻击的Top信息

        # @param request: Request instance for ListTopBotData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListTopBotDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListTopBotDataResponse`
        def ListTopBotData(request)
          body = send_request('ListTopBotData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopBotDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取CC攻击Top数据

        # @param request: Request instance for ListTopCcData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListTopCcDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListTopCcDataResponse`
        def ListTopCcData(request)
          body = send_request('ListTopCcData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopCcDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过CLS日志计算Top信息。支持近7天的日志数据。

        # @param request: Request instance for ListTopClsLogData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListTopClsLogDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListTopClsLogDataResponse`
        def ListTopClsLogData(request)
          body = send_request('ListTopClsLogData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopClsLogDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取DDoS攻击Top数据

        # @param request: Request instance for ListTopDDoSData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListTopDDoSDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListTopDDoSDataResponse`
        def ListTopDDoSData(request)
          body = send_request('ListTopDDoSData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopDDoSDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ListTopData 通过入参 Metric 和 Filter 组合不同，可以查询以下排序数据：

        # + 依据总流量、总请求数对访问 URL 排序，从大至小返回 TOP 1000 URL
        # + 依据总流量、总请求数对客户端省份排序，从大至小返回省份列表
        # + 依据总流量、总请求数对客户端运营商排序，从大至小返回运营商列表
        # + 依据总流量、峰值带宽、总请求数、平均命中率、2XX/3XX/4XX/5XX 状态码对域名排序，从大至小返回域名列表
        # + 依据总回源流量、回源峰值带宽、总回源请求数、平均回源失败率、2XX/3XX/4XX/5XX 回源状态码对域名排序，从大至小返回域名列表

        # 注意：仅支持 90 天内数据查询

        # @param request: Request instance for ListTopData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListTopDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListTopDataResponse`
        def ListTopData(request)
          body = send_request('ListTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取Waf攻击Top数据

        # @param request: Request instance for ListTopWafData.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ListTopWafDataRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ListTopWafDataResponse`
        def ListTopWafData(request)
          body = send_request('ListTopWafData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ListTopWafDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ManageClsTopicDomains 用于管理某日志主题下绑定的域名列表。

        # @param request: Request instance for ManageClsTopicDomains.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ManageClsTopicDomainsRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ManageClsTopicDomainsResponse`
        def ManageClsTopicDomains(request)
          body = send_request('ManageClsTopicDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageClsTopicDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyDomainConfig 用于修改内容分发网络加速域名配置信息
        # 注意：
        # Route 字段，使用点分隔，最后一段称为叶子节点，非叶子节点配置保持不变；
        # Value 字段，使用 json 进行序列化，其中固定 update 作为 key，配置路径值参考 https://cloud.tencent.com/document/product/228/41116 接口各配置项复杂类型，为配置路径对应复杂类型下的节点。
        # 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。

        # @param request: Request instance for ModifyDomainConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ModifyDomainConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ModifyDomainConfigResponse`
        def ModifyDomainConfig(request)
          body = send_request('ModifyDomainConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # ModifyPurgeFetchTaskStatus 用于上报定时刷新预热任务执行状态

        # @param request: Request instance for ModifyPurgeFetchTaskStatus.
        # @type request: :class:`Tencentcloud::cdn::V20180606::ModifyPurgeFetchTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::ModifyPurgeFetchTaskStatusResponse`
        def ModifyPurgeFetchTaskStatus(request)
          body = send_request('ModifyPurgeFetchTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPurgeFetchTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # PurgePathCache 用于批量提交目录刷新，根据域名的加速区域进行对应区域的刷新。
        # 默认情况下境内、境外加速区域每日目录刷新额度为各 100 条，每次最多可提交 500 条。

        # @param request: Request instance for PurgePathCache.
        # @type request: :class:`Tencentcloud::cdn::V20180606::PurgePathCacheRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::PurgePathCacheResponse`
        def PurgePathCache(request)
          body = send_request('PurgePathCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PurgePathCacheResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # PurgeUrlsCache 用于批量提交 URL 进行刷新，根据 URL 中域名的当前加速区域进行对应区域的刷新。
        # 默认情况下境内、境外加速区域每日 URL 刷新额度各为 10000 条，每次最多可提交 1000 条。

        # @param request: Request instance for PurgeUrlsCache.
        # @type request: :class:`Tencentcloud::cdn::V20180606::PurgeUrlsCacheRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::PurgeUrlsCacheResponse`
        def PurgeUrlsCache(request)
          body = send_request('PurgeUrlsCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PurgeUrlsCacheResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # PushUrlsCache 用于将指定 URL 资源列表加载至 CDN 节点，支持指定加速区域预热。
        # 默认情况下境内、境外每日预热 URL 限额为各 1000 条，每次最多可提交 500 条。注意：中国境外区域预热，资源默认加载至中国境外边缘节点，所产生的边缘层流量会计入计费流量。

        # @param request: Request instance for PushUrlsCache.
        # @type request: :class:`Tencentcloud::cdn::V20180606::PushUrlsCacheRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::PushUrlsCacheResponse`
        def PushUrlsCache(request)
          body = send_request('PushUrlsCache', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PushUrlsCacheResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # SearchClsLog 用于 CLS 日志检索。支持检索今天，24小时（可选近7中的某一天），近7天的日志数据。

        # @param request: Request instance for SearchClsLog.
        # @type request: :class:`Tencentcloud::cdn::V20180606::SearchClsLogRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::SearchClsLogResponse`
        def SearchClsLog(request)
          body = send_request('SearchClsLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchClsLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # StartCdnDomain 用于启用已停用域名的加速服务

        # @param request: Request instance for StartCdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::StartCdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::StartCdnDomainResponse`
        def StartCdnDomain(request)
          body = send_request('StartCdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartCdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # StartScdnDomain 用于开启域名的安全防护配置

        # @param request: Request instance for StartScdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::StartScdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::StartScdnDomainResponse`
        def StartScdnDomain(request)
          body = send_request('StartScdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartScdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # StopCdnDomain 用于停止域名的加速服务。
        # 注意：停止加速服务后，访问至加速节点的请求将会直接返回 404。为避免对您的业务造成影响，请在停止加速服务前将解析切走。

        # @param request: Request instance for StopCdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::StopCdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::StopCdnDomainResponse`
        def StopCdnDomain(request)
          body = send_request('StopCdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopCdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # StopScdnDomain 用于关闭域名的安全防护配置

        # @param request: Request instance for StopScdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::StopScdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::StopScdnDomainResponse`
        def StopScdnDomain(request)
          body = send_request('StopScdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopScdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # UpdateDomainConfig 用于修改内容分发网络加速域名配置信息。
        # 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值，建议通过查询接口获取配置属性后，直接修改后传递给本接口。
        # 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。

        # @param request: Request instance for UpdateDomainConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::UpdateDomainConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::UpdateDomainConfigResponse`
        def UpdateDomainConfig(request)
          body = send_request('UpdateDomainConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDomainConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # UpdateImageConfig 用于更新控制台图片优化的相关配置，支持Webp、TPG、 Guetzli 和 Avif。

        # @param request: Request instance for UpdateImageConfig.
        # @type request: :class:`Tencentcloud::cdn::V20180606::UpdateImageConfigRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::UpdateImageConfigResponse`
        def UpdateImageConfig(request)
          body = send_request('UpdateImageConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateImageConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(UpdatePayType)用于修改账号计费类型，暂不支持月结用户或子账号修改。

        # @param request: Request instance for UpdatePayType.
        # @type request: :class:`Tencentcloud::cdn::V20180606::UpdatePayTypeRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::UpdatePayTypeResponse`
        def UpdatePayType(request)
          body = send_request('UpdatePayType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdatePayTypeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # UpdateScdnDomain 用于修改 SCDN 加速域名安全相关配置

        # @param request: Request instance for UpdateScdnDomain.
        # @type request: :class:`Tencentcloud::cdn::V20180606::UpdateScdnDomainRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::UpdateScdnDomainResponse`
        def UpdateScdnDomain(request)
          body = send_request('UpdateScdnDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateScdnDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # VerifyDomainRecord 用于验证域名解析值。
        # 验证域名解析记录值前，您需要通过 [CreateVerifyRecord](https://cloud.tencent.com/document/product/228/48118) 生成校验解析值，验证通过后，24小时有效。
        # 具体流程可参考：[使用API接口进行域名归属校验](https://cloud.tencent.com/document/product/228/61702#.E6.96.B9.E6.B3.95.E4.B8.89.EF.BC.9Aapi-.E6.8E.A5.E5.8F.A3.E6.93.8D.E4.BD.9C)

        # @param request: Request instance for VerifyDomainRecord.
        # @type request: :class:`Tencentcloud::cdn::V20180606::VerifyDomainRecordRequest`
        # @rtype: :class:`Tencentcloud::cdn::V20180606::VerifyDomainRecordResponse`
        def VerifyDomainRecord(request)
          body = send_request('VerifyDomainRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyDomainRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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