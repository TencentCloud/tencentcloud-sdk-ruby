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
  module Bri
    module V20190328
      # BRI请求
      class BRIRequest < TencentCloud::Common::AbstractModel
        # @param Service: 业务名, 必须是以下六个业务名之一(bri_num,bri_dev,bri_ip_bri_apk,bri_url,bri_social)
        # @type Service: String
        # @param QQ: QQ号 (业务名为bri_social时必填, 除非已填Wechat)
        # @type QQ: String
        # @param QQTag: QQ号的可疑标签
        # @type QQTag: String
        # @param Url: 网址 (业务名为bri_url时必填)
        # @type Url: String
        # @param CertMd5: Apk证书Md5  (业务名为bri_apk时必填，除非已填FileMd5)
        # @type CertMd5: String
        # @param PackageName: Apk安装包名 (业务名为bri_apk时必填，除非已填FileMd5)
        # @type PackageName: String
        # @param FileMd5: Apk文件Md5 (业务名为bri_apk时必填，除非已填PackageName,CertMd5,FileSize)
        # @type FileMd5: String
        # @param Scene: 业务场景 (1-注册, 2-登录, 3-发消息)
        # @type Scene: String
        # @param PhoneNumber: 电话号码 (业务名为bri_num时必填)
        # @type PhoneNumber: String
        # @param FileSize: Apk文件大小  (业务名为bri_apk时必填，除非已填FileMd5)
        # @type FileSize: Integer
        # @param Ip: 点分格式的IP (业务名为bri_ip时必填)
        # @type Ip: String
        # @param Imei: 安卓设备的Imei (业务名为bri_dev时必填)
        # @type Imei: String
        # @param Wechat: 微信号 (业务名为bri_social时必填, 除非已填QQ)
        # @type Wechat: String
        # @param WechatTag: 微信号的可疑标签
        # @type WechatTag: String
        # @param SubAppid: 子客户ID
        # @type SubAppid: String

        attr_accessor :Service, :QQ, :QQTag, :Url, :CertMd5, :PackageName, :FileMd5, :Scene, :PhoneNumber, :FileSize, :Ip, :Imei, :Wechat, :WechatTag, :SubAppid

        def initialize(service=nil, qq=nil, qqtag=nil, url=nil, certmd5=nil, packagename=nil, filemd5=nil, scene=nil, phonenumber=nil, filesize=nil, ip=nil, imei=nil, wechat=nil, wechattag=nil, subappid=nil)
          @Service = service
          @QQ = qq
          @QQTag = qqtag
          @Url = url
          @CertMd5 = certmd5
          @PackageName = packagename
          @FileMd5 = filemd5
          @Scene = scene
          @PhoneNumber = phonenumber
          @FileSize = filesize
          @Ip = ip
          @Imei = imei
          @Wechat = wechat
          @WechatTag = wechattag
          @SubAppid = subappid
        end

        def deserialize(params)
          @Service = params['Service']
          @QQ = params['QQ']
          @QQTag = params['QQTag']
          @Url = params['Url']
          @CertMd5 = params['CertMd5']
          @PackageName = params['PackageName']
          @FileMd5 = params['FileMd5']
          @Scene = params['Scene']
          @PhoneNumber = params['PhoneNumber']
          @FileSize = params['FileSize']
          @Ip = params['Ip']
          @Imei = params['Imei']
          @Wechat = params['Wechat']
          @WechatTag = params['WechatTag']
          @SubAppid = params['SubAppid']
        end
      end

      # 响应
      class BRIResponse < TencentCloud::Common::AbstractModel
        # @param Score: 风险分值，取值[0,100], 分值越高风险越高
        # @type Score: Float
        # @param Tags: 当Service为bri_num时,返回的风险标签有:
        # 1) 疑似垃圾流量     说明: 结合号码的历史数据表现，判断该号码历史用互联网业务作恶行为，其产生的互联网行为对于其他业务来说属于作弊或垃圾流量。
        # 2) 疑似新客户       说明: 通过号码互联网行为（社交，浏览等）是否异常判断为小号或接码平台帐号。

        # 当Service为bri_dev时,返回的风险标签有:
        # 1) 疑似真机假用户    说明: 根据设备的一些数据表现，我们判定为群控设备
        # 2) 疑似假机         说明: 根据设备的一些数据表现，我们判定为模拟器或虚假设备ID
        # 3) 疑似真用户假行为  说明: 根据设备的用户使用情况，我们判定该用户存在使用脚本、外挂、病毒等作弊行为

        # 当Service为bri_ip时,返回的风险标签有:
        # 1) 疑似垃圾流量     说明:结合IP的历史数据表现，判断该IP历史用互联网业务作恶行为，其产生的互联网行为对于其他业务来说属于作弊或垃圾流量。

        # 当Service为bri_url时,返回的风险标签有:
        # 1) 社工欺诈    说明: URL为社工欺诈
        # 2) 信息诈骗    说明: URL为信息诈骗
        # 3) 虚假销售    说明: URL为虚假销售
        # 4) 恶意文件    说明: URL为恶意文件
        # 5) 博彩网站    说明: URL为博彩网站
        # 6) 色情网站    说明: URL为色情网站

        # 当Service为bri_apk时,返回的风险标签有:
        # 1) 安全   说明: APK为正规应用
        # 2) 一般   说明: APK为未发现问题的正常应用
        # 3) 风险   说明: APK为外挂或色情等风险应用
        # 4) 病毒   说明: APK为包含恶意代码的恶意软件,可能破坏系统或者其他app正常使用
        # @type Tags: Array

        attr_accessor :Score, :Tags

        def initialize(score=nil, tags=nil)
          @Score = score
          @Tags = tags
        end

        def deserialize(params)
          @Score = params['Score']
          @Tags = params['Tags']
        end
      end

      # DescribeBRI请求参数结构体
      class DescribeBRIRequest < TencentCloud::Common::AbstractModel
        # @param RequestData: 业务风险情报请求体
        # @type RequestData: :class:`Tencentcloud::Bri.v20190328.models.BRIRequest`
        # @param ResourceId: 客户用于计费的资源ID
        # @type ResourceId: String

        attr_accessor :RequestData, :ResourceId

        def initialize(requestdata=nil, resourceid=nil)
          @RequestData = requestdata
          @ResourceId = resourceid
        end

        def deserialize(params)
          unless params['RequestData'].nil?
            @RequestData = BRIRequest.new
            @RequestData.deserialize(params['RequestData'])
          end
          @ResourceId = params['ResourceId']
        end
      end

      # DescribeBRI返回参数结构体
      class DescribeBRIResponse < TencentCloud::Common::AbstractModel
        # @param ResponseData: 业务风险情报响应体
        # @type ResponseData: :class:`Tencentcloud::Bri.v20190328.models.BRIResponse`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResponseData, :RequestId

        def initialize(responsedata=nil, requestid=nil)
          @ResponseData = responsedata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ResponseData'].nil?
            @ResponseData = BRIResponse.new
            @ResponseData.deserialize(params['ResponseData'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

