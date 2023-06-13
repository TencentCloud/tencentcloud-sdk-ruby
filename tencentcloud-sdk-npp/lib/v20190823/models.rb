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
  module Npp
    module V20190823
      # 话单详情
      class CallBackCdr < TencentCloud::Common::AbstractModel
        # @param CallId: 呼叫通话 ID
        # @type CallId: String
        # @param Src: 主叫号码
        # @type Src: String
        # @param Dst: 被叫号码
        # @type Dst: String
        # @param StartSrcCallTime: 主叫呼叫开始时间
        # @type StartSrcCallTime: String
        # @param StartSrcRingTime: 主叫响铃开始时间
        # @type StartSrcRingTime: String
        # @param SrcAcceptTime: 主叫接听时间
        # @type SrcAcceptTime: String
        # @param StartDstCallTime: 被叫呼叫开始时间
        # @type StartDstCallTime: String
        # @param StartDstRingTime: 被叫响铃开始时间
        # @type StartDstRingTime: String
        # @param DstAcceptTime: 被叫接听时间
        # @type DstAcceptTime: String
        # @param EndCallTime: 用户挂机通话结束时间
        # @type EndCallTime: String
        # @param CallEndStatus: 通话最后状态：0：未知状态 1：正常通话 2：主叫未接 3：主叫接听，被叫未接 4：主叫未接通 5：被叫未接通
        # @type CallEndStatus: String
        # @param Duration: 通话计费时间
        # @type Duration: String
        # @param RecordUrl: 录音 URL，如果不录音或录音失败，该值为空
        # @type RecordUrl: String
        # @param CallType: 通话类型(1: VOIP 2:IP TO PSTN 3: PSTN TO PSTN)，如果话单中没有该字段，默认值为回拨 3 (PSTN TO PSTN)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallType: String
        # @param BizId: 同回拨请求中的 bizId，如果回拨请求中带 bizId 会有该字段返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizId: String
        # @param OrderId: 订单 ID,最大长度不超过 64 个字节，对于一些有订单状态 App 相关应用（如达人帮接入 App 应用)，该字段只在帐单中带上，其它回调不附带该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String

        attr_accessor :CallId, :Src, :Dst, :StartSrcCallTime, :StartSrcRingTime, :SrcAcceptTime, :StartDstCallTime, :StartDstRingTime, :DstAcceptTime, :EndCallTime, :CallEndStatus, :Duration, :RecordUrl, :CallType, :BizId, :OrderId

        def initialize(callid=nil, src=nil, dst=nil, startsrccalltime=nil, startsrcringtime=nil, srcaccepttime=nil, startdstcalltime=nil, startdstringtime=nil, dstaccepttime=nil, endcalltime=nil, callendstatus=nil, duration=nil, recordurl=nil, calltype=nil, bizid=nil, orderid=nil)
          @CallId = callid
          @Src = src
          @Dst = dst
          @StartSrcCallTime = startsrccalltime
          @StartSrcRingTime = startsrcringtime
          @SrcAcceptTime = srcaccepttime
          @StartDstCallTime = startdstcalltime
          @StartDstRingTime = startdstringtime
          @DstAcceptTime = dstaccepttime
          @EndCallTime = endcalltime
          @CallEndStatus = callendstatus
          @Duration = duration
          @RecordUrl = recordurl
          @CallType = calltype
          @BizId = bizid
          @OrderId = orderid
        end

        def deserialize(params)
          @CallId = params['CallId']
          @Src = params['Src']
          @Dst = params['Dst']
          @StartSrcCallTime = params['StartSrcCallTime']
          @StartSrcRingTime = params['StartSrcRingTime']
          @SrcAcceptTime = params['SrcAcceptTime']
          @StartDstCallTime = params['StartDstCallTime']
          @StartDstRingTime = params['StartDstRingTime']
          @DstAcceptTime = params['DstAcceptTime']
          @EndCallTime = params['EndCallTime']
          @CallEndStatus = params['CallEndStatus']
          @Duration = params['Duration']
          @RecordUrl = params['RecordUrl']
          @CallType = params['CallType']
          @BizId = params['BizId']
          @OrderId = params['OrderId']
        end
      end

      # 回拨号码字段
      class CallBackPhoneCode < TencentCloud::Common::AbstractModel
        # @param Nation: 国家码，统一以 00 开头
        # @type Nation: String
        # @param Phone: 号码（固话区号前加 0，如075586013388）
        # @type Phone: String

        attr_accessor :Nation, :Phone

        def initialize(nation=nil, phone=nil)
          @Nation = nation
          @Phone = phone
        end

        def deserialize(params)
          @Nation = params['Nation']
          @Phone = params['Phone']
        end
      end

      # CreateCallBack请求参数结构体
      class CreateCallBackRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param Src: 主叫号码(必须为 11 位手机号，号码前加 0086，如 008613631686024)
        # @type Src: String
        # @param Dst: 被叫号码(必须为 11 位手机或固话号码,号码前加 0086，如008613631686024，固话如：0086075586013388)
        # @type Dst: String
        # @param SrcDisplayNum: 主叫显示系统分配的固话号码，如不填显示随机分配号码
        # @type SrcDisplayNum: String
        # @param DstDisplayNum: 被叫显示系统分配的固话号码，如不填显示随机分配号码
        # @type DstDisplayNum: String
        # @param Record: 是否录音，0 表示不录音，1 表示录音。默认为不录音
        # @type Record: String
        # @param MaxAllowTime: 允许最大通话时间，不填默认为 30 分钟（单位：分钟）
        # @type MaxAllowTime: String
        # @param StatusFlag: 主叫发起呼叫状态：1 被叫发起呼叫状态：256 主叫响铃状态：2 被叫响铃状态：512 主叫接听状态：4 被叫接听状态：1024 主叫拒绝接听状态：8 被叫拒绝接听状态：2048 主叫正常挂机状态：16 被叫正常挂机状态：4096 主叫呼叫异常：32 被叫呼叫异常：8192
        # 例如：当值为 0：表示所有状态不需要推送；当值为 4：表示只要推送主叫接听状态；当值为 16191：表示所有状态都需要推送(上面所有值和)
        # @type StatusFlag: String
        # @param StatusUrl: 状态回调通知地址，正式环境可以配置默认推送地址
        # @type StatusUrl: String
        # @param HangupUrl: 话单回调通知地址，正式环境可以配置默认推送地址
        # @type HangupUrl: String
        # @param RecordUrl: 录单 URL 回调通知地址，正式环境可以配置默认推送地址
        # @type RecordUrl: String
        # @param BizId: 业务应用 key，业务用该 key 可以区分内部业务或客户产品等，该 key 需保证在该 appId 下全局唯一，最大长度不超过 64 个字节，bizId 只能包含数字、字母。
        # @type BizId: String
        # @param LastCallId: 最后一次呼叫 callId，带上该字段以后，平台会参考该 callId 分配线路，优先不分配该 callId 通话线路（注：谨慎使用，这个会影响线路调度）
        # @type LastCallId: String
        # @param PreCallerHandle: 结构体，主叫呼叫预处理操作，根据不同操作确认是否呼通被叫。如需使用，本结构体需要与 keyList 结构体配合使用，此时这两个参数都为必填项
        # @type PreCallerHandle: :class:`Tencentcloud::Npp.v20190823.models.RreCallerHandle`
        # @param OrderId: 订单 ID，最大长度不超过64个字节，对于一些有订单状态 App 相关应用使用（如达人帮接入 App 应用)，该字段只在帐单中带上，其它回调不附带该字段
        # @type OrderId: String

        attr_accessor :BizAppId, :Src, :Dst, :SrcDisplayNum, :DstDisplayNum, :Record, :MaxAllowTime, :StatusFlag, :StatusUrl, :HangupUrl, :RecordUrl, :BizId, :LastCallId, :PreCallerHandle, :OrderId

        def initialize(bizappid=nil, src=nil, dst=nil, srcdisplaynum=nil, dstdisplaynum=nil, record=nil, maxallowtime=nil, statusflag=nil, statusurl=nil, hangupurl=nil, recordurl=nil, bizid=nil, lastcallid=nil, precallerhandle=nil, orderid=nil)
          @BizAppId = bizappid
          @Src = src
          @Dst = dst
          @SrcDisplayNum = srcdisplaynum
          @DstDisplayNum = dstdisplaynum
          @Record = record
          @MaxAllowTime = maxallowtime
          @StatusFlag = statusflag
          @StatusUrl = statusurl
          @HangupUrl = hangupurl
          @RecordUrl = recordurl
          @BizId = bizid
          @LastCallId = lastcallid
          @PreCallerHandle = precallerhandle
          @OrderId = orderid
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @Src = params['Src']
          @Dst = params['Dst']
          @SrcDisplayNum = params['SrcDisplayNum']
          @DstDisplayNum = params['DstDisplayNum']
          @Record = params['Record']
          @MaxAllowTime = params['MaxAllowTime']
          @StatusFlag = params['StatusFlag']
          @StatusUrl = params['StatusUrl']
          @HangupUrl = params['HangupUrl']
          @RecordUrl = params['RecordUrl']
          @BizId = params['BizId']
          @LastCallId = params['LastCallId']
          unless params['PreCallerHandle'].nil?
            @PreCallerHandle = RreCallerHandle.new
            @PreCallerHandle.deserialize(params['PreCallerHandle'])
          end
          @OrderId = params['OrderId']
        end
      end

      # CreateCallBack返回参数结构体
      class CreateCallBackResponse < TencentCloud::Common::AbstractModel
        # @param CallId: 话单id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallId: String
        # @param SrcDisplayNum: 主叫显示系统分配的固话号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SrcDisplayNum: String
        # @param DstDisplayNum: 被叫显示系统分配的固话号码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DstDisplayNum: String
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param Msg: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CallId, :SrcDisplayNum, :DstDisplayNum, :ErrorCode, :Msg, :RequestId

        def initialize(callid=nil, srcdisplaynum=nil, dstdisplaynum=nil, errorcode=nil, msg=nil, requestid=nil)
          @CallId = callid
          @SrcDisplayNum = srcdisplaynum
          @DstDisplayNum = dstdisplaynum
          @ErrorCode = errorcode
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @CallId = params['CallId']
          @SrcDisplayNum = params['SrcDisplayNum']
          @DstDisplayNum = params['DstDisplayNum']
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DelVirtualNum请求参数结构体
      class DelVirtualNumRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param BindId: 双方号码 + 中间号绑定 ID，该 ID 全局唯一
        # @type BindId: String
        # @param BizId: 应用二级业务 ID，bizId 需保证在该 appId 下全局唯一，最大长度不超过 16 个字节。
        # @type BizId: String

        attr_accessor :BizAppId, :BindId, :BizId

        def initialize(bizappid=nil, bindid=nil, bizid=nil)
          @BizAppId = bizappid
          @BindId = bindid
          @BizId = bizid
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @BindId = params['BindId']
          @BizId = params['BizId']
        end
      end

      # DelVirtualNum返回参数结构体
      class DelVirtualNumResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param Msg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param BindId: 绑定 ID，该 ID 全局唯一
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindId: String
        # @param RefLeftNum: 中间号还剩引用计数，如果计数为 0 会解绑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefLeftNum: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :Msg, :BindId, :RefLeftNum, :RequestId

        def initialize(errorcode=nil, msg=nil, bindid=nil, refleftnum=nil, requestid=nil)
          @ErrorCode = errorcode
          @Msg = msg
          @BindId = bindid
          @RefLeftNum = refleftnum
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @BindId = params['BindId']
          @RefLeftNum = params['RefLeftNum']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCallBack请求参数结构体
      class DeleteCallBackRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param CallId: 回拨请求响应中返回的 callId
        # @type CallId: String
        # @param CancelFlag: 0：不管通话状态直接拆线（默认) 1：主叫响铃以后状态不拆线 2：主叫接听以后状态不拆线 3：被叫响铃以后状态不拆线 4：被叫接听以后状态不拆线
        # @type CancelFlag: String

        attr_accessor :BizAppId, :CallId, :CancelFlag

        def initialize(bizappid=nil, callid=nil, cancelflag=nil)
          @BizAppId = bizappid
          @CallId = callid
          @CancelFlag = cancelflag
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @CallId = params['CallId']
          @CancelFlag = params['CancelFlag']
        end
      end

      # DeleteCallBack返回参数结构体
      class DeleteCallBackResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param Msg: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param CallId: 话单id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CallId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :Msg, :CallId, :RequestId

        def initialize(errorcode=nil, msg=nil, callid=nil, requestid=nil)
          @ErrorCode = errorcode
          @Msg = msg
          @CallId = callid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @CallId = params['CallId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallBackCdr请求参数结构体
      class DescribeCallBackCdrRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param CallId: 回拨请求响应中返回的 callId，按 callId 查询该话单详细信息
        # @type CallId: String
        # @param Src: 查询主叫用户产生的呼叫话单，如填空表示拉取这个时间段所有话单
        # @type Src: String
        # @param StartTimeStamp: 话单开始时间戳
        # @type StartTimeStamp: String
        # @param EndTimeStamp: 话单结束时间戳
        # @type EndTimeStamp: String

        attr_accessor :BizAppId, :CallId, :Src, :StartTimeStamp, :EndTimeStamp

        def initialize(bizappid=nil, callid=nil, src=nil, starttimestamp=nil, endtimestamp=nil)
          @BizAppId = bizappid
          @CallId = callid
          @Src = src
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @CallId = params['CallId']
          @Src = params['Src']
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
        end
      end

      # DescribeCallBackCdr返回参数结构体
      class DescribeCallBackCdrResponse < TencentCloud::Common::AbstractModel
        # @param Cdr: 话单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cdr: Array
        # @param Offset: 偏移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: String
        # @param ErrorCode: 错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCode: String
        # @param Msg: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cdr, :Offset, :ErrorCode, :Msg, :RequestId

        def initialize(cdr=nil, offset=nil, errorcode=nil, msg=nil, requestid=nil)
          @Cdr = cdr
          @Offset = offset
          @ErrorCode = errorcode
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Cdr'].nil?
            @Cdr = []
            params['Cdr'].each do |i|
              callbackcdr_tmp = CallBackCdr.new
              callbackcdr_tmp.deserialize(i)
              @Cdr << callbackcdr_tmp
            end
          end
          @Offset = params['Offset']
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallBackStatus请求参数结构体
      class DescribeCallBackStatusRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param CallId: 回拨请求响应中返回的 callId
        # @type CallId: String
        # @param Src: 主叫号码
        # @type Src: String
        # @param Dst: 被叫号码
        # @type Dst: String
        # @param CallStatus: 通话最后状态：0：未知状态 1：主叫响铃中 2：主叫接听 3：被叫响铃中 4：正常通话中 5：通话结束
        # @type CallStatus: String

        attr_accessor :BizAppId, :CallId, :Src, :Dst, :CallStatus

        def initialize(bizappid=nil, callid=nil, src=nil, dst=nil, callstatus=nil)
          @BizAppId = bizappid
          @CallId = callid
          @Src = src
          @Dst = dst
          @CallStatus = callstatus
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @CallId = params['CallId']
          @Src = params['Src']
          @Dst = params['Dst']
          @CallStatus = params['CallStatus']
        end
      end

      # DescribeCallBackStatus返回参数结构体
      class DescribeCallBackStatusResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param Msg: 错误信息
        # @type Msg: String
        # @param AppId: 业务appid
        # @type AppId: String
        # @param CallId: 回拨请求响应中返回的 callId
        # @type CallId: String
        # @param Src: 主叫号码
        # @type Src: String
        # @param Dst: 被叫号码
        # @type Dst: String
        # @param CallStatus: 通话最后状态：0：未知状态 1：主叫响铃中 2：主叫接听 3：被叫响铃中 4：正常通话中 5：通话结束
        # @type CallStatus: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :Msg, :AppId, :CallId, :Src, :Dst, :CallStatus, :RequestId

        def initialize(errorcode=nil, msg=nil, appid=nil, callid=nil, src=nil, dst=nil, callstatus=nil, requestid=nil)
          @ErrorCode = errorcode
          @Msg = msg
          @AppId = appid
          @CallId = callid
          @Src = src
          @Dst = dst
          @CallStatus = callstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @AppId = params['AppId']
          @CallId = params['CallId']
          @Src = params['Src']
          @Dst = params['Dst']
          @CallStatus = params['CallStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallerDisplayList请求参数结构体
      class DescribeCallerDisplayListRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String

        attr_accessor :BizAppId

        def initialize(bizappid=nil)
          @BizAppId = bizappid
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
        end
      end

      # DescribeCallerDisplayList返回参数结构体
      class DescribeCallerDisplayListResponse < TencentCloud::Common::AbstractModel
        # @param AppId: appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param CodeList: 主叫显号号码集合，codeList[0...*] 结构体数组，如果业务是主被叫互显，该字段为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeList: Array
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param Msg: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AppId, :CodeList, :ErrorCode, :Msg, :RequestId

        def initialize(appid=nil, codelist=nil, errorcode=nil, msg=nil, requestid=nil)
          @AppId = appid
          @CodeList = codelist
          @ErrorCode = errorcode
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @AppId = params['AppId']
          unless params['CodeList'].nil?
            @CodeList = []
            params['CodeList'].each do |i|
              callbackphonecode_tmp = CallBackPhoneCode.new
              callbackphonecode_tmp.deserialize(i)
              @CodeList << callbackphonecode_tmp
            end
          end
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # Get400Cdr请求参数结构体
      class Get400CdrRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param CallId: 通话唯一标识 callId，即直拨呼叫响应中返回的 callId
        # @type CallId: String
        # @param Src: 查询主叫用户产生的呼叫话单（0086开头），设置为空表示拉取该时间段的所有话单
        # @type Src: String
        # @param StartTimeStamp: 话单开始时间戳
        # @type StartTimeStamp: String
        # @param EndTimeStamp: 话单结束时间戳
        # @type EndTimeStamp: String

        attr_accessor :BizAppId, :CallId, :Src, :StartTimeStamp, :EndTimeStamp

        def initialize(bizappid=nil, callid=nil, src=nil, starttimestamp=nil, endtimestamp=nil)
          @BizAppId = bizappid
          @CallId = callid
          @Src = src
          @StartTimeStamp = starttimestamp
          @EndTimeStamp = endtimestamp
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @CallId = params['CallId']
          @Src = params['Src']
          @StartTimeStamp = params['StartTimeStamp']
          @EndTimeStamp = params['EndTimeStamp']
        end
      end

      # Get400Cdr返回参数结构体
      class Get400CdrResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param Msg: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param Offset: 偏移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Offset: String
        # @param Cdr: 话单列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cdr: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :Msg, :Offset, :Cdr, :RequestId

        def initialize(errorcode=nil, msg=nil, offset=nil, cdr=nil, requestid=nil)
          @ErrorCode = errorcode
          @Msg = msg
          @Offset = offset
          @Cdr = cdr
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @Msg = params['Msg']
          @Offset = params['Offset']
          unless params['Cdr'].nil?
            @Cdr = []
            params['Cdr'].each do |i|
              virturalnumcdr_tmp = VirturalNumCdr.new
              virturalnumcdr_tmp.deserialize(i)
              @Cdr << virturalnumcdr_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # GetVirtualNum请求参数结构体
      class GetVirtualNumRequest < TencentCloud::Common::AbstractModel
        # @param BizAppId: 业务appid
        # @type BizAppId: String
        # @param Dst: 被叫号码(号码前加 0086，如 008613631686024)
        # @type Dst: String
        # @param Src: 主叫号码(号码前加 0086，如 008613631686024)，xb 模式下是不用填写，axb 模式下是必选
        # @type Src: String
        # @param AccreditList: {“accreditList”:[“008613631686024”,”008612345678910”]}，主要用于 N-1 场景，号码绑定非共享是独占型，指定了 dst 独占中间号绑定，accreditList 表示这个列表成员可以拨打 dst 绑 定的中间号，默认值为空，表示所有号码都可以拨打独占型中间号绑定，最大集合不允许超过 30 个，仅适用于xb模式
        # @type AccreditList: Array
        # @param AssignVirtualNum: 指定中间号（格式：008617013541251），如果该中间号已被使用则返回绑定失败。如果不带该字段则由腾讯侧从号码池里自动分配
        # @type AssignVirtualNum: String
        # @param Record: 是否录音，0表示不录音，1表示录音。默认为不录音，注意如果需要录音回调，通话完成后需要等待一段时间，收到录音回调之后，再解绑中间号。
        # @type Record: String
        # @param CityId: 主被叫显号号码归属地，指定该参数说明显号归属该城市，如果没有该城市号码会随机选取一个城市或者后台配置返回107，返回码详见 《腾讯-中间号-城市id.xlsx》
        # @type CityId: String
        # @param BizId: 应用二级业务 ID，bizId 需保证在该 appId 下全局唯一，最大长度不超过 16 个字节。
        # @type BizId: String
        # @param MaxAssignTime: 号码最大绑定时间，不填默认为 24 小时，最长绑定时间是168小时，单位秒
        # @type MaxAssignTime: String
        # @param StatusFlag: 主叫发起呼叫状态：1
        # 被叫发起呼叫状态：256
        # 主叫响铃状态：2
        # 被叫响铃状态：512
        # 主叫接听状态：4
        # 被叫接听状态：1024
        # 主叫拒绝接听状态：8
        # 被叫拒绝接听状态：2048
        # 主叫正常挂机状态：16
        # 被叫正常挂机状态：4096
        # 主叫呼叫异常：32
        # 被叫呼叫异常：8192

        # 例如：
        # 值为 0：表示所有状态不需要推送
        # 值为 4：表示只要推送主叫接听状态
        # 值为 16191：表示所有状态都需要推送（上面所有值和）
        # @type StatusFlag: String
        # @param StatusUrl: 请填写statusFlag并设置值，状态回调通知地址，正式环境可以配置默认推送地址
        # @type StatusUrl: String
        # @param HangupUrl: 话单回调通知地址，正式环境可以配置默认推送地址
        # @type HangupUrl: String
        # @param RecordUrl: 录单 URL 回调通知地址，正式环境可以配置默认推送地址
        # @type RecordUrl: String

        attr_accessor :BizAppId, :Dst, :Src, :AccreditList, :AssignVirtualNum, :Record, :CityId, :BizId, :MaxAssignTime, :StatusFlag, :StatusUrl, :HangupUrl, :RecordUrl

        def initialize(bizappid=nil, dst=nil, src=nil, accreditlist=nil, assignvirtualnum=nil, record=nil, cityid=nil, bizid=nil, maxassigntime=nil, statusflag=nil, statusurl=nil, hangupurl=nil, recordurl=nil)
          @BizAppId = bizappid
          @Dst = dst
          @Src = src
          @AccreditList = accreditlist
          @AssignVirtualNum = assignvirtualnum
          @Record = record
          @CityId = cityid
          @BizId = bizid
          @MaxAssignTime = maxassigntime
          @StatusFlag = statusflag
          @StatusUrl = statusurl
          @HangupUrl = hangupurl
          @RecordUrl = recordurl
        end

        def deserialize(params)
          @BizAppId = params['BizAppId']
          @Dst = params['Dst']
          @Src = params['Src']
          @AccreditList = params['AccreditList']
          @AssignVirtualNum = params['AssignVirtualNum']
          @Record = params['Record']
          @CityId = params['CityId']
          @BizId = params['BizId']
          @MaxAssignTime = params['MaxAssignTime']
          @StatusFlag = params['StatusFlag']
          @StatusUrl = params['StatusUrl']
          @HangupUrl = params['HangupUrl']
          @RecordUrl = params['RecordUrl']
        end
      end

      # GetVirtualNum返回参数结构体
      class GetVirtualNumResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param BindId: 绑定 ID，该 ID 全局唯一
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindId: String
        # @param RefNum: 中间号还剩引用计数，如果计数为 0 会解绑
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RefNum: String
        # @param VirtualNum: 中间号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualNum: String
        # @param Msg: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :BindId, :RefNum, :VirtualNum, :Msg, :RequestId

        def initialize(errorcode=nil, bindid=nil, refnum=nil, virtualnum=nil, msg=nil, requestid=nil)
          @ErrorCode = errorcode
          @BindId = bindid
          @RefNum = refnum
          @VirtualNum = virtualnum
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @BindId = params['BindId']
          @RefNum = params['RefNum']
          @VirtualNum = params['VirtualNum']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # 对应按键操作,如果没有结构体里定义按键操作用户按键以后都从 interruptPrompt 重新播放
      class KeyList < TencentCloud::Common::AbstractModel
        # @param Key: 用户按键（0-9、*、#、A-D)
        # @type Key: String
        # @param Operate: 1: 呼通被叫 2：interruptPrompt 重播提示 3：拆线
        # @type Operate: String

        attr_accessor :Key, :Operate

        def initialize(key=nil, operate=nil)
          @Key = key
          @Operate = operate
        end

        def deserialize(params)
          @Key = params['Key']
          @Operate = params['Operate']
        end
      end

      # 结构体，主叫呼叫预处理操作，根据不同操作确认是否呼通被叫。如需使用，本结构体需要与 keyList 结构体配合使用，此时这两个参数都为必填项
      class RreCallerHandle < TencentCloud::Common::AbstractModel
        # @param ReadPrompt: 呼叫主叫以后，给主叫用户的语音提示，播放该提示时用户所有按键无效
        # @type ReadPrompt: String
        # @param InterruptPrompt: 可中断提示，播放该提示时，用户可以按键
        # @type InterruptPrompt: String
        # @param KeyList: 对应按键操作,如果没有结构体里定义按键操作用户按键以后都从 interruptPrompt 重新播放
        # @type KeyList: Array
        # @param RepeatTimes: 最多重复播放次数，超过该次数拆线
        # @type RepeatTimes: String
        # @param KeyPressUrl: 用户按键回调通知地址，如果为空不回调
        # @type KeyPressUrl: String
        # @param PromptGender: 提示音男声女声：1女声，2男声。默认女声
        # @type PromptGender: String

        attr_accessor :ReadPrompt, :InterruptPrompt, :KeyList, :RepeatTimes, :KeyPressUrl, :PromptGender

        def initialize(readprompt=nil, interruptprompt=nil, keylist=nil, repeattimes=nil, keypressurl=nil, promptgender=nil)
          @ReadPrompt = readprompt
          @InterruptPrompt = interruptprompt
          @KeyList = keylist
          @RepeatTimes = repeattimes
          @KeyPressUrl = keypressurl
          @PromptGender = promptgender
        end

        def deserialize(params)
          @ReadPrompt = params['ReadPrompt']
          @InterruptPrompt = params['InterruptPrompt']
          unless params['KeyList'].nil?
            @KeyList = []
            params['KeyList'].each do |i|
              keylist_tmp = KeyList.new
              keylist_tmp.deserialize(i)
              @KeyList << keylist_tmp
            end
          end
          @RepeatTimes = params['RepeatTimes']
          @KeyPressUrl = params['KeyPressUrl']
          @PromptGender = params['PromptGender']
        end
      end

      # 直拨话单详情
      class VirturalNumCdr < TencentCloud::Common::AbstractModel
        # @param CallId: 呼叫通话 ID
        # @type CallId: String
        # @param BindId: 双方号码 + 中间号绑定 ID，该 ID 全局唯一
        # @type BindId: String
        # @param Src: 主叫号码
        # @type Src: String
        # @param Dst: 被叫号码
        # @type Dst: String
        # @param DstVirtualNum: 主叫通讯录直拨虚拟保护号码
        # @type DstVirtualNum: String
        # @param CallCenterAcceptTime: 虚拟保护号码平台收到呼叫时间
        # @type CallCenterAcceptTime: String
        # @param StartDstCallTime: 被叫呼叫开始时间
        # @type StartDstCallTime: String
        # @param StartDstRingTime: 被叫响铃开始时间
        # @type StartDstRingTime: String
        # @param DstAcceptTime: 被叫接听时间
        # @type DstAcceptTime: String
        # @param EndCallTime: 用户挂机通话结束时间
        # @type EndCallTime: String
        # @param CallEndStatus: 通话最后状态：0：未知状态 1：正常通话 2：查询呼叫转移被叫号异常 3：未接通 4：未接听 5：拒接挂断 6：关机 7：空号 8：通话中 9：欠费 10：运营商线路或平台异常
        # @type CallEndStatus: String
        # @param SrcDuration: 主叫接通虚拟保护号码到通话结束通话时间
        # @type SrcDuration: String
        # @param DstDuration: 呼叫转接被叫接通到通话结束通话时间
        # @type DstDuration: String
        # @param RecordUrl: 录音 URL，如果不录音或录音失败，该值为空
        # @type RecordUrl: String

        attr_accessor :CallId, :BindId, :Src, :Dst, :DstVirtualNum, :CallCenterAcceptTime, :StartDstCallTime, :StartDstRingTime, :DstAcceptTime, :EndCallTime, :CallEndStatus, :SrcDuration, :DstDuration, :RecordUrl

        def initialize(callid=nil, bindid=nil, src=nil, dst=nil, dstvirtualnum=nil, callcenteraccepttime=nil, startdstcalltime=nil, startdstringtime=nil, dstaccepttime=nil, endcalltime=nil, callendstatus=nil, srcduration=nil, dstduration=nil, recordurl=nil)
          @CallId = callid
          @BindId = bindid
          @Src = src
          @Dst = dst
          @DstVirtualNum = dstvirtualnum
          @CallCenterAcceptTime = callcenteraccepttime
          @StartDstCallTime = startdstcalltime
          @StartDstRingTime = startdstringtime
          @DstAcceptTime = dstaccepttime
          @EndCallTime = endcalltime
          @CallEndStatus = callendstatus
          @SrcDuration = srcduration
          @DstDuration = dstduration
          @RecordUrl = recordurl
        end

        def deserialize(params)
          @CallId = params['CallId']
          @BindId = params['BindId']
          @Src = params['Src']
          @Dst = params['Dst']
          @DstVirtualNum = params['DstVirtualNum']
          @CallCenterAcceptTime = params['CallCenterAcceptTime']
          @StartDstCallTime = params['StartDstCallTime']
          @StartDstRingTime = params['StartDstRingTime']
          @DstAcceptTime = params['DstAcceptTime']
          @EndCallTime = params['EndCallTime']
          @CallEndStatus = params['CallEndStatus']
          @SrcDuration = params['SrcDuration']
          @DstDuration = params['DstDuration']
          @RecordUrl = params['RecordUrl']
        end
      end

    end
  end
end

