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
  module Dnspod
    module V20210323
      # 批量添加的记录
      class AddRecordBatch < TencentCloud::Common::AbstractModel
        # @param RecordType: 记录类型, 详见 DescribeRecordType 接口。
        # @type RecordType: String
        # @param Value: 记录值。
        # @type Value: String
        # @param SubDomain: 子域名(主机记录)，默认为@。
        # @type SubDomain: String
        # @param RecordLine: 解析记录的线路，详见 DescribeRecordLineList 接口，RecordLine和RecordLineId都未填时，默认为「默认」线路。
        # @type RecordLine: String
        # @param RecordLineId: 解析记录的线路 ID，RecordLine和RecordLineId都有时，系统优先取 RecordLineId。
        # @type RecordLineId: String
        # @param Weight: 记录权重值(暂未支持)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param MX: 记录的 MX 记录值，非 MX 记录类型，默认为 0，MX记录则必选。
        # @type MX: Integer
        # @param TTL: 记录的 TTL 值，默认600。
        # @type TTL: Integer
        # @param Enabled: 记录状态(暂未支持)。0表示禁用，1表示启用。默认启用。
        # @type Enabled: Integer
        # @param Remark: 记录备注(暂未支持)。
        # @type Remark: String

        attr_accessor :RecordType, :Value, :SubDomain, :RecordLine, :RecordLineId, :Weight, :MX, :TTL, :Enabled, :Remark
        
        def initialize(recordtype=nil, value=nil, subdomain=nil, recordline=nil, recordlineid=nil, weight=nil, mx=nil, ttl=nil, enabled=nil, remark=nil)
          @RecordType = recordtype
          @Value = value
          @SubDomain = subdomain
          @RecordLine = recordline
          @RecordLineId = recordlineid
          @Weight = weight
          @MX = mx
          @TTL = ttl
          @Enabled = enabled
          @Remark = remark
        end

        def deserialize(params)
          @RecordType = params['RecordType']
          @Value = params['Value']
          @SubDomain = params['SubDomain']
          @RecordLine = params['RecordLine']
          @RecordLineId = params['RecordLineId']
          @Weight = params['Weight']
          @MX = params['MX']
          @TTL = params['TTL']
          @Enabled = params['Enabled']
          @Remark = params['Remark']
        end
      end

      # 批量任务中的记录信息
      class BatchRecordInfo < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordId: Integer
        # @param SubDomain: 子域名(主机记录)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubDomain: String
        # @param RecordType: 记录类型, 详见 DescribeRecordType 接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordType: String
        # @param RecordLine: 解析记录的线路，详见 DescribeRecordLineList 接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordLine: String
        # @param Value: 记录值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param TTL: 记录的 TTL 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TTL: Integer
        # @param Status: 记录添加状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Id: 此条记录在列表中的ID
        # @type Id: Integer
        # @param Enabled: 记录生效状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Integer
        # @param MX: 记录的MX权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MX: Integer

        attr_accessor :RecordId, :SubDomain, :RecordType, :RecordLine, :Value, :TTL, :Status, :Operation, :ErrMsg, :Id, :Enabled, :MX
        
        def initialize(recordid=nil, subdomain=nil, recordtype=nil, recordline=nil, value=nil, ttl=nil, status=nil, operation=nil, errmsg=nil, id=nil, enabled=nil, mx=nil)
          @RecordId = recordid
          @SubDomain = subdomain
          @RecordType = recordtype
          @RecordLine = recordline
          @Value = value
          @TTL = ttl
          @Status = status
          @Operation = operation
          @ErrMsg = errmsg
          @Id = id
          @Enabled = enabled
          @MX = mx
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @SubDomain = params['SubDomain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @Value = params['Value']
          @TTL = params['TTL']
          @Status = params['Status']
          @Operation = params['Operation']
          @ErrMsg = params['ErrMsg']
          @Id = params['Id']
          @Enabled = params['Enabled']
          @MX = params['MX']
        end
      end

      # CreateDeal请求参数结构体
      class CreateDealRequest < TencentCloud::Common::AbstractModel
        # @param DealType: 询价类型，1 新购，2 续费，3 套餐升级（增值服务暂时只支持新购）
        # @type DealType: Integer
        # @param GoodsType: 商品类型，1 域名套餐 2 增值服务
        # @type GoodsType: Integer
        # @param GoodsChildType: 套餐类型：
        # DP_PLUS：专业版
        # DP_EXPERT：企业版
        # DP_ULTRA：尊享版

        # 增值服务类型
        # LB：负载均衡
        # URL：URL转发
        # DMONITOR_TASKS：D监控任务数
        # DMONITOR_IP：D监控备用 IP 数
        # CUSTOMLINE：自定义线路数
        # @type GoodsChildType: String
        # @param GoodsNum: 增值服务购买数量，如果是域名套餐固定为1，如果是增值服务则按以下规则：
        # 负载均衡、D监控任务数、D监控备用 IP 数、自定义线路数、URL 转发（必须是5的正整数倍，如 5、10、15 等）
        # @type GoodsNum: Integer
        # @param AutoRenew: 是否开启自动续费，1 开启，2 不开启（增值服务暂不支持自动续费），默认值为 2 不开启
        # @type AutoRenew: Integer
        # @param Domain: 需要绑定套餐的域名，如 dnspod.cn，如果是续费或升级，domain 参数必须要传，新购可不传。
        # @type Domain: String
        # @param TimeSpan: 套餐时长：
        # 1. 套餐以月为单位（按月只能是 3、6 还有 12 的倍数），套餐例如购买一年则传12，最大120 。（续费最低一年）
        # 2. 升级套餐时不需要传。
        # 3. 增值服务的时长单位为年，买一年传1（增值服务新购按年只能是 1，增值服务续费最大为 10）
        # @type TimeSpan: Integer
        # @param NewPackageType: 套餐类型，需要升级到的套餐类型，只有升级时需要。
        # @type NewPackageType: String

        attr_accessor :DealType, :GoodsType, :GoodsChildType, :GoodsNum, :AutoRenew, :Domain, :TimeSpan, :NewPackageType
        
        def initialize(dealtype=nil, goodstype=nil, goodschildtype=nil, goodsnum=nil, autorenew=nil, domain=nil, timespan=nil, newpackagetype=nil)
          @DealType = dealtype
          @GoodsType = goodstype
          @GoodsChildType = goodschildtype
          @GoodsNum = goodsnum
          @AutoRenew = autorenew
          @Domain = domain
          @TimeSpan = timespan
          @NewPackageType = newpackagetype
        end

        def deserialize(params)
          @DealType = params['DealType']
          @GoodsType = params['GoodsType']
          @GoodsChildType = params['GoodsChildType']
          @GoodsNum = params['GoodsNum']
          @AutoRenew = params['AutoRenew']
          @Domain = params['Domain']
          @TimeSpan = params['TimeSpan']
          @NewPackageType = params['NewPackageType']
        end
      end

      # CreateDeal返回参数结构体
      class CreateDealResponse < TencentCloud::Common::AbstractModel
        # @param BigDealId: 大订单号，一个大订单号下可以有多个子订单，说明是同一次下单
        # @type BigDealId: String
        # @param DealList: 子订单列表
        # @type DealList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigDealId, :DealList, :RequestId
        
        def initialize(bigdealid=nil, deallist=nil, requestid=nil)
          @BigDealId = bigdealid
          @DealList = deallist
          @RequestId = requestid
        end

        def deserialize(params)
          @BigDealId = params['BigDealId']
          unless params['DealList'].nil?
            @DealList = []
            params['DealList'].each do |i|
              deals_tmp = Deals.new
              deals_tmp.deserialize(i)
              @DealList << deals_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDomainAlias请求参数结构体
      class CreateDomainAliasRequest < TencentCloud::Common::AbstractModel
        # @param DomainAlias: 域名别名
        # @type DomainAlias: String
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID，参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain
        # @type DomainId: Integer

        attr_accessor :DomainAlias, :Domain, :DomainId
        
        def initialize(domainalias=nil, domain=nil, domainid=nil)
          @DomainAlias = domainalias
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @DomainAlias = params['DomainAlias']
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # CreateDomainAlias返回参数结构体
      class CreateDomainAliasResponse < TencentCloud::Common::AbstractModel
        # @param DomainAliasId: 域名别名ID
        # @type DomainAliasId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainAliasId, :RequestId
        
        def initialize(domainaliasid=nil, requestid=nil)
          @DomainAliasId = domainaliasid
          @RequestId = requestid
        end

        def deserialize(params)
          @DomainAliasId = params['DomainAliasId']
          @RequestId = params['RequestId']
        end
      end

      # 批量添加域名返回结构
      class CreateDomainBatchDetail < TencentCloud::Common::AbstractModel
        # @param RecordList: 见RecordInfoBatch
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordList: Array
        # @param Id: 任务编号
        # @type Id: Integer
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DomainGrade: 域名等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainGrade: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Status: 该条任务运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String

        attr_accessor :RecordList, :Id, :Domain, :DomainGrade, :ErrMsg, :Status, :Operation
        
        def initialize(recordlist=nil, id=nil, domain=nil, domaingrade=nil, errmsg=nil, status=nil, operation=nil)
          @RecordList = recordlist
          @Id = id
          @Domain = domain
          @DomainGrade = domaingrade
          @ErrMsg = errmsg
          @Status = status
          @Operation = operation
        end

        def deserialize(params)
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              createdomainbatchrecord_tmp = CreateDomainBatchRecord.new
              createdomainbatchrecord_tmp.deserialize(i)
              @RecordList << createdomainbatchrecord_tmp
            end
          end
          @Id = params['Id']
          @Domain = params['Domain']
          @DomainGrade = params['DomainGrade']
          @ErrMsg = params['ErrMsg']
          @Status = params['Status']
          @Operation = params['Operation']
        end
      end

      # 批量添加域名任务中的记录信息
      class CreateDomainBatchRecord < TencentCloud::Common::AbstractModel
        # @param SubDomain: 子域名(主机记录)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubDomain: String
        # @param RecordType: 记录类型, 详见 DescribeRecordType 接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordType: String
        # @param RecordLine: 解析记录的线路，详见 DescribeRecordLineList 接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordLine: String
        # @param Value: 记录值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param TTL: 记录的 TTL 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TTL: Integer
        # @param Status: 记录添加状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Id: 此条记录在列表中的ID
        # @type Id: Integer

        attr_accessor :SubDomain, :RecordType, :RecordLine, :Value, :TTL, :Status, :Operation, :ErrMsg, :Id
        
        def initialize(subdomain=nil, recordtype=nil, recordline=nil, value=nil, ttl=nil, status=nil, operation=nil, errmsg=nil, id=nil)
          @SubDomain = subdomain
          @RecordType = recordtype
          @RecordLine = recordline
          @Value = value
          @TTL = ttl
          @Status = status
          @Operation = operation
          @ErrMsg = errmsg
          @Id = id
        end

        def deserialize(params)
          @SubDomain = params['SubDomain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @Value = params['Value']
          @TTL = params['TTL']
          @Status = params['Status']
          @Operation = params['Operation']
          @ErrMsg = params['ErrMsg']
          @Id = params['Id']
        end
      end

      # CreateDomainBatch请求参数结构体
      class CreateDomainBatchRequest < TencentCloud::Common::AbstractModel
        # @param DomainList: 域名数组
        # @type DomainList: Array
        # @param RecordValue: 每个域名添加 @ 和 www 的 A 记录值，记录值为IP，如果不传此参数或者传空，将只添加域名，不添加记录。
        # @type RecordValue: String

        attr_accessor :DomainList, :RecordValue
        
        def initialize(domainlist=nil, recordvalue=nil)
          @DomainList = domainlist
          @RecordValue = recordvalue
        end

        def deserialize(params)
          @DomainList = params['DomainList']
          @RecordValue = params['RecordValue']
        end
      end

      # CreateDomainBatch返回参数结构体
      class CreateDomainBatchResponse < TencentCloud::Common::AbstractModel
        # @param DetailList: 批量添加域名信息
        # @type DetailList: Array
        # @param JobId: 批量任务的ID
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailList, :JobId, :RequestId
        
        def initialize(detaillist=nil, jobid=nil, requestid=nil)
          @DetailList = detaillist
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              createdomainbatchdetail_tmp = CreateDomainBatchDetail.new
              createdomainbatchdetail_tmp.deserialize(i)
              @DetailList << createdomainbatchdetail_tmp
            end
          end
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDomainGroup请求参数结构体
      class CreateDomainGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 域名分组
        # @type GroupName: String

        attr_accessor :GroupName
        
        def initialize(groupname=nil)
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupName = params['GroupName']
        end
      end

      # CreateDomainGroup返回参数结构体
      class CreateDomainGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 域名分组ID
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDomain请求参数结构体
      class CreateDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param GroupId: 域名分组ID
        # @type GroupId: Integer
        # @param IsMark: 是否星标域名，”yes”、”no” 分别代表是和否。
        # @type IsMark: String

        attr_accessor :Domain, :GroupId, :IsMark
        
        def initialize(domain=nil, groupid=nil, ismark=nil)
          @Domain = domain
          @GroupId = groupid
          @IsMark = ismark
        end

        def deserialize(params)
          @Domain = params['Domain']
          @GroupId = params['GroupId']
          @IsMark = params['IsMark']
        end
      end

      # CreateDomain返回参数结构体
      class CreateDomainResponse < TencentCloud::Common::AbstractModel
        # @param DomainInfo: 域名信息
        # @type DomainInfo: :class:`Tencentcloud::Dnspod.v20210323.models.DomainCreateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainInfo, :RequestId
        
        def initialize(domaininfo=nil, requestid=nil)
          @DomainInfo = domaininfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainInfo'].nil?
            @DomainInfo = DomainCreateInfo.new
            @DomainInfo.deserialize(params['DomainInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量添加记录返回结构
      class CreateRecordBatchDetail < TencentCloud::Common::AbstractModel
        # @param RecordList: 见RecordInfoBatch
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordList: Array
        # @param Id: 任务编号
        # @type Id: Integer
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DomainGrade: 域名等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainGrade: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Status: 该条任务运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param DomainId: 域名ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainId: Integer

        attr_accessor :RecordList, :Id, :Domain, :DomainGrade, :ErrMsg, :Status, :Operation, :DomainId
        
        def initialize(recordlist=nil, id=nil, domain=nil, domaingrade=nil, errmsg=nil, status=nil, operation=nil, domainid=nil)
          @RecordList = recordlist
          @Id = id
          @Domain = domain
          @DomainGrade = domaingrade
          @ErrMsg = errmsg
          @Status = status
          @Operation = operation
          @DomainId = domainid
        end

        def deserialize(params)
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              createrecordbatchrecord_tmp = CreateRecordBatchRecord.new
              createrecordbatchrecord_tmp.deserialize(i)
              @RecordList << createrecordbatchrecord_tmp
            end
          end
          @Id = params['Id']
          @Domain = params['Domain']
          @DomainGrade = params['DomainGrade']
          @ErrMsg = params['ErrMsg']
          @Status = params['Status']
          @Operation = params['Operation']
          @DomainId = params['DomainId']
        end
      end

      # 批量添加记录任务中的记录信息
      class CreateRecordBatchRecord < TencentCloud::Common::AbstractModel
        # @param SubDomain: 子域名(主机记录)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubDomain: String
        # @param RecordType: 记录类型, 详见 DescribeRecordType 接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordType: String
        # @param RecordLine: 解析记录的线路，详见 DescribeRecordLineList 接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordLine: String
        # @param Value: 记录值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param TTL: 记录的 TTL 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TTL: Integer
        # @param Status: 记录添加状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Id: 此条记录在列表中的ID
        # @type Id: Integer
        # @param MX: 记录的MX权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MX: Integer

        attr_accessor :SubDomain, :RecordType, :RecordLine, :Value, :TTL, :Status, :Operation, :ErrMsg, :Id, :MX
        
        def initialize(subdomain=nil, recordtype=nil, recordline=nil, value=nil, ttl=nil, status=nil, operation=nil, errmsg=nil, id=nil, mx=nil)
          @SubDomain = subdomain
          @RecordType = recordtype
          @RecordLine = recordline
          @Value = value
          @TTL = ttl
          @Status = status
          @Operation = operation
          @ErrMsg = errmsg
          @Id = id
          @MX = mx
        end

        def deserialize(params)
          @SubDomain = params['SubDomain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @Value = params['Value']
          @TTL = params['TTL']
          @Status = params['Status']
          @Operation = params['Operation']
          @ErrMsg = params['ErrMsg']
          @Id = params['Id']
          @MX = params['MX']
        end
      end

      # CreateRecordBatch请求参数结构体
      class CreateRecordBatchRequest < TencentCloud::Common::AbstractModel
        # @param DomainIdList: 域名ID，多个 domain_id 用英文逗号进行分割。
        # @type DomainIdList: Array
        # @param RecordList: 记录数组
        # @type RecordList: Array

        attr_accessor :DomainIdList, :RecordList
        
        def initialize(domainidlist=nil, recordlist=nil)
          @DomainIdList = domainidlist
          @RecordList = recordlist
        end

        def deserialize(params)
          @DomainIdList = params['DomainIdList']
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              addrecordbatch_tmp = AddRecordBatch.new
              addrecordbatch_tmp.deserialize(i)
              @RecordList << addrecordbatch_tmp
            end
          end
        end
      end

      # CreateRecordBatch返回参数结构体
      class CreateRecordBatchResponse < TencentCloud::Common::AbstractModel
        # @param DetailList: 批量添加域名信息
        # @type DetailList: Array
        # @param JobId: 批量任务的ID
        # @type JobId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailList, :JobId, :RequestId
        
        def initialize(detaillist=nil, jobid=nil, requestid=nil)
          @DetailList = detaillist
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              createrecordbatchdetail_tmp = CreateRecordBatchDetail.new
              createrecordbatchdetail_tmp.deserialize(i)
              @DetailList << createrecordbatchdetail_tmp
            end
          end
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRecord请求参数结构体
      class CreateRecordRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordType: 记录类型，通过 API 记录类型获得，大写英文，比如：A 。
        # @type RecordType: String
        # @param RecordLine: 记录线路，通过 API 记录线路获得，中文，比如：默认。
        # @type RecordLine: String
        # @param Value: 记录值，如 IP : 200.200.200.200， CNAME : cname.dnspod.com.， MX : mail.dnspod.com.。
        # @type Value: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param SubDomain: 主机记录，如 www，如果不传，默认为 @。
        # @type SubDomain: String
        # @param RecordLineId: 线路的 ID，通过 API 记录线路获得，英文字符串，比如：10=1。参数RecordLineId优先级高于RecordLine，如果同时传递二者，优先使用RecordLineId参数。
        # @type RecordLineId: String
        # @param MX: MX 优先级，当记录类型是 MX 时有效，范围1-20，MX 记录时必选。
        # @type MX: Integer
        # @param TTL: TTL，范围1-604800，不同等级域名最小值不同。
        # @type TTL: Integer
        # @param Weight: 权重信息，0到100的整数。仅企业 VIP 域名可用，0 表示关闭，不传该参数，表示不设置权重信息。
        # @type Weight: Integer
        # @param Status: 记录初始状态，取值范围为 ENABLE 和 DISABLE 。默认为 ENABLE ，如果传入 DISABLE，解析不会生效，也不会验证负载均衡的限制。
        # @type Status: String

        attr_accessor :Domain, :RecordType, :RecordLine, :Value, :DomainId, :SubDomain, :RecordLineId, :MX, :TTL, :Weight, :Status
        
        def initialize(domain=nil, recordtype=nil, recordline=nil, value=nil, domainid=nil, subdomain=nil, recordlineid=nil, mx=nil, ttl=nil, weight=nil, status=nil)
          @Domain = domain
          @RecordType = recordtype
          @RecordLine = recordline
          @Value = value
          @DomainId = domainid
          @SubDomain = subdomain
          @RecordLineId = recordlineid
          @MX = mx
          @TTL = ttl
          @Weight = weight
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @Value = params['Value']
          @DomainId = params['DomainId']
          @SubDomain = params['SubDomain']
          @RecordLineId = params['RecordLineId']
          @MX = params['MX']
          @TTL = params['TTL']
          @Weight = params['Weight']
          @Status = params['Status']
        end
      end

      # CreateRecord返回参数结构体
      class CreateRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录ID
        # @type RecordId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId
        
        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # 子订单号列表
      class Deals < TencentCloud::Common::AbstractModel
        # @param DealId: 子订单ID
        # @type DealId: String
        # @param DealName: 子订单号
        # @type DealName: String

        attr_accessor :DealId, :DealName
        
        def initialize(dealid=nil, dealname=nil)
          @DealId = dealid
          @DealName = dealname
        end

        def deserialize(params)
          @DealId = params['DealId']
          @DealName = params['DealName']
        end
      end

      # DeleteDomainAlias请求参数结构体
      class DeleteDomainAliasRequest < TencentCloud::Common::AbstractModel
        # @param DomainAliasId: 域名别名ID
        # @type DomainAliasId: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID，参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain
        # @type DomainId: Integer

        attr_accessor :DomainAliasId, :Domain, :DomainId
        
        def initialize(domainaliasid=nil, domain=nil, domainid=nil)
          @DomainAliasId = domainaliasid
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @DomainAliasId = params['DomainAliasId']
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # DeleteDomainAlias返回参数结构体
      class DeleteDomainAliasResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDomain请求参数结构体
      class DeleteDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :DomainId
        
        def initialize(domain=nil, domainid=nil)
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # DeleteDomain返回参数结构体
      class DeleteDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRecord请求参数结构体
      class DeleteRecordRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordId: 记录 ID 。
        # @type RecordId: Integer
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :RecordId, :DomainId
        
        def initialize(domain=nil, recordid=nil, domainid=nil)
          @Domain = domain
          @RecordId = recordid
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordId = params['RecordId']
          @DomainId = params['DomainId']
        end
      end

      # DeleteRecord返回参数结构体
      class DeleteRecordResponse < TencentCloud::Common::AbstractModel
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

      # DeleteShareDomain请求参数结构体
      class DeleteShareDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Account: 域名共享的账号
        # @type Account: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :Account, :DomainId
        
        def initialize(domain=nil, account=nil, domainid=nil)
          @Domain = domain
          @Account = account
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Account = params['Account']
          @DomainId = params['DomainId']
        end
      end

      # DeleteShareDomain返回参数结构体
      class DeleteShareDomainResponse < TencentCloud::Common::AbstractModel
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

      # 查看任务详情返回结构
      class DescribeBatchTaskDetail < TencentCloud::Common::AbstractModel
        # @param RecordList: 见BatchRecordInfo
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordList: Array
        # @param Id: 任务编号
        # @type Id: Integer
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DomainGrade: 域名等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainGrade: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Status: 该条任务运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param DomainId: 域名ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainId: Integer

        attr_accessor :RecordList, :Id, :Domain, :DomainGrade, :ErrMsg, :Status, :Operation, :DomainId
        
        def initialize(recordlist=nil, id=nil, domain=nil, domaingrade=nil, errmsg=nil, status=nil, operation=nil, domainid=nil)
          @RecordList = recordlist
          @Id = id
          @Domain = domain
          @DomainGrade = domaingrade
          @ErrMsg = errmsg
          @Status = status
          @Operation = operation
          @DomainId = domainid
        end

        def deserialize(params)
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              batchrecordinfo_tmp = BatchRecordInfo.new
              batchrecordinfo_tmp.deserialize(i)
              @RecordList << batchrecordinfo_tmp
            end
          end
          @Id = params['Id']
          @Domain = params['Domain']
          @DomainGrade = params['DomainGrade']
          @ErrMsg = params['ErrMsg']
          @Status = params['Status']
          @Operation = params['Operation']
          @DomainId = params['DomainId']
        end
      end

      # DescribeBatchTask请求参数结构体
      class DescribeBatchTaskRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: Integer

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeBatchTask返回参数结构体
      class DescribeBatchTaskResponse < TencentCloud::Common::AbstractModel
        # @param DetailList: 批量任务详情
        # @type DetailList: Array
        # @param TotalCount: 总任务条数
        # @type TotalCount: Integer
        # @param SuccessCount: 成功条数
        # @type SuccessCount: Integer
        # @param FailCount: 失败条数
        # @type FailCount: Integer
        # @param JobType: 批量任务类型
        # @type JobType: String
        # @param CreatedAt: 任务创建时间
        # @type CreatedAt: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailList, :TotalCount, :SuccessCount, :FailCount, :JobType, :CreatedAt, :RequestId
        
        def initialize(detaillist=nil, totalcount=nil, successcount=nil, failcount=nil, jobtype=nil, createdat=nil, requestid=nil)
          @DetailList = detaillist
          @TotalCount = totalcount
          @SuccessCount = successcount
          @FailCount = failcount
          @JobType = jobtype
          @CreatedAt = createdat
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              describebatchtaskdetail_tmp = DescribeBatchTaskDetail.new
              describebatchtaskdetail_tmp.deserialize(i)
              @DetailList << describebatchtaskdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @SuccessCount = params['SuccessCount']
          @FailCount = params['FailCount']
          @JobType = params['JobType']
          @CreatedAt = params['CreatedAt']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainAliasList请求参数结构体
      class DescribeDomainAliasListRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名ID,域名ID，参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain
        # @type DomainId: Integer

        attr_accessor :Domain, :DomainId
        
        def initialize(domain=nil, domainid=nil)
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # DescribeDomainAliasList返回参数结构体
      class DescribeDomainAliasListResponse < TencentCloud::Common::AbstractModel
        # @param DomainAliasList: 域名别名列表
        # @type DomainAliasList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainAliasList, :RequestId
        
        def initialize(domainaliaslist=nil, requestid=nil)
          @DomainAliasList = domainaliaslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainAliasList'].nil?
            @DomainAliasList = []
            params['DomainAliasList'].each do |i|
              domainaliasinfo_tmp = DomainAliasInfo.new
              domainaliasinfo_tmp.deserialize(i)
              @DomainAliasList << domainaliasinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainAnalytics请求参数结构体
      class DescribeDomainAnalyticsRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 要查询解析量的域名
        # @type Domain: String
        # @param StartDate: 查询的开始时间，格式：YYYY-MM-DD
        # @type StartDate: String
        # @param EndDate: 查询的结束时间，格式：YYYY-MM-DD
        # @type EndDate: String
        # @param DnsFormat: DATE:按天维度统计 HOUR:按小时维度统计
        # @type DnsFormat: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :StartDate, :EndDate, :DnsFormat, :DomainId
        
        def initialize(domain=nil, startdate=nil, enddate=nil, dnsformat=nil, domainid=nil)
          @Domain = domain
          @StartDate = startdate
          @EndDate = enddate
          @DnsFormat = dnsformat
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @DnsFormat = params['DnsFormat']
          @DomainId = params['DomainId']
        end
      end

      # DescribeDomainAnalytics返回参数结构体
      class DescribeDomainAnalyticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 当前统计维度解析量小计
        # @type Data: Array
        # @param Info: 域名解析量统计查询信息
        # @type Info: :class:`Tencentcloud::Dnspod.v20210323.models.DomainAnalyticsInfo`
        # @param AliasData: 域名别名解析量统计信息
        # @type AliasData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Info, :AliasData, :RequestId
        
        def initialize(data=nil, info=nil, aliasdata=nil, requestid=nil)
          @Data = data
          @Info = info
          @AliasData = aliasdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domainanalyticsdetail_tmp = DomainAnalyticsDetail.new
              domainanalyticsdetail_tmp.deserialize(i)
              @Data << domainanalyticsdetail_tmp
            end
          end
          unless params['Info'].nil?
            @Info = DomainAnalyticsInfo.new
            @Info.deserialize(params['Info'])
          end
          unless params['AliasData'].nil?
            @AliasData = []
            params['AliasData'].each do |i|
              domainaliasanalyticsitem_tmp = DomainAliasAnalyticsItem.new
              domainaliasanalyticsitem_tmp.deserialize(i)
              @AliasData << domainaliasanalyticsitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainGroupList请求参数结构体
      class DescribeDomainGroupListRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDomainGroupList返回参数结构体
      class DescribeDomainGroupListResponse < TencentCloud::Common::AbstractModel
        # @param GroupList: 分组列表
        # @type GroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupList, :RequestId
        
        def initialize(grouplist=nil, requestid=nil)
          @GroupList = grouplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupList'].nil?
            @GroupList = []
            params['GroupList'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @GroupList << groupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainList请求参数结构体
      class DescribeDomainListRequest < TencentCloud::Common::AbstractModel
        # @param Type: 域名分组类型，默认为ALL。可取值为ALL，MINE，SHARE，ISMARK，PAUSE，VIP，RECENT，SHARE_OUT。
        # @type Type: String
        # @param Offset: 记录开始的偏移, 第一条记录为 0, 依次类推。默认值为0。
        # @type Offset: Integer
        # @param Limit: 要获取的域名数量, 比如获取20个, 则为20。默认值为3000。
        # @type Limit: Integer
        # @param GroupId: 分组ID, 获取指定分组的域名
        # @type GroupId: Integer
        # @param Keyword: 根据关键字搜索域名
        # @type Keyword: String

        attr_accessor :Type, :Offset, :Limit, :GroupId, :Keyword
        
        def initialize(type=nil, offset=nil, limit=nil, groupid=nil, keyword=nil)
          @Type = type
          @Offset = offset
          @Limit = limit
          @GroupId = groupid
          @Keyword = keyword
        end

        def deserialize(params)
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupId = params['GroupId']
          @Keyword = params['Keyword']
        end
      end

      # DescribeDomainList返回参数结构体
      class DescribeDomainListResponse < TencentCloud::Common::AbstractModel
        # @param DomainCountInfo: 列表页统计信息
        # @type DomainCountInfo: :class:`Tencentcloud::Dnspod.v20210323.models.DomainCountInfo`
        # @param DomainList: 域名列表
        # @type DomainList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainCountInfo, :DomainList, :RequestId
        
        def initialize(domaincountinfo=nil, domainlist=nil, requestid=nil)
          @DomainCountInfo = domaincountinfo
          @DomainList = domainlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainCountInfo'].nil?
            @DomainCountInfo = DomainCountInfo.new
            @DomainCountInfo.deserialize(params['DomainCountInfo'])
          end
          unless params['DomainList'].nil?
            @DomainList = []
            params['DomainList'].each do |i|
              domainlistitem_tmp = DomainListItem.new
              domainlistitem_tmp.deserialize(i)
              @DomainList << domainlistitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainLogList请求参数结构体
      class DescribeDomainLogListRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param Offset: 记录开始的偏移，第一条记录为 0，依次类推，默认为0
        # @type Offset: Integer
        # @param Limit: 共要获取的日志条数，比如获取20条，则为20，默认为500条，单次最多获取500条。
        # @type Limit: Integer

        attr_accessor :Domain, :DomainId, :Offset, :Limit
        
        def initialize(domain=nil, domainid=nil, offset=nil, limit=nil)
          @Domain = domain
          @DomainId = domainid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDomainLogList返回参数结构体
      class DescribeDomainLogListResponse < TencentCloud::Common::AbstractModel
        # @param LogList: 域名信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogList: Array
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param TotalCount: 日志总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogList, :PageSize, :TotalCount, :RequestId
        
        def initialize(loglist=nil, pagesize=nil, totalcount=nil, requestid=nil)
          @LogList = loglist
          @PageSize = pagesize
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @LogList = params['LogList']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainPurview请求参数结构体
      class DescribeDomainPurviewRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :DomainId
        
        def initialize(domain=nil, domainid=nil)
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # DescribeDomainPurview返回参数结构体
      class DescribeDomainPurviewResponse < TencentCloud::Common::AbstractModel
        # @param PurviewList: 域名权限列表
        # @type PurviewList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PurviewList, :RequestId
        
        def initialize(purviewlist=nil, requestid=nil)
          @PurviewList = purviewlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PurviewList'].nil?
            @PurviewList = []
            params['PurviewList'].each do |i|
              purviewinfo_tmp = PurviewInfo.new
              purviewinfo_tmp.deserialize(i)
              @PurviewList << purviewinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomain请求参数结构体
      class DescribeDomainRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :DomainId
        
        def initialize(domain=nil, domainid=nil)
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # DescribeDomain返回参数结构体
      class DescribeDomainResponse < TencentCloud::Common::AbstractModel
        # @param DomainInfo: 域名信息
        # @type DomainInfo: :class:`Tencentcloud::Dnspod.v20210323.models.DomainInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainInfo, :RequestId
        
        def initialize(domaininfo=nil, requestid=nil)
          @DomainInfo = domaininfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainInfo'].nil?
            @DomainInfo = DomainInfo.new
            @DomainInfo.deserialize(params['DomainInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainShareInfo请求参数结构体
      class DescribeDomainShareInfoRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :DomainId
        
        def initialize(domain=nil, domainid=nil)
          @Domain = domain
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
        end
      end

      # DescribeDomainShareInfo返回参数结构体
      class DescribeDomainShareInfoResponse < TencentCloud::Common::AbstractModel
        # @param ShareList: 域名共享信息
        # @type ShareList: Array
        # @param Owner: 域名拥有者账号
        # @type Owner: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ShareList, :Owner, :RequestId
        
        def initialize(sharelist=nil, owner=nil, requestid=nil)
          @ShareList = sharelist
          @Owner = owner
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ShareList'].nil?
            @ShareList = []
            params['ShareList'].each do |i|
              domainshareinfo_tmp = DomainShareInfo.new
              domainshareinfo_tmp.deserialize(i)
              @ShareList << domainshareinfo_tmp
            end
          end
          @Owner = params['Owner']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordLineList请求参数结构体
      class DescribeRecordLineListRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名。
        # @type Domain: String
        # @param DomainGrade: 域名等级。
        # + 旧套餐：D_FREE、D_PLUS、D_EXTRA、D_EXPERT、D_ULTRA 分别对应免费套餐、个人豪华、企业1、企业2、企业3。
        # + 新套餐：DP_FREE、DP_PLUS、DP_EXTRA、DP_EXPERT、DP_ULTRA 分别对应新免费、个人专业版、企业创业版、企业标准版、企业旗舰版。
        # @type DomainGrade: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :DomainGrade, :DomainId
        
        def initialize(domain=nil, domaingrade=nil, domainid=nil)
          @Domain = domain
          @DomainGrade = domaingrade
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainGrade = params['DomainGrade']
          @DomainId = params['DomainId']
        end
      end

      # DescribeRecordLineList返回参数结构体
      class DescribeRecordLineListResponse < TencentCloud::Common::AbstractModel
        # @param LineList: 线路列表。
        # @type LineList: Array
        # @param LineGroupList: 线路分组列表。
        # @type LineGroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LineList, :LineGroupList, :RequestId
        
        def initialize(linelist=nil, linegrouplist=nil, requestid=nil)
          @LineList = linelist
          @LineGroupList = linegrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LineList'].nil?
            @LineList = []
            params['LineList'].each do |i|
              lineinfo_tmp = LineInfo.new
              lineinfo_tmp.deserialize(i)
              @LineList << lineinfo_tmp
            end
          end
          unless params['LineGroupList'].nil?
            @LineGroupList = []
            params['LineGroupList'].each do |i|
              linegroupinfo_tmp = LineGroupInfo.new
              linegroupinfo_tmp.deserialize(i)
              @LineGroupList << linegroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordList请求参数结构体
      class DescribeRecordListRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 要获取的解析记录所属的域名
        # @type Domain: String
        # @param DomainId: 要获取的解析记录所属的域名Id，如果传了DomainId，系统将会忽略Domain参数
        # @type DomainId: Integer
        # @param Subdomain: 解析记录的主机头，如果传了此参数，则只会返回此主机头对应的解析记录
        # @type Subdomain: String
        # @param RecordType: 获取某种类型的解析记录，如 A，CNAME，NS，AAAA，显性URL，隐性URL，CAA，SPF等
        # @type RecordType: String
        # @param RecordLine: 获取某条线路名称的解析记录
        # @type RecordLine: String
        # @param RecordLineId: 获取某个线路Id对应的解析记录，如果传RecordLineId，系统会忽略RecordLine参数
        # @type RecordLineId: String
        # @param GroupId: 获取某个分组下的解析记录时，传这个分组Id
        # @type GroupId: Integer
        # @param Keyword: 通过关键字搜索解析记录，当前支持搜索主机头和记录值
        # @type Keyword: String
        # @param SortField: 排序字段，支持 name,line,type,value,weight,mx,ttl,updated_on 几个字段。
        # @type SortField: String
        # @param SortType: 排序方式，正序：ASC，逆序：DESC。默认值为ASC。
        # @type SortType: String
        # @param Offset: 偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 限制数量，当前Limit最大支持3000。默认值为100。
        # @type Limit: Integer

        attr_accessor :Domain, :DomainId, :Subdomain, :RecordType, :RecordLine, :RecordLineId, :GroupId, :Keyword, :SortField, :SortType, :Offset, :Limit
        
        def initialize(domain=nil, domainid=nil, subdomain=nil, recordtype=nil, recordline=nil, recordlineid=nil, groupid=nil, keyword=nil, sortfield=nil, sorttype=nil, offset=nil, limit=nil)
          @Domain = domain
          @DomainId = domainid
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordLine = recordline
          @RecordLineId = recordlineid
          @GroupId = groupid
          @Keyword = keyword
          @SortField = sortfield
          @SortType = sorttype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @RecordLineId = params['RecordLineId']
          @GroupId = params['GroupId']
          @Keyword = params['Keyword']
          @SortField = params['SortField']
          @SortType = params['SortType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRecordList返回参数结构体
      class DescribeRecordListResponse < TencentCloud::Common::AbstractModel
        # @param RecordCountInfo: 记录的数量统计信息
        # @type RecordCountInfo: :class:`Tencentcloud::Dnspod.v20210323.models.RecordCountInfo`
        # @param RecordList: 获取的记录列表
        # @type RecordList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordCountInfo, :RecordList, :RequestId
        
        def initialize(recordcountinfo=nil, recordlist=nil, requestid=nil)
          @RecordCountInfo = recordcountinfo
          @RecordList = recordlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordCountInfo'].nil?
            @RecordCountInfo = RecordCountInfo.new
            @RecordCountInfo.deserialize(params['RecordCountInfo'])
          end
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              recordlistitem_tmp = RecordListItem.new
              recordlistitem_tmp.deserialize(i)
              @RecordList << recordlistitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecord请求参数结构体
      class DescribeRecordRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordId: 记录 ID 。
        # @type RecordId: Integer
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :RecordId, :DomainId
        
        def initialize(domain=nil, recordid=nil, domainid=nil)
          @Domain = domain
          @RecordId = recordid
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordId = params['RecordId']
          @DomainId = params['DomainId']
        end
      end

      # DescribeRecord返回参数结构体
      class DescribeRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordInfo: 记录信息
        # @type RecordInfo: :class:`Tencentcloud::Dnspod.v20210323.models.RecordInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordInfo, :RequestId
        
        def initialize(recordinfo=nil, requestid=nil)
          @RecordInfo = recordinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordInfo'].nil?
            @RecordInfo = RecordInfo.new
            @RecordInfo.deserialize(params['RecordInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordType请求参数结构体
      class DescribeRecordTypeRequest < TencentCloud::Common::AbstractModel
        # @param DomainGrade: 域名等级。
        # + 旧套餐：D_FREE、D_PLUS、D_EXTRA、D_EXPERT、D_ULTRA 分别对应免费套餐、个人豪华、企业1、企业2、企业3。
        # + 新套餐：DP_FREE、DP_PLUS、DP_EXTRA、DP_EXPERT、DP_ULTRA 分别对应新免费、个人专业版、企业创业版、企业标准版、企业旗舰版。
        # @type DomainGrade: String

        attr_accessor :DomainGrade
        
        def initialize(domaingrade=nil)
          @DomainGrade = domaingrade
        end

        def deserialize(params)
          @DomainGrade = params['DomainGrade']
        end
      end

      # DescribeRecordType返回参数结构体
      class DescribeRecordTypeResponse < TencentCloud::Common::AbstractModel
        # @param TypeList: 记录类型列表
        # @type TypeList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TypeList, :RequestId
        
        def initialize(typelist=nil, requestid=nil)
          @TypeList = typelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TypeList = params['TypeList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubdomainAnalytics请求参数结构体
      class DescribeSubdomainAnalyticsRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 要查询解析量的域名
        # @type Domain: String
        # @param StartDate: 查询的开始时间，格式：YYYY-MM-DD
        # @type StartDate: String
        # @param EndDate: 查询的结束时间，格式：YYYY-MM-DD
        # @type EndDate: String
        # @param Subdomain: 要查询解析量的子域名
        # @type Subdomain: String
        # @param DnsFormat: DATE:按天维度统计 HOUR:按小时维度统计
        # @type DnsFormat: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :StartDate, :EndDate, :Subdomain, :DnsFormat, :DomainId
        
        def initialize(domain=nil, startdate=nil, enddate=nil, subdomain=nil, dnsformat=nil, domainid=nil)
          @Domain = domain
          @StartDate = startdate
          @EndDate = enddate
          @Subdomain = subdomain
          @DnsFormat = dnsformat
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Subdomain = params['Subdomain']
          @DnsFormat = params['DnsFormat']
          @DomainId = params['DomainId']
        end
      end

      # DescribeSubdomainAnalytics返回参数结构体
      class DescribeSubdomainAnalyticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 当前统计维度解析量小计
        # @type Data: Array
        # @param Info: 子域名解析量统计查询信息
        # @type Info: :class:`Tencentcloud::Dnspod.v20210323.models.SubdomainAnalyticsInfo`
        # @param AliasData: 子域名别名解析量统计信息
        # @type AliasData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Info, :AliasData, :RequestId
        
        def initialize(data=nil, info=nil, aliasdata=nil, requestid=nil)
          @Data = data
          @Info = info
          @AliasData = aliasdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domainanalyticsdetail_tmp = DomainAnalyticsDetail.new
              domainanalyticsdetail_tmp.deserialize(i)
              @Data << domainanalyticsdetail_tmp
            end
          end
          unless params['Info'].nil?
            @Info = SubdomainAnalyticsInfo.new
            @Info.deserialize(params['Info'])
          end
          unless params['AliasData'].nil?
            @AliasData = []
            params['AliasData'].each do |i|
              subdomainaliasanalyticsitem_tmp = SubdomainAliasAnalyticsItem.new
              subdomainaliasanalyticsitem_tmp.deserialize(i)
              @AliasData << subdomainaliasanalyticsitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserDetail请求参数结构体
      class DescribeUserDetailRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeUserDetail返回参数结构体
      class DescribeUserDetailResponse < TencentCloud::Common::AbstractModel
        # @param UserInfo: 帐户信息
        # @type UserInfo: :class:`Tencentcloud::Dnspod.v20210323.models.UserInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserInfo, :RequestId
        
        def initialize(userinfo=nil, requestid=nil)
          @UserInfo = userinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 域名别名解析量统计信息
      class DomainAliasAnalyticsItem < TencentCloud::Common::AbstractModel
        # @param Info: 域名解析量统计查询信息
        # @type Info: :class:`Tencentcloud::Dnspod.v20210323.models.DomainAnalyticsInfo`
        # @param Data: 当前统计维度解析量小计
        # @type Data: Array

        attr_accessor :Info, :Data
        
        def initialize(info=nil, data=nil)
          @Info = info
          @Data = data
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = DomainAnalyticsInfo.new
            @Info.deserialize(params['Info'])
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domainanalyticsdetail_tmp = DomainAnalyticsDetail.new
              domainanalyticsdetail_tmp.deserialize(i)
              @Data << domainanalyticsdetail_tmp
            end
          end
        end
      end

      # 域名别名信息
      class DomainAliasInfo < TencentCloud::Common::AbstractModel
        # @param Id: 域名别名ID
        # @type Id: Integer
        # @param DomainAlias: 域名别名
        # @type DomainAlias: String

        attr_accessor :Id, :DomainAlias
        
        def initialize(id=nil, domainalias=nil)
          @Id = id
          @DomainAlias = domainalias
        end

        def deserialize(params)
          @Id = params['Id']
          @DomainAlias = params['DomainAlias']
        end
      end

      # 当前统计维度解析量小计
      class DomainAnalyticsDetail < TencentCloud::Common::AbstractModel
        # @param Num: 当前统计维度解析量小计
        # @type Num: Integer
        # @param DateKey: 按天统计时，为统计日期
        # @type DateKey: String
        # @param HourKey: 按小时统计时，为统计的当前时间的小时数(0-23)，例：HourKey为23时，统计周期为22点-23点的解析量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HourKey: Integer

        attr_accessor :Num, :DateKey, :HourKey
        
        def initialize(num=nil, datekey=nil, hourkey=nil)
          @Num = num
          @DateKey = datekey
          @HourKey = hourkey
        end

        def deserialize(params)
          @Num = params['Num']
          @DateKey = params['DateKey']
          @HourKey = params['HourKey']
        end
      end

      # 域名解析量统计查询信息
      class DomainAnalyticsInfo < TencentCloud::Common::AbstractModel
        # @param DnsFormat: DATE:按天维度统计 HOUR:按小时维度统计
        # @type DnsFormat: String
        # @param DnsTotal: 当前统计周期解析量总计
        # @type DnsTotal: Integer
        # @param Domain: 当前查询的域名
        # @type Domain: String
        # @param StartDate: 当前统计周期开始时间
        # @type StartDate: String
        # @param EndDate: 当前统计周期结束时间
        # @type EndDate: String

        attr_accessor :DnsFormat, :DnsTotal, :Domain, :StartDate, :EndDate
        
        def initialize(dnsformat=nil, dnstotal=nil, domain=nil, startdate=nil, enddate=nil)
          @DnsFormat = dnsformat
          @DnsTotal = dnstotal
          @Domain = domain
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @DnsFormat = params['DnsFormat']
          @DnsTotal = params['DnsTotal']
          @Domain = params['Domain']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # 列表页分页统计信息
      class DomainCountInfo < TencentCloud::Common::AbstractModel
        # @param DomainTotal: 符合条件的域名数量
        # @type DomainTotal: Integer
        # @param AllTotal: 用户可以查看的所有域名数量
        # @type AllTotal: Integer
        # @param MineTotal: 用户账号添加的域名数量
        # @type MineTotal: Integer
        # @param ShareTotal: 共享给用户的域名数量
        # @type ShareTotal: Integer
        # @param VipTotal: 付费域名数量
        # @type VipTotal: Integer
        # @param PauseTotal: 暂停的域名数量
        # @type PauseTotal: Integer
        # @param ErrorTotal: dns设置错误的域名数量
        # @type ErrorTotal: Integer
        # @param LockTotal: 锁定的域名数量
        # @type LockTotal: Integer
        # @param SpamTotal: 封禁的域名数量
        # @type SpamTotal: Integer
        # @param VipExpire: 30天内即将到期的域名数量
        # @type VipExpire: Integer
        # @param ShareOutTotal: 分享给其它人的域名数量
        # @type ShareOutTotal: Integer
        # @param GroupTotal: 指定分组内的域名数量
        # @type GroupTotal: Integer

        attr_accessor :DomainTotal, :AllTotal, :MineTotal, :ShareTotal, :VipTotal, :PauseTotal, :ErrorTotal, :LockTotal, :SpamTotal, :VipExpire, :ShareOutTotal, :GroupTotal
        
        def initialize(domaintotal=nil, alltotal=nil, minetotal=nil, sharetotal=nil, viptotal=nil, pausetotal=nil, errortotal=nil, locktotal=nil, spamtotal=nil, vipexpire=nil, shareouttotal=nil, grouptotal=nil)
          @DomainTotal = domaintotal
          @AllTotal = alltotal
          @MineTotal = minetotal
          @ShareTotal = sharetotal
          @VipTotal = viptotal
          @PauseTotal = pausetotal
          @ErrorTotal = errortotal
          @LockTotal = locktotal
          @SpamTotal = spamtotal
          @VipExpire = vipexpire
          @ShareOutTotal = shareouttotal
          @GroupTotal = grouptotal
        end

        def deserialize(params)
          @DomainTotal = params['DomainTotal']
          @AllTotal = params['AllTotal']
          @MineTotal = params['MineTotal']
          @ShareTotal = params['ShareTotal']
          @VipTotal = params['VipTotal']
          @PauseTotal = params['PauseTotal']
          @ErrorTotal = params['ErrorTotal']
          @LockTotal = params['LockTotal']
          @SpamTotal = params['SpamTotal']
          @VipExpire = params['VipExpire']
          @ShareOutTotal = params['ShareOutTotal']
          @GroupTotal = params['GroupTotal']
        end
      end

      # 域名信息（创建域名时返回）
      class DomainCreateInfo < TencentCloud::Common::AbstractModel
        # @param Id: 域名ID
        # @type Id: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param Punycode: 域名的punycode
        # @type Punycode: String
        # @param GradeNsList: 域名的NS列表
        # @type GradeNsList: Array

        attr_accessor :Id, :Domain, :Punycode, :GradeNsList
        
        def initialize(id=nil, domain=nil, punycode=nil, gradenslist=nil)
          @Id = id
          @Domain = domain
          @Punycode = punycode
          @GradeNsList = gradenslist
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @Punycode = params['Punycode']
          @GradeNsList = params['GradeNsList']
        end
      end

      # 域名详情
      class DomainInfo < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名ID
        # @type DomainId: Integer
        # @param Status: 域名状态
        # @type Status: String
        # @param Grade: 域名套餐等级
        # @type Grade: String
        # @param GroupId: 域名分组ID
        # @type GroupId: Integer
        # @param IsMark: 是否星标域名
        # @type IsMark: String
        # @param TTL: TTL(DNS记录缓存时间)
        # @type TTL: Integer
        # @param CnameSpeedup: cname加速启用状态
        # @type CnameSpeedup: String
        # @param Remark: 域名备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param Punycode: 域名Punycode
        # @type Punycode: String
        # @param DnsStatus: 域名DNS状态
        # @type DnsStatus: String
        # @param DnspodNsList: 域名的NS列表
        # @type DnspodNsList: Array
        # @param Domain: 域名
        # @type Domain: String
        # @param GradeLevel: 域名等级代号
        # @type GradeLevel: Integer
        # @param UserId: 域名所属的用户ID
        # @type UserId: Integer
        # @param IsVip: 是否为付费域名
        # @type IsVip: String
        # @param Owner: 域名所有者的账号
        # @type Owner: String
        # @param GradeTitle: 域名等级的描述
        # @type GradeTitle: String
        # @param CreatedOn: 域名创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 最后操作时间
        # @type UpdatedOn: String
        # @param Uin: 腾讯云账户Uin
        # @type Uin: String
        # @param ActualNsList: 域名实际使用的NS列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActualNsList: Array
        # @param RecordCount: 域名的记录数量
        # @type RecordCount: Integer
        # @param OwnerNick: 域名所有者的账户昵称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerNick: String

        attr_accessor :DomainId, :Status, :Grade, :GroupId, :IsMark, :TTL, :CnameSpeedup, :Remark, :Punycode, :DnsStatus, :DnspodNsList, :Domain, :GradeLevel, :UserId, :IsVip, :Owner, :GradeTitle, :CreatedOn, :UpdatedOn, :Uin, :ActualNsList, :RecordCount, :OwnerNick
        
        def initialize(domainid=nil, status=nil, grade=nil, groupid=nil, ismark=nil, ttl=nil, cnamespeedup=nil, remark=nil, punycode=nil, dnsstatus=nil, dnspodnslist=nil, domain=nil, gradelevel=nil, userid=nil, isvip=nil, owner=nil, gradetitle=nil, createdon=nil, updatedon=nil, uin=nil, actualnslist=nil, recordcount=nil, ownernick=nil)
          @DomainId = domainid
          @Status = status
          @Grade = grade
          @GroupId = groupid
          @IsMark = ismark
          @TTL = ttl
          @CnameSpeedup = cnamespeedup
          @Remark = remark
          @Punycode = punycode
          @DnsStatus = dnsstatus
          @DnspodNsList = dnspodnslist
          @Domain = domain
          @GradeLevel = gradelevel
          @UserId = userid
          @IsVip = isvip
          @Owner = owner
          @GradeTitle = gradetitle
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @Uin = uin
          @ActualNsList = actualnslist
          @RecordCount = recordcount
          @OwnerNick = ownernick
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @Status = params['Status']
          @Grade = params['Grade']
          @GroupId = params['GroupId']
          @IsMark = params['IsMark']
          @TTL = params['TTL']
          @CnameSpeedup = params['CnameSpeedup']
          @Remark = params['Remark']
          @Punycode = params['Punycode']
          @DnsStatus = params['DnsStatus']
          @DnspodNsList = params['DnspodNsList']
          @Domain = params['Domain']
          @GradeLevel = params['GradeLevel']
          @UserId = params['UserId']
          @IsVip = params['IsVip']
          @Owner = params['Owner']
          @GradeTitle = params['GradeTitle']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @Uin = params['Uin']
          @ActualNsList = params['ActualNsList']
          @RecordCount = params['RecordCount']
          @OwnerNick = params['OwnerNick']
        end
      end

      # 域名列表元素
      class DomainListItem < TencentCloud::Common::AbstractModel
        # @param DomainId: 系统分配给域名的唯一标识
        # @type DomainId: Integer
        # @param Name: 域名的原始格式
        # @type Name: String
        # @param Status: 域名的状态，正常：ENABLE，暂停：PAUSE，封禁：SPAM
        # @type Status: String
        # @param TTL: 域名默认的解析记录默认TTL值
        # @type TTL: Integer
        # @param CNAMESpeedup: 是否开启CNAME加速，开启：ENABLE，未开启：DISABLE
        # @type CNAMESpeedup: String
        # @param DNSStatus: DNS 设置状态，错误：DNSERROR，正常：空字符串
        # @type DNSStatus: String
        # @param Grade: 域名的套餐等级代码
        # @type Grade: String
        # @param GroupId: 域名所属的分组Id
        # @type GroupId: Integer
        # @param SearchEnginePush: 是否开启搜索引擎推送优化，是：YES，否：NO
        # @type SearchEnginePush: String
        # @param Remark: 域名备注说明
        # @type Remark: String
        # @param Punycode: 经过punycode编码后的域名格式
        # @type Punycode: String
        # @param EffectiveDNS: 系统为域名分配的有效DNS
        # @type EffectiveDNS: Array
        # @param GradeLevel: 域名套餐等级对应的序号
        # @type GradeLevel: Integer
        # @param GradeTitle: 套餐名称
        # @type GradeTitle: String
        # @param IsVip: 是否是付费套餐
        # @type IsVip: String
        # @param VipStartAt: 付费套餐开通时间
        # @type VipStartAt: String
        # @param VipEndAt: 付费套餐到期时间
        # @type VipEndAt: String
        # @param VipAutoRenew: 域名是否开通VIP自动续费，是：YES，否：NO，默认：DEFAULT
        # @type VipAutoRenew: String
        # @param RecordCount: 域名下的记录数量
        # @type RecordCount: Integer
        # @param CreatedOn: 域名添加时间
        # @type CreatedOn: String
        # @param UpdatedOn: 域名更新时间
        # @type UpdatedOn: String
        # @param Owner: 域名所属账号
        # @type Owner: String

        attr_accessor :DomainId, :Name, :Status, :TTL, :CNAMESpeedup, :DNSStatus, :Grade, :GroupId, :SearchEnginePush, :Remark, :Punycode, :EffectiveDNS, :GradeLevel, :GradeTitle, :IsVip, :VipStartAt, :VipEndAt, :VipAutoRenew, :RecordCount, :CreatedOn, :UpdatedOn, :Owner
        
        def initialize(domainid=nil, name=nil, status=nil, ttl=nil, cnamespeedup=nil, dnsstatus=nil, grade=nil, groupid=nil, searchenginepush=nil, remark=nil, punycode=nil, effectivedns=nil, gradelevel=nil, gradetitle=nil, isvip=nil, vipstartat=nil, vipendat=nil, vipautorenew=nil, recordcount=nil, createdon=nil, updatedon=nil, owner=nil)
          @DomainId = domainid
          @Name = name
          @Status = status
          @TTL = ttl
          @CNAMESpeedup = cnamespeedup
          @DNSStatus = dnsstatus
          @Grade = grade
          @GroupId = groupid
          @SearchEnginePush = searchenginepush
          @Remark = remark
          @Punycode = punycode
          @EffectiveDNS = effectivedns
          @GradeLevel = gradelevel
          @GradeTitle = gradetitle
          @IsVip = isvip
          @VipStartAt = vipstartat
          @VipEndAt = vipendat
          @VipAutoRenew = vipautorenew
          @RecordCount = recordcount
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @Owner = owner
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @Name = params['Name']
          @Status = params['Status']
          @TTL = params['TTL']
          @CNAMESpeedup = params['CNAMESpeedup']
          @DNSStatus = params['DNSStatus']
          @Grade = params['Grade']
          @GroupId = params['GroupId']
          @SearchEnginePush = params['SearchEnginePush']
          @Remark = params['Remark']
          @Punycode = params['Punycode']
          @EffectiveDNS = params['EffectiveDNS']
          @GradeLevel = params['GradeLevel']
          @GradeTitle = params['GradeTitle']
          @IsVip = params['IsVip']
          @VipStartAt = params['VipStartAt']
          @VipEndAt = params['VipEndAt']
          @VipAutoRenew = params['VipAutoRenew']
          @RecordCount = params['RecordCount']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @Owner = params['Owner']
        end
      end

      # 域名共享信息
      class DomainShareInfo < TencentCloud::Common::AbstractModel
        # @param ShareTo: 域名共享对象的账号
        # @type ShareTo: String
        # @param Mode: 共享模式，“rw”：可读写。 “r”:：只读
        # @type Mode: String
        # @param Status: 共享状态“enabled”：共享成功。“pending”：共享到的账号不存在, 等待注册
        # @type Status: String

        attr_accessor :ShareTo, :Mode, :Status
        
        def initialize(shareto=nil, mode=nil, status=nil)
          @ShareTo = shareto
          @Mode = mode
          @Status = status
        end

        def deserialize(params)
          @ShareTo = params['ShareTo']
          @Mode = params['Mode']
          @Status = params['Status']
        end
      end

      # 域名分组列表
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 分组ID
        # @type GroupId: Integer
        # @param GroupName: 分组名称
        # @type GroupName: String
        # @param GroupType: 分组类型
        # @type GroupType: String
        # @param Size: 该分组中域名个数
        # @type Size: Integer

        attr_accessor :GroupId, :GroupName, :GroupType, :Size
        
        def initialize(groupid=nil, groupname=nil, grouptype=nil, size=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupType = grouptype
          @Size = size
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @GroupType = params['GroupType']
          @Size = params['Size']
        end
      end

      # 线路分组信息
      class LineGroupInfo < TencentCloud::Common::AbstractModel
        # @param LineId: 线路分组ID
        # @type LineId: String
        # @param Name: 线路分组名称
        # @type Name: String
        # @param Type: 分组类型
        # @type Type: String
        # @param LineList: 线路分组包含的线路列表
        # @type LineList: Array

        attr_accessor :LineId, :Name, :Type, :LineList
        
        def initialize(lineid=nil, name=nil, type=nil, linelist=nil)
          @LineId = lineid
          @Name = name
          @Type = type
          @LineList = linelist
        end

        def deserialize(params)
          @LineId = params['LineId']
          @Name = params['Name']
          @Type = params['Type']
          @LineList = params['LineList']
        end
      end

      # 解析线路信息
      class LineInfo < TencentCloud::Common::AbstractModel
        # @param Name: 线路名称
        # @type Name: String
        # @param LineId: 线路ID
        # @type LineId: String

        attr_accessor :Name, :LineId
        
        def initialize(name=nil, lineid=nil)
          @Name = name
          @LineId = lineid
        end

        def deserialize(params)
          @Name = params['Name']
          @LineId = params['LineId']
        end
      end

      # 域名锁定信息
      class LockInfo < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名 ID
        # @type DomainId: Integer
        # @param LockCode: 域名解锁码
        # @type LockCode: String
        # @param LockEnd: 域名自动解锁日期
        # @type LockEnd: String

        attr_accessor :DomainId, :LockCode, :LockEnd
        
        def initialize(domainid=nil, lockcode=nil, lockend=nil)
          @DomainId = domainid
          @LockCode = lockcode
          @LockEnd = lockend
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @LockCode = params['LockCode']
          @LockEnd = params['LockEnd']
        end
      end

      # ModifyDomainLock请求参数结构体
      class ModifyDomainLockRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param LockDays: 域名要锁定的天数，最多可锁定的天数可以通过获取域名权限接口获取。
        # @type LockDays: Integer
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :LockDays, :DomainId
        
        def initialize(domain=nil, lockdays=nil, domainid=nil)
          @Domain = domain
          @LockDays = lockdays
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @LockDays = params['LockDays']
          @DomainId = params['DomainId']
        end
      end

      # ModifyDomainLock返回参数结构体
      class ModifyDomainLockResponse < TencentCloud::Common::AbstractModel
        # @param LockInfo: 域名锁定信息
        # @type LockInfo: :class:`Tencentcloud::Dnspod.v20210323.models.LockInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LockInfo, :RequestId
        
        def initialize(lockinfo=nil, requestid=nil)
          @LockInfo = lockinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LockInfo'].nil?
            @LockInfo = LockInfo.new
            @LockInfo.deserialize(params['LockInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDomainOwner请求参数结构体
      class ModifyDomainOwnerRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Account: 域名需要转入的账号，支持Uin或者邮箱格式
        # @type Account: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :Account, :DomainId
        
        def initialize(domain=nil, account=nil, domainid=nil)
          @Domain = domain
          @Account = account
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Account = params['Account']
          @DomainId = params['DomainId']
        end
      end

      # ModifyDomainOwner返回参数结构体
      class ModifyDomainOwnerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomainRemark请求参数结构体
      class ModifyDomainRemarkRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param Remark: 域名备注，删除备注请提交空内容。
        # @type Remark: String

        attr_accessor :Domain, :DomainId, :Remark
        
        def initialize(domain=nil, domainid=nil, remark=nil)
          @Domain = domain
          @DomainId = domainid
          @Remark = remark
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Remark = params['Remark']
        end
      end

      # ModifyDomainRemark返回参数结构体
      class ModifyDomainRemarkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomainStatus请求参数结构体
      class ModifyDomainStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param Status: 域名状态，”enable” 、”disable” 分别代表启用和暂停
        # @type Status: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :Status, :DomainId
        
        def initialize(domain=nil, status=nil, domainid=nil)
          @Domain = domain
          @Status = status
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @DomainId = params['DomainId']
        end
      end

      # ModifyDomainStatus返回参数结构体
      class ModifyDomainStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDomainUnlock请求参数结构体
      class ModifyDomainUnlockRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param LockCode: 域名解锁码，锁定的时候会返回。
        # @type LockCode: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :LockCode, :DomainId
        
        def initialize(domain=nil, lockcode=nil, domainid=nil)
          @Domain = domain
          @LockCode = lockcode
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @LockCode = params['LockCode']
          @DomainId = params['DomainId']
        end
      end

      # ModifyDomainUnlock返回参数结构体
      class ModifyDomainUnlockResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDynamicDNS请求参数结构体
      class ModifyDynamicDNSRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordId: 记录ID。
        # @type RecordId: Integer
        # @param RecordLine: 记录线路，通过 API 记录线路获得，中文，比如：默认。
        # @type RecordLine: String
        # @param Value: 记录值，如 IP : 200.200.200.200， CNAME : cname.dnspod.com.， MX : mail.dnspod.com.。
        # @type Value: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param SubDomain: 主机记录，如 www，如果不传，默认为 @。
        # @type SubDomain: String
        # @param RecordLineId: 线路的 ID，通过 API 记录线路获得，英文字符串，比如：10=1。参数RecordLineId优先级高于RecordLine，如果同时传递二者，优先使用RecordLineId参数。
        # @type RecordLineId: String
        # @param Ttl: TTL值，如果不传，默认为域名的TTL值。
        # @type Ttl: Integer

        attr_accessor :Domain, :RecordId, :RecordLine, :Value, :DomainId, :SubDomain, :RecordLineId, :Ttl
        
        def initialize(domain=nil, recordid=nil, recordline=nil, value=nil, domainid=nil, subdomain=nil, recordlineid=nil, ttl=nil)
          @Domain = domain
          @RecordId = recordid
          @RecordLine = recordline
          @Value = value
          @DomainId = domainid
          @SubDomain = subdomain
          @RecordLineId = recordlineid
          @Ttl = ttl
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordId = params['RecordId']
          @RecordLine = params['RecordLine']
          @Value = params['Value']
          @DomainId = params['DomainId']
          @SubDomain = params['SubDomain']
          @RecordLineId = params['RecordLineId']
          @Ttl = params['Ttl']
        end
      end

      # ModifyDynamicDNS返回参数结构体
      class ModifyDynamicDNSResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录ID
        # @type RecordId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId
        
        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPackageAutoRenew请求参数结构体
      class ModifyPackageAutoRenewRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Status: enable 开启自动续费；disable 关闭自动续费
        # @type Status: String

        attr_accessor :ResourceId, :Status
        
        def initialize(resourceid=nil, status=nil)
          @ResourceId = resourceid
          @Status = status
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Status = params['Status']
        end
      end

      # ModifyPackageAutoRenew返回参数结构体
      class ModifyPackageAutoRenewResponse < TencentCloud::Common::AbstractModel
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

      # 批量添加记录返回结构
      class ModifyRecordBatchDetail < TencentCloud::Common::AbstractModel
        # @param RecordList: 见RecordInfoBatchModify
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordList: Array
        # @param Id: 任务编号
        # @type Id: Integer
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param DomainGrade: 域名等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainGrade: String
        # @param ErrMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param Status: 该条任务运行状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Operation: 操作类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operation: String
        # @param DomainId: 域名ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainId: Integer

        attr_accessor :RecordList, :Id, :Domain, :DomainGrade, :ErrMsg, :Status, :Operation, :DomainId
        
        def initialize(recordlist=nil, id=nil, domain=nil, domaingrade=nil, errmsg=nil, status=nil, operation=nil, domainid=nil)
          @RecordList = recordlist
          @Id = id
          @Domain = domain
          @DomainGrade = domaingrade
          @ErrMsg = errmsg
          @Status = status
          @Operation = operation
          @DomainId = domainid
        end

        def deserialize(params)
          unless params['RecordList'].nil?
            @RecordList = []
            params['RecordList'].each do |i|
              batchrecordinfo_tmp = BatchRecordInfo.new
              batchrecordinfo_tmp.deserialize(i)
              @RecordList << batchrecordinfo_tmp
            end
          end
          @Id = params['Id']
          @Domain = params['Domain']
          @DomainGrade = params['DomainGrade']
          @ErrMsg = params['ErrMsg']
          @Status = params['Status']
          @Operation = params['Operation']
          @DomainId = params['DomainId']
        end
      end

      # ModifyRecordBatch请求参数结构体
      class ModifyRecordBatchRequest < TencentCloud::Common::AbstractModel
        # @param RecordIdList: 记录ID数组
        # @type RecordIdList: Array
        # @param Change: 要修改的字段，可选值为 [“sub_domain”、”record_type”、”area”、”value”、”mx”、”ttl”、”status”] 中的某一个。
        # @type Change: String
        # @param ChangeTo: 修改为，具体依赖 change 字段，必填参数。
        # @type ChangeTo: String
        # @param Value: 要修改到的记录值，仅当 change 字段为 “record_type” 时为必填参数。
        # @type Value: String
        # @param MX: MX记录优先级，仅当修改为 MX 记录时为必填参数。
        # @type MX: String

        attr_accessor :RecordIdList, :Change, :ChangeTo, :Value, :MX
        
        def initialize(recordidlist=nil, change=nil, changeto=nil, value=nil, mx=nil)
          @RecordIdList = recordidlist
          @Change = change
          @ChangeTo = changeto
          @Value = value
          @MX = mx
        end

        def deserialize(params)
          @RecordIdList = params['RecordIdList']
          @Change = params['Change']
          @ChangeTo = params['ChangeTo']
          @Value = params['Value']
          @MX = params['MX']
        end
      end

      # ModifyRecordBatch返回参数结构体
      class ModifyRecordBatchResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 批量任务ID
        # @type JobId: Integer
        # @param DetailList: 见modifyRecordBatchDetail
        # @type DetailList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :DetailList, :RequestId
        
        def initialize(jobid=nil, detaillist=nil, requestid=nil)
          @JobId = jobid
          @DetailList = detaillist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['DetailList'].nil?
            @DetailList = []
            params['DetailList'].each do |i|
              modifyrecordbatchdetail_tmp = ModifyRecordBatchDetail.new
              modifyrecordbatchdetail_tmp.deserialize(i)
              @DetailList << modifyrecordbatchdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyRecordRemark请求参数结构体
      class ModifyRecordRemarkRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordId: 记录 ID 。
        # @type RecordId: Integer
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param Remark: 解析记录备注，删除备注请提交空内容。
        # @type Remark: String

        attr_accessor :Domain, :RecordId, :DomainId, :Remark
        
        def initialize(domain=nil, recordid=nil, domainid=nil, remark=nil)
          @Domain = domain
          @RecordId = recordid
          @DomainId = domainid
          @Remark = remark
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordId = params['RecordId']
          @DomainId = params['DomainId']
          @Remark = params['Remark']
        end
      end

      # ModifyRecordRemark返回参数结构体
      class ModifyRecordRemarkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRecord请求参数结构体
      class ModifyRecordRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordType: 记录类型，通过 API 记录类型获得，大写英文，比如：A 。
        # @type RecordType: String
        # @param RecordLine: 记录线路，通过 API 记录线路获得，中文，比如：默认。
        # @type RecordLine: String
        # @param Value: 记录值，如 IP : 200.200.200.200， CNAME : cname.dnspod.com.， MX : mail.dnspod.com.。
        # @type Value: String
        # @param RecordId: 记录 ID 。
        # @type RecordId: Integer
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param SubDomain: 主机记录，如 www，如果不传，默认为 @。
        # @type SubDomain: String
        # @param RecordLineId: 线路的 ID，通过 API 记录线路获得，英文字符串，比如：10=1。参数RecordLineId优先级高于RecordLine，如果同时传递二者，优先使用RecordLineId参数。
        # @type RecordLineId: String
        # @param MX: MX 优先级，当记录类型是 MX 时有效，范围1-20，MX 记录时必选。
        # @type MX: Integer
        # @param TTL: TTL，范围1-604800，不同等级域名最小值不同。
        # @type TTL: Integer
        # @param Weight: 权重信息，0到100的整数。仅企业 VIP 域名可用，0 表示关闭，不传该参数，表示不设置权重信息。
        # @type Weight: Integer
        # @param Status: 记录初始状态，取值范围为 ENABLE 和 DISABLE 。默认为 ENABLE ，如果传入 DISABLE，解析不会生效，也不会验证负载均衡的限制。
        # @type Status: String

        attr_accessor :Domain, :RecordType, :RecordLine, :Value, :RecordId, :DomainId, :SubDomain, :RecordLineId, :MX, :TTL, :Weight, :Status
        
        def initialize(domain=nil, recordtype=nil, recordline=nil, value=nil, recordid=nil, domainid=nil, subdomain=nil, recordlineid=nil, mx=nil, ttl=nil, weight=nil, status=nil)
          @Domain = domain
          @RecordType = recordtype
          @RecordLine = recordline
          @Value = value
          @RecordId = recordid
          @DomainId = domainid
          @SubDomain = subdomain
          @RecordLineId = recordlineid
          @MX = mx
          @TTL = ttl
          @Weight = weight
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @Value = params['Value']
          @RecordId = params['RecordId']
          @DomainId = params['DomainId']
          @SubDomain = params['SubDomain']
          @RecordLineId = params['RecordLineId']
          @MX = params['MX']
          @TTL = params['TTL']
          @Weight = params['Weight']
          @Status = params['Status']
        end
      end

      # ModifyRecord返回参数结构体
      class ModifyRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录ID
        # @type RecordId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId
        
        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRecordStatus请求参数结构体
      class ModifyRecordStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordId: 记录 ID 。
        # @type RecordId: Integer
        # @param Status: 记录的状态。取值范围为 ENABLE 和 DISABLE。如果传入 DISABLE，解析不会生效，也不会验证负载均衡的限制。
        # @type Status: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer

        attr_accessor :Domain, :RecordId, :Status, :DomainId
        
        def initialize(domain=nil, recordid=nil, status=nil, domainid=nil)
          @Domain = domain
          @RecordId = recordid
          @Status = status
          @DomainId = domainid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordId = params['RecordId']
          @Status = params['Status']
          @DomainId = params['DomainId']
        end
      end

      # ModifyRecordStatus返回参数结构体
      class ModifyRecordStatusResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录ID。
        # @type RecordId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId
        
        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # ModifySubdomainStatus请求参数结构体
      class ModifySubdomainStatusRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param RecordType: 记录类型。允许的值为A、CNAME、MX、TXT、NS、AAAA、SPF、SRV、CAA、URL、URL1。若要传多个，用英文逗号分隔，例如A,TXT,CNAME。
        # @type RecordType: String
        # @param Status: 记录状态。允许的值为disable。
        # @type Status: String
        # @param DomainId: 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。
        # @type DomainId: Integer
        # @param SubDomain: 主机记录，如 www，如果不传，默认为 @。
        # @type SubDomain: String

        attr_accessor :Domain, :RecordType, :Status, :DomainId, :SubDomain
        
        def initialize(domain=nil, recordtype=nil, status=nil, domainid=nil, subdomain=nil)
          @Domain = domain
          @RecordType = recordtype
          @Status = status
          @DomainId = domainid
          @SubDomain = subdomain
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RecordType = params['RecordType']
          @Status = params['Status']
          @DomainId = params['DomainId']
          @SubDomain = params['SubDomain']
        end
      end

      # ModifySubdomainStatus返回参数结构体
      class ModifySubdomainStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVasAutoRenewStatus请求参数结构体
      class ModifyVasAutoRenewStatusRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Status: enable 开启自动续费；disable 关闭自动续费
        # @type Status: String

        attr_accessor :ResourceId, :Status
        
        def initialize(resourceid=nil, status=nil)
          @ResourceId = resourceid
          @Status = status
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @Status = params['Status']
        end
      end

      # ModifyVasAutoRenewStatus返回参数结构体
      class ModifyVasAutoRenewStatusResponse < TencentCloud::Common::AbstractModel
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

      # PayOrderWithBalance请求参数结构体
      class PayOrderWithBalanceRequest < TencentCloud::Common::AbstractModel
        # @param BigDealIdList: 需要支付的大订单号数组
        # @type BigDealIdList: Array
        # @param VoucherIdList: 代金券ID数组
        # @type VoucherIdList: Array

        attr_accessor :BigDealIdList, :VoucherIdList
        
        def initialize(bigdealidlist=nil, voucheridlist=nil)
          @BigDealIdList = bigdealidlist
          @VoucherIdList = voucheridlist
        end

        def deserialize(params)
          @BigDealIdList = params['BigDealIdList']
          @VoucherIdList = params['VoucherIdList']
        end
      end

      # PayOrderWithBalance返回参数结构体
      class PayOrderWithBalanceResponse < TencentCloud::Common::AbstractModel
        # @param DealIdList: 此次操作支付成功的订单id数组
        # @type DealIdList: Array
        # @param BigDealIdList: 此次操作支付成功的大订单号数组
        # @type BigDealIdList: Array
        # @param DealNameList: 此次操作支付成功的订单号数组
        # @type DealNameList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealIdList, :BigDealIdList, :DealNameList, :RequestId
        
        def initialize(dealidlist=nil, bigdealidlist=nil, dealnamelist=nil, requestid=nil)
          @DealIdList = dealidlist
          @BigDealIdList = bigdealidlist
          @DealNameList = dealnamelist
          @RequestId = requestid
        end

        def deserialize(params)
          @DealIdList = params['DealIdList']
          @BigDealIdList = params['BigDealIdList']
          @DealNameList = params['DealNameList']
          @RequestId = params['RequestId']
        end
      end

      # 域名权限项
      class PurviewInfo < TencentCloud::Common::AbstractModel
        # @param Name: 权限名称
        # @type Name: String
        # @param Value: 权限值
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

      # 查询记录列表的数量统计信息
      class RecordCountInfo < TencentCloud::Common::AbstractModel
        # @param SubdomainCount: 子域名数量
        # @type SubdomainCount: Integer
        # @param ListCount: 列表返回的记录数
        # @type ListCount: Integer
        # @param TotalCount: 总的记录数
        # @type TotalCount: Integer

        attr_accessor :SubdomainCount, :ListCount, :TotalCount
        
        def initialize(subdomaincount=nil, listcount=nil, totalcount=nil)
          @SubdomainCount = subdomaincount
          @ListCount = listcount
          @TotalCount = totalcount
        end

        def deserialize(params)
          @SubdomainCount = params['SubdomainCount']
          @ListCount = params['ListCount']
          @TotalCount = params['TotalCount']
        end
      end

      # 记录信息
      class RecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 记录 ID 。
        # @type Id: Integer
        # @param SubDomain: 子域名(主机记录)。
        # @type SubDomain: String
        # @param RecordType: 记录类型, 详见 DescribeRecordType 接口。
        # @type RecordType: String
        # @param RecordLine: 解析记录的线路，详见 DescribeRecordLineList 接口。
        # @type RecordLine: String
        # @param RecordLineId: 解析记录的线路 ID ，详见 DescribeRecordLineList 接口。
        # @type RecordLineId: String
        # @param Value: 记录值。
        # @type Value: String
        # @param Weight: 记录权重值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param MX: 记录的 MX 记录值，非 MX 记录类型，默认为 0。
        # @type MX: Integer
        # @param TTL: 记录的 TTL 值。
        # @type TTL: Integer
        # @param Enabled: 记录状态。0表示禁用，1表示启用。
        # @type Enabled: Integer
        # @param MonitorStatus: 该记录的 D 监控状态。
        # "Ok" : 服务器正常。
        # "Warn" : 该记录有报警, 服务器返回 4XX。
        # "Down" : 服务器宕机。
        # "" : 该记录未开启 D 监控。
        # @type MonitorStatus: String
        # @param Remark: 记录的备注。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param UpdatedOn: 记录最后更新时间。
        # @type UpdatedOn: String
        # @param DomainId: 域名 ID 。
        # @type DomainId: Integer

        attr_accessor :Id, :SubDomain, :RecordType, :RecordLine, :RecordLineId, :Value, :Weight, :MX, :TTL, :Enabled, :MonitorStatus, :Remark, :UpdatedOn, :DomainId
        
        def initialize(id=nil, subdomain=nil, recordtype=nil, recordline=nil, recordlineid=nil, value=nil, weight=nil, mx=nil, ttl=nil, enabled=nil, monitorstatus=nil, remark=nil, updatedon=nil, domainid=nil)
          @Id = id
          @SubDomain = subdomain
          @RecordType = recordtype
          @RecordLine = recordline
          @RecordLineId = recordlineid
          @Value = value
          @Weight = weight
          @MX = mx
          @TTL = ttl
          @Enabled = enabled
          @MonitorStatus = monitorstatus
          @Remark = remark
          @UpdatedOn = updatedon
          @DomainId = domainid
        end

        def deserialize(params)
          @Id = params['Id']
          @SubDomain = params['SubDomain']
          @RecordType = params['RecordType']
          @RecordLine = params['RecordLine']
          @RecordLineId = params['RecordLineId']
          @Value = params['Value']
          @Weight = params['Weight']
          @MX = params['MX']
          @TTL = params['TTL']
          @Enabled = params['Enabled']
          @MonitorStatus = params['MonitorStatus']
          @Remark = params['Remark']
          @UpdatedOn = params['UpdatedOn']
          @DomainId = params['DomainId']
        end
      end

      # 记录列表元素
      class RecordListItem < TencentCloud::Common::AbstractModel
        # @param RecordId: 记录Id
        # @type RecordId: Integer
        # @param Value: 记录值
        # @type Value: String
        # @param Status: 记录状态，启用：ENABLE，暂停：DISABLE
        # @type Status: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String
        # @param Name: 主机名
        # @type Name: String
        # @param Line: 记录线路
        # @type Line: String
        # @param LineId: 线路Id
        # @type LineId: String
        # @param Type: 记录类型
        # @type Type: String
        # @param Weight: 记录权重，用于负载均衡记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param MonitorStatus: 记录监控状态，正常：OK，告警：WARN，宕机：DOWN，未设置监控或监控暂停则为空
        # @type MonitorStatus: String
        # @param Remark: 记录备注说明
        # @type Remark: String
        # @param TTL: 记录缓存时间
        # @type TTL: Integer
        # @param MX: MX值，只有MX记录有
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MX: Integer

        attr_accessor :RecordId, :Value, :Status, :UpdatedOn, :Name, :Line, :LineId, :Type, :Weight, :MonitorStatus, :Remark, :TTL, :MX
        
        def initialize(recordid=nil, value=nil, status=nil, updatedon=nil, name=nil, line=nil, lineid=nil, type=nil, weight=nil, monitorstatus=nil, remark=nil, ttl=nil, mx=nil)
          @RecordId = recordid
          @Value = value
          @Status = status
          @UpdatedOn = updatedon
          @Name = name
          @Line = line
          @LineId = lineid
          @Type = type
          @Weight = weight
          @MonitorStatus = monitorstatus
          @Remark = remark
          @TTL = ttl
          @MX = mx
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @Value = params['Value']
          @Status = params['Status']
          @UpdatedOn = params['UpdatedOn']
          @Name = params['Name']
          @Line = params['Line']
          @LineId = params['LineId']
          @Type = params['Type']
          @Weight = params['Weight']
          @MonitorStatus = params['MonitorStatus']
          @Remark = params['Remark']
          @TTL = params['TTL']
          @MX = params['MX']
        end
      end

      # 子域名别名解析量统计信息
      class SubdomainAliasAnalyticsItem < TencentCloud::Common::AbstractModel
        # @param Info: 子域名解析量统计查询信息
        # @type Info: :class:`Tencentcloud::Dnspod.v20210323.models.SubdomainAnalyticsInfo`
        # @param Data: 当前统计维度解析量小计
        # @type Data: Array

        attr_accessor :Info, :Data
        
        def initialize(info=nil, data=nil)
          @Info = info
          @Data = data
        end

        def deserialize(params)
          unless params['Info'].nil?
            @Info = SubdomainAnalyticsInfo.new
            @Info.deserialize(params['Info'])
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              domainanalyticsdetail_tmp = DomainAnalyticsDetail.new
              domainanalyticsdetail_tmp.deserialize(i)
              @Data << domainanalyticsdetail_tmp
            end
          end
        end
      end

      # 子域名解析量统计查询信息
      class SubdomainAnalyticsInfo < TencentCloud::Common::AbstractModel
        # @param DnsFormat: DATE:按天维度统计 HOUR:按小时维度统计
        # @type DnsFormat: String
        # @param DnsTotal: 当前统计周期解析量总计
        # @type DnsTotal: Integer
        # @param Domain: 当前查询的域名
        # @type Domain: String
        # @param StartDate: 当前统计周期开始时间
        # @type StartDate: String
        # @param EndDate: 当前统计周期结束时间
        # @type EndDate: String
        # @param Subdomain: 当前统计的子域名
        # @type Subdomain: String

        attr_accessor :DnsFormat, :DnsTotal, :Domain, :StartDate, :EndDate, :Subdomain
        
        def initialize(dnsformat=nil, dnstotal=nil, domain=nil, startdate=nil, enddate=nil, subdomain=nil)
          @DnsFormat = dnsformat
          @DnsTotal = dnstotal
          @Domain = domain
          @StartDate = startdate
          @EndDate = enddate
          @Subdomain = subdomain
        end

        def deserialize(params)
          @DnsFormat = params['DnsFormat']
          @DnsTotal = params['DnsTotal']
          @Domain = params['Domain']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Subdomain = params['Subdomain']
        end
      end

      # 用户信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param Nick: 用户昵称
        # @type Nick: String
        # @param Id: 用户ID
        # @type Id: Integer
        # @param Email: 用户账号, 邮箱格式
        # @type Email: String
        # @param Status: 账号状态：”enabled”: 正常；”disabled”: 被封禁
        # @type Status: String
        # @param Telephone: 电话号码
        # @type Telephone: String
        # @param EmailVerified: 邮箱是否通过验证：”yes”: 通过；”no”: 未通过
        # @type EmailVerified: String
        # @param TelephoneVerified: 手机是否通过验证：”yes”: 通过；”no”: 未通过
        # @type TelephoneVerified: String
        # @param UserGrade: 账号等级, 按照用户账号下域名等级排序, 选取一个最高等级为账号等级, 具体对应情况参见域名等级。
        # @type UserGrade: String
        # @param RealName: 用户名称, 企业用户对应为公司名称
        # @type RealName: String
        # @param WechatBinded: 是否绑定微信：”yes”: 通过；”no”: 未通过
        # @type WechatBinded: String
        # @param Uin: 用户UIN
        # @type Uin: Integer
        # @param FreeNs: 所属 DNS 服务器
        # @type FreeNs: Array

        attr_accessor :Nick, :Id, :Email, :Status, :Telephone, :EmailVerified, :TelephoneVerified, :UserGrade, :RealName, :WechatBinded, :Uin, :FreeNs
        
        def initialize(nick=nil, id=nil, email=nil, status=nil, telephone=nil, emailverified=nil, telephoneverified=nil, usergrade=nil, realname=nil, wechatbinded=nil, uin=nil, freens=nil)
          @Nick = nick
          @Id = id
          @Email = email
          @Status = status
          @Telephone = telephone
          @EmailVerified = emailverified
          @TelephoneVerified = telephoneverified
          @UserGrade = usergrade
          @RealName = realname
          @WechatBinded = wechatbinded
          @Uin = uin
          @FreeNs = freens
        end

        def deserialize(params)
          @Nick = params['Nick']
          @Id = params['Id']
          @Email = params['Email']
          @Status = params['Status']
          @Telephone = params['Telephone']
          @EmailVerified = params['EmailVerified']
          @TelephoneVerified = params['TelephoneVerified']
          @UserGrade = params['UserGrade']
          @RealName = params['RealName']
          @WechatBinded = params['WechatBinded']
          @Uin = params['Uin']
          @FreeNs = params['FreeNs']
        end
      end

    end
  end
end

