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
  module Tem
    module V20210701
      # 分批发布单批次详情
      class DeployServiceBatchDetail < TencentCloud::Common::AbstractModel
        # @param OldPodList: 旧实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldPodList: :class:`Tencentcloud::Tem.v20210701.models.DeployServicePodDetail`
        # @param NewPodList: 新实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewPodList: :class:`Tencentcloud::Tem.v20210701.models.DeployServicePodDetail`
        # @param BatchStatus: 当前批次状态："WaitForTimeExceed", "WaitForResume", "Deploying", "Finish", "NotStart"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchStatus: String
        # @param PodNum: 该批次预计旧实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodNum: Integer
        # @param BatchIndex: 批次id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BatchIndex: Integer

        attr_accessor :OldPodList, :NewPodList, :BatchStatus, :PodNum, :BatchIndex
        
        def initialize(oldpodlist=nil, newpodlist=nil, batchstatus=nil, podnum=nil, batchindex=nil)
          @OldPodList = oldpodlist
          @NewPodList = newpodlist
          @BatchStatus = batchstatus
          @PodNum = podnum
          @BatchIndex = batchindex
        end

        def deserialize(params)
          unless params['OldPodList'].nil?
            @OldPodList = DeployServicePodDetail.new
            @OldPodList.deserialize(params['OldPodList'])
          end
          unless params['NewPodList'].nil?
            @NewPodList = DeployServicePodDetail.new
            @NewPodList.deserialize(params['NewPodList'])
          end
          @BatchStatus = params['BatchStatus']
          @PodNum = params['PodNum']
          @BatchIndex = params['BatchIndex']
        end
      end

      # 分批发布单批次详情
      class DeployServicePodDetail < TencentCloud::Common::AbstractModel
        # @param PodId: pod Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodId: String
        # @param PodStatus: pod状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodStatus: Array
        # @param PodVersion: pod版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PodVersion: String
        # @param CreateTime: pod创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Zone: pod所在可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String

        attr_accessor :PodId, :PodStatus, :PodVersion, :CreateTime, :Zone
        
        def initialize(podid=nil, podstatus=nil, podversion=nil, createtime=nil, zone=nil)
          @PodId = podid
          @PodStatus = podstatus
          @PodVersion = podversion
          @CreateTime = createtime
          @Zone = zone
        end

        def deserialize(params)
          @PodId = params['PodId']
          @PodStatus = params['PodStatus']
          @PodVersion = params['PodVersion']
          @CreateTime = params['CreateTime']
          @Zone = params['Zone']
        end
      end

      # 分批发布策略配置
      class DeployStrategyConf < TencentCloud::Common::AbstractModel
        # @param TotalBatchCount: 总分批数
        # @type TotalBatchCount: Integer
        # @param BetaBatchNum: beta分批实例数
        # @type BetaBatchNum: Integer
        # @param DeployStrategyType: 分批策略：0-全自动，1-全手动，2-beta分批，beta批一定是手动的
        # @type DeployStrategyType: Integer
        # @param BatchInterval: 每批暂停间隔
        # @type BatchInterval: Integer

        attr_accessor :TotalBatchCount, :BetaBatchNum, :DeployStrategyType, :BatchInterval
        
        def initialize(totalbatchcount=nil, betabatchnum=nil, deploystrategytype=nil, batchinterval=nil)
          @TotalBatchCount = totalbatchcount
          @BetaBatchNum = betabatchnum
          @DeployStrategyType = deploystrategytype
          @BatchInterval = batchinterval
        end

        def deserialize(params)
          @TotalBatchCount = params['TotalBatchCount']
          @BetaBatchNum = params['BetaBatchNum']
          @DeployStrategyType = params['DeployStrategyType']
          @BatchInterval = params['BatchInterval']
        end
      end

      # DescribeDeployApplicationDetail请求参数结构体
      class DescribeDeployApplicationDetailRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :EnvironmentId
        
        def initialize(applicationid=nil, environmentid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # DescribeDeployApplicationDetail返回参数结构体
      class DescribeDeployApplicationDetailResponse < TencentCloud::Common::AbstractModel
        # @param Result: 分批发布结果详情
        # @type Result: :class:`Tencentcloud::Tem.v20210701.models.TemDeployApplicationDetailInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = TemDeployApplicationDetailInfo.new
            @Result.deserialize(params['Result'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 版本pod列表
      class DescribeRunPodPage < TencentCloud::Common::AbstractModel
        # @param Offset: 分页下标
        # @type Offset: Integer
        # @param Limit: 单页条数
        # @type Limit: Integer
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 请求id
        # @type RequestId: String
        # @param PodList: 条目
        # @type PodList: Array

        attr_accessor :Offset, :Limit, :TotalCount, :RequestId, :PodList
        
        def initialize(offset=nil, limit=nil, totalcount=nil, requestid=nil, podlist=nil)
          @Offset = offset
          @Limit = limit
          @TotalCount = totalcount
          @RequestId = requestid
          @PodList = podlist
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
          unless params['PodList'].nil?
            @PodList = []
            params['PodList'].each do |i|
              runversionpod_tmp = RunVersionPod.new
              runversionpod_tmp.deserialize(i)
              @PodList << runversionpod_tmp
            end
          end
        end
      end

      # ResumeDeployApplication请求参数结构体
      class ResumeDeployApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 需要开始下一批次的服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 环境id
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :EnvironmentId
        
        def initialize(applicationid=nil, environmentid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # ResumeDeployApplication返回参数结构体
      class ResumeDeployApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # RevertDeployApplication请求参数结构体
      class RevertDeployApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationId: 需要回滚的服务id
        # @type ApplicationId: String
        # @param EnvironmentId: 需要回滚的服务所在环境id
        # @type EnvironmentId: String

        attr_accessor :ApplicationId, :EnvironmentId
        
        def initialize(applicationid=nil, environmentid=nil)
          @ApplicationId = applicationid
          @EnvironmentId = environmentid
        end

        def deserialize(params)
          @ApplicationId = params['ApplicationId']
          @EnvironmentId = params['EnvironmentId']
        end
      end

      # RevertDeployApplication返回参数结构体
      class RevertDeployApplicationResponse < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
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

      # 版本pod
      class RunVersionPod < TencentCloud::Common::AbstractModel
        # @param Webshell: shell地址
        # @type Webshell: String
        # @param PodId: pod的id
        # @type PodId: String
        # @param Status: 状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PodIp: 实例的ip
        # @type PodIp: String
        # @param Zone: 可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param DeployVersion: 部署版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployVersion: String
        # @param RestartCount: 重启次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestartCount: Integer

        attr_accessor :Webshell, :PodId, :Status, :CreateTime, :PodIp, :Zone, :DeployVersion, :RestartCount
        
        def initialize(webshell=nil, podid=nil, status=nil, createtime=nil, podip=nil, zone=nil, deployversion=nil, restartcount=nil)
          @Webshell = webshell
          @PodId = podid
          @Status = status
          @CreateTime = createtime
          @PodIp = podip
          @Zone = zone
          @DeployVersion = deployversion
          @RestartCount = restartcount
        end

        def deserialize(params)
          @Webshell = params['Webshell']
          @PodId = params['PodId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @PodIp = params['PodIp']
          @Zone = params['Zone']
          @DeployVersion = params['DeployVersion']
          @RestartCount = params['RestartCount']
        end
      end

      # 分批发布详情
      class TemDeployApplicationDetailInfo < TencentCloud::Common::AbstractModel
        # @param DeployStrategyConf: 分批发布策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployStrategyConf: :class:`Tencentcloud::Tem.v20210701.models.DeployStrategyConf`
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Status: 当前状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param BetaBatchDetail: beta分批详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BetaBatchDetail: :class:`Tencentcloud::Tem.v20210701.models.DeployServiceBatchDetail`
        # @param OtherBatchDetail: 其他分批详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OtherBatchDetail: Array
        # @param OldVersionPodList: 老版本pod列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldVersionPodList: :class:`Tencentcloud::Tem.v20210701.models.DescribeRunPodPage`
        # @param CurrentBatchIndex: 当前批次id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentBatchIndex: Integer
        # @param ErrorMessage: 错误原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param CurrentBatchStatus: 当前批次状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentBatchStatus: String

        attr_accessor :DeployStrategyConf, :StartTime, :EndTime, :Status, :BetaBatchDetail, :OtherBatchDetail, :OldVersionPodList, :CurrentBatchIndex, :ErrorMessage, :CurrentBatchStatus
        
        def initialize(deploystrategyconf=nil, starttime=nil, endtime=nil, status=nil, betabatchdetail=nil, otherbatchdetail=nil, oldversionpodlist=nil, currentbatchindex=nil, errormessage=nil, currentbatchstatus=nil)
          @DeployStrategyConf = deploystrategyconf
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @BetaBatchDetail = betabatchdetail
          @OtherBatchDetail = otherbatchdetail
          @OldVersionPodList = oldversionpodlist
          @CurrentBatchIndex = currentbatchindex
          @ErrorMessage = errormessage
          @CurrentBatchStatus = currentbatchstatus
        end

        def deserialize(params)
          unless params['DeployStrategyConf'].nil?
            @DeployStrategyConf = DeployStrategyConf.new
            @DeployStrategyConf.deserialize(params['DeployStrategyConf'])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          unless params['BetaBatchDetail'].nil?
            @BetaBatchDetail = DeployServiceBatchDetail.new
            @BetaBatchDetail.deserialize(params['BetaBatchDetail'])
          end
          unless params['OtherBatchDetail'].nil?
            @OtherBatchDetail = []
            params['OtherBatchDetail'].each do |i|
              deployservicebatchdetail_tmp = DeployServiceBatchDetail.new
              deployservicebatchdetail_tmp.deserialize(i)
              @OtherBatchDetail << deployservicebatchdetail_tmp
            end
          end
          unless params['OldVersionPodList'].nil?
            @OldVersionPodList = DescribeRunPodPage.new
            @OldVersionPodList.deserialize(params['OldVersionPodList'])
          end
          @CurrentBatchIndex = params['CurrentBatchIndex']
          @ErrorMessage = params['ErrorMessage']
          @CurrentBatchStatus = params['CurrentBatchStatus']
        end
      end

    end
  end
end

