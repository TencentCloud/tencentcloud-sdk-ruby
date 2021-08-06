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
  module Iotvideo
    module V20201215
      # AI模型申请信息
      class AIModelApplication < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Status: 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        # @type Status: Integer

        attr_accessor :ProductId, :ProductName, :Status
        
        def initialize(productid=nil, productname=nil, status=nil)
          @ProductId = productid
          @ProductName = productname
          @Status = status
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @Status = params['Status']
        end
      end

      # AI模型信息
      class AIModelInfo < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Status: 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        # @type Status: Integer
        # @param Total: 可调用数量
        # @type Total: Integer
        # @param Used: 已调用数量
        # @type Used: Integer
        # @param ApplyTime: 申请时间
        # @type ApplyTime: Integer
        # @param ApprovalTime: 审批通过时间
        # @type ApprovalTime: Integer

        attr_accessor :ProductId, :ProductName, :Status, :Total, :Used, :ApplyTime, :ApprovalTime
        
        def initialize(productid=nil, productname=nil, status=nil, total=nil, used=nil, applytime=nil, approvaltime=nil)
          @ProductId = productid
          @ProductName = productname
          @Status = status
          @Total = total
          @Used = used
          @ApplyTime = applytime
          @ApprovalTime = approvaltime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @Status = params['Status']
          @Total = params['Total']
          @Used = params['Used']
          @ApplyTime = params['ApplyTime']
          @ApprovalTime = params['ApprovalTime']
        end
      end

      # AI模型资源使用信息
      class AIModelUsageInfo < TencentCloud::Common::AbstractModel
        # @param CreateTime: 开通时间
        # @type CreateTime: Integer
        # @param Total: 资源总量
        # @type Total: Integer
        # @param Used: 已使用资源数量
        # @type Used: Integer

        attr_accessor :CreateTime, :Total, :Used
        
        def initialize(createtime=nil, total=nil, used=nil)
          @CreateTime = createtime
          @Total = total
          @Used = used
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @Total = params['Total']
          @Used = params['Used']
        end
      end

      # 查询设备历史
      class ActionHistory < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ActionId: 动作Id
        # @type ActionId: String
        # @param ActionName: 动作名称
        # @type ActionName: String
        # @param ReqTime: 请求时间
        # @type ReqTime: Integer
        # @param RspTime: 响应时间
        # @type RspTime: Integer
        # @param InputParams: 输入参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputParams: String
        # @param OutputParams: 输出参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputParams: String
        # @param Calling: 调用方式
        # @type Calling: String
        # @param ClientToken: 调用Id
        # @type ClientToken: String
        # @param Status: 调用状态
        # @type Status: String

        attr_accessor :DeviceName, :ActionId, :ActionName, :ReqTime, :RspTime, :InputParams, :OutputParams, :Calling, :ClientToken, :Status
        
        def initialize(devicename=nil, actionid=nil, actionname=nil, reqtime=nil, rsptime=nil, inputparams=nil, outputparams=nil, calling=nil, clienttoken=nil, status=nil)
          @DeviceName = devicename
          @ActionId = actionid
          @ActionName = actionname
          @ReqTime = reqtime
          @RspTime = rsptime
          @InputParams = inputparams
          @OutputParams = outputparams
          @Calling = calling
          @ClientToken = clienttoken
          @Status = status
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @ActionId = params['ActionId']
          @ActionName = params['ActionName']
          @ReqTime = params['ReqTime']
          @RspTime = params['RspTime']
          @InputParams = params['InputParams']
          @OutputParams = params['OutputParams']
          @Calling = params['Calling']
          @ClientToken = params['ClientToken']
          @Status = params['Status']
        end
      end

      # ApplyAIModel请求参数结构体
      class ApplyAIModelRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: AI模型ID
        # @type ModelId: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ModelId, :ProductId
        
        def initialize(modelid=nil, productid=nil)
          @ModelId = modelid
          @ProductId = productid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ProductId = params['ProductId']
        end
      end

      # ApplyAIModel返回参数结构体
      class ApplyAIModelResponse < TencentCloud::Common::AbstractModel
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

      # 账户流水
      class BalanceTransaction < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型：1-设备接入 2-云存。
        # @type AccountType: Integer
        # @param Operation: 账户变更类型：Rechareg-充值；CreateOrder-新购。
        # @type Operation: String
        # @param DealId: 流水ID。
        # @type DealId: String
        # @param Amount: 变更金额，单位：分（人民币）。
        # @type Amount: Integer
        # @param Balance: 变更后账户余额，单位：分（人民币）。
        # @type Balance: Integer
        # @param OperationTime: 变更时间。
        # @type OperationTime: Integer

        attr_accessor :AccountType, :Operation, :DealId, :Amount, :Balance, :OperationTime
        
        def initialize(accounttype=nil, operation=nil, dealid=nil, amount=nil, balance=nil, operationtime=nil)
          @AccountType = accounttype
          @Operation = operation
          @DealId = dealid
          @Amount = amount
          @Balance = balance
          @OperationTime = operationtime
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Operation = params['Operation']
          @DealId = params['DealId']
          @Amount = params['Amount']
          @Balance = params['Balance']
          @OperationTime = params['OperationTime']
        end
      end

      # BatchUpdateFirmware请求参数结构体
      class BatchUpdateFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件新版本号
        # @type FirmwareVersion: String
        # @param FirmwareOriVersion: 固件原版本号，根据文件列表升级固件不需要填写此参数
        # @type FirmwareOriVersion: String
        # @param UpgradeMethod: 升级方式，0 静默升级  1 用户确认升级。 不填默认为静默升级方式
        # @type UpgradeMethod: Integer
        # @param FileName: 设备列表文件名称，根据文件列表升级固件需要填写此参数
        # @type FileName: String
        # @param FileMd5: 设备列表的文件md5值
        # @type FileMd5: String
        # @param FileSize: 设备列表的文件大小值
        # @type FileSize: Integer
        # @param DeviceNames: 需要升级的设备名称列表
        # @type DeviceNames: Array

        attr_accessor :ProductID, :FirmwareVersion, :FirmwareOriVersion, :UpgradeMethod, :FileName, :FileMd5, :FileSize, :DeviceNames
        
        def initialize(productid=nil, firmwareversion=nil, firmwareoriversion=nil, upgrademethod=nil, filename=nil, filemd5=nil, filesize=nil, devicenames=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FirmwareOriVersion = firmwareoriversion
          @UpgradeMethod = upgrademethod
          @FileName = filename
          @FileMd5 = filemd5
          @FileSize = filesize
          @DeviceNames = devicenames
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareOriVersion = params['FirmwareOriVersion']
          @UpgradeMethod = params['UpgradeMethod']
          @FileName = params['FileName']
          @FileMd5 = params['FileMd5']
          @FileSize = params['FileSize']
          @DeviceNames = params['DeviceNames']
        end
      end

      # BatchUpdateFirmware返回参数结构体
      class BatchUpdateFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # BindCloudStorageUser请求参数结构体
      class BindCloudStorageUserRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :UserId
        
        def initialize(productid=nil, devicename=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
        end
      end

      # BindCloudStorageUser返回参数结构体
      class BindCloudStorageUserResponse < TencentCloud::Common::AbstractModel
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

      # CancelAIModelApplication请求参数结构体
      class CancelAIModelApplicationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: AI模型ID
        # @type ModelId: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ModelId, :ProductId
        
        def initialize(modelid=nil, productid=nil)
          @ModelId = modelid
          @ProductId = productid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ProductId = params['ProductId']
        end
      end

      # CancelAIModelApplication返回参数结构体
      class CancelAIModelApplicationResponse < TencentCloud::Common::AbstractModel
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

      # CancelDeviceFirmwareTask请求参数结构体
      class CancelDeviceFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :DeviceName, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, devicename=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # CancelDeviceFirmwareTask返回参数结构体
      class CancelDeviceFirmwareTaskResponse < TencentCloud::Common::AbstractModel
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

      # CheckForwardAuth请求参数结构体
      class CheckForwardAuthRequest < TencentCloud::Common::AbstractModel
        # @param Skey: 控制台Skey
        # @type Skey: String
        # @param QueueType: 队列类型 0.CMQ  1.Ckafka
        # @type QueueType: Integer

        attr_accessor :Skey, :QueueType
        
        def initialize(skey=nil, queuetype=nil)
          @Skey = skey
          @QueueType = queuetype
        end

        def deserialize(params)
          @Skey = params['Skey']
          @QueueType = params['QueueType']
        end
      end

      # CheckForwardAuth返回参数结构体
      class CheckForwardAuthResponse < TencentCloud::Common::AbstractModel
        # @param Endpoint: 腾讯云账号
        # @type Endpoint: String
        # @param Result: 结果
        # @type Result: Integer
        # @param Productid: 产品ID
        # @type Productid: String
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param QueueType: 队列类型 0.CMQ  1.Ckafka
        # @type QueueType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoint, :Result, :Productid, :ErrMsg, :QueueType, :RequestId
        
        def initialize(endpoint=nil, result=nil, productid=nil, errmsg=nil, queuetype=nil, requestid=nil)
          @Endpoint = endpoint
          @Result = result
          @Productid = productid
          @ErrMsg = errmsg
          @QueueType = queuetype
          @RequestId = requestid
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @Result = params['Result']
          @Productid = params['Productid']
          @ErrMsg = params['ErrMsg']
          @QueueType = params['QueueType']
          @RequestId = params['RequestId']
        end
      end

      # 云存事件
      class CloudStorageEvent < TencentCloud::Common::AbstractModel
        # @param StartTime: 事件起始时间（Unix 时间戳，秒级
        # @type StartTime: Integer
        # @param EndTime: 事件结束时间（Unix 时间戳，秒级
        # @type EndTime: Integer
        # @param Thumbnail: 事件缩略图
        # @type Thumbnail: String
        # @param EventId: 事件ID
        # @type EventId: String

        attr_accessor :StartTime, :EndTime, :Thumbnail, :EventId
        
        def initialize(starttime=nil, endtime=nil, thumbnail=nil, eventid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Thumbnail = thumbnail
          @EventId = eventid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Thumbnail = params['Thumbnail']
          @EventId = params['EventId']
        end
      end

      # 云存时间轴接口返回数据
      class CloudStorageTimeData < TencentCloud::Common::AbstractModel
        # @param TimeList: 云存时间轴信息列表
        # @type TimeList: Array
        # @param VideoURL: 播放地址
        # @type VideoURL: String

        attr_accessor :TimeList, :VideoURL
        
        def initialize(timelist=nil, videourl=nil)
          @TimeList = timelist
          @VideoURL = videourl
        end

        def deserialize(params)
          unless params['TimeList'].nil?
            @TimeList = []
            params['TimeList'].each do |i|
              cloudstoragetimeinfo_tmp = CloudStorageTimeInfo.new
              cloudstoragetimeinfo_tmp.deserialize(i)
              @TimeList << cloudstoragetimeinfo_tmp
            end
          end
          @VideoURL = params['VideoURL']
        end
      end

      # 云存时间轴信息
      class CloudStorageTimeInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime
        
        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 云存用户信息
      class CloudStorageUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :UserId
        
        def initialize(userid=nil)
          @UserId = userid
        end

        def deserialize(params)
          @UserId = params['UserId']
        end
      end

      # ControlDeviceData请求参数结构体
      class ControlDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Data: 属性数据, JSON格式字符串, 注意字段需要在物模型属性里定义
        # @type Data: String
        # @param Method: 请求类型 , 不填该参数或者 desired 表示下发属性给设备,  reported 表示模拟设备上报属性
        # @type Method: String
        # @param DataTimestamp: 上报数据UNIX时间戳(毫秒), 仅对Method:reported有效
        # @type DataTimestamp: Integer

        attr_accessor :ProductId, :DeviceName, :Data, :Method, :DataTimestamp
        
        def initialize(productid=nil, devicename=nil, data=nil, method=nil, datatimestamp=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Data = data
          @Method = method
          @DataTimestamp = datatimestamp
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Data = params['Data']
          @Method = params['Method']
          @DataTimestamp = params['DataTimestamp']
        end
      end

      # ControlDeviceData返回参数结构体
      class ControlDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回信息
        # @type Data: String
        # @param Result: JSON字符串， 返回下发控制的结果信息,
        # Sent = 1 表示设备已经在线并且订阅了控制下发的mqtt topic
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Result, :RequestId
        
        def initialize(data=nil, result=nil, requestid=nil)
          @Data = data
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # CreateAIDetection请求参数结构体
      class CreateAIDetectionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param ModelId: AI模型ID
        # @type ModelId: String
        # @param StartTime: 图片上传的开始时间
        # @type StartTime: Integer
        # @param EndTime: 图片上传的结束时间
        # @type EndTime: Integer

        attr_accessor :ProductId, :DeviceName, :ModelId, :StartTime, :EndTime
        
        def initialize(productid=nil, devicename=nil, modelid=nil, starttime=nil, endtime=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ModelId = modelid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ModelId = params['ModelId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # CreateAIDetection返回参数结构体
      class CreateAIDetectionResponse < TencentCloud::Common::AbstractModel
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

      # CreateBatch请求参数结构体
      class CreateBatchRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DevNum: 批次创建的设备数量
        # @type DevNum: Integer
        # @param DevPre: 批次创建的设备前缀。不超过24个字符
        # @type DevPre: String

        attr_accessor :ProductId, :DevNum, :DevPre
        
        def initialize(productid=nil, devnum=nil, devpre=nil)
          @ProductId = productid
          @DevNum = devnum
          @DevPre = devpre
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DevNum = params['DevNum']
          @DevPre = params['DevPre']
        end
      end

      # CreateBatch返回参数结构体
      class CreateBatchResponse < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BatchId, :RequestId
        
        def initialize(batchid=nil, requestid=nil)
          @BatchId = batchid
          @RequestId = requestid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCOSCredentials请求参数结构体
      class CreateCOSCredentialsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # CreateCOSCredentials返回参数结构体
      class CreateCOSCredentialsResponse < TencentCloud::Common::AbstractModel
        # @param StorageBucket: COS存储桶名称
        # @type StorageBucket: String
        # @param StorageRegion: COS存储桶区域
        # @type StorageRegion: String
        # @param StoragePath: COS存储桶路径
        # @type StoragePath: String
        # @param SecretID: COS上传用的SecretID
        # @type SecretID: String
        # @param SecretKey: COS上传用的SecretKey
        # @type SecretKey: String
        # @param Token: COS上传用的Token
        # @type Token: String
        # @param ExpiredTime: 密钥信息过期时间
        # @type ExpiredTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StorageBucket, :StorageRegion, :StoragePath, :SecretID, :SecretKey, :Token, :ExpiredTime, :RequestId
        
        def initialize(storagebucket=nil, storageregion=nil, storagepath=nil, secretid=nil, secretkey=nil, token=nil, expiredtime=nil, requestid=nil)
          @StorageBucket = storagebucket
          @StorageRegion = storageregion
          @StoragePath = storagepath
          @SecretID = secretid
          @SecretKey = secretkey
          @Token = token
          @ExpiredTime = expiredtime
          @RequestId = requestid
        end

        def deserialize(params)
          @StorageBucket = params['StorageBucket']
          @StorageRegion = params['StorageRegion']
          @StoragePath = params['StoragePath']
          @SecretID = params['SecretID']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudStorage请求参数结构体
      class CreateCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param PackageId: 云存套餐ID：
        # yc1m3d ： 全时3天存储月套餐。
        # yc1m7d ： 全时7天存储月套餐。
        # yc1m30d ：全时30天存储月套餐。
        # yc1y3d ：全时3天存储年套餐。
        # yc1y7d ：全时7天存储年套餐。
        # yc1y30d ：全时30天存储年套餐。
        # ye1m3d ：事件3天存储月套餐。
        # ye1m7d ：事件7天存储月套餐。
        # ye1m30d ：事件30天存储月套餐 。
        # ye1y3d ：事件3天存储年套餐。
        # ye1y7d ：事件7天存储年套餐。
        # ye1y30d ：事件30天存储年套餐。
        # yc1w7d : 全时7天存储周套餐。
        # ye1w7d : 事件7天存储周套餐。
        # @type PackageId: String
        # @param Override: 如果当前设备已开启云存套餐，Override=1会使用新套餐覆盖原有套餐。不传此参数则默认为0。
        # @type Override: Integer

        attr_accessor :ProductId, :DeviceName, :PackageId, :Override
        
        def initialize(productid=nil, devicename=nil, packageid=nil, override=nil)
          @ProductId = productid
          @DeviceName = devicename
          @PackageId = packageid
          @Override = override
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @PackageId = params['PackageId']
          @Override = params['Override']
        end
      end

      # CreateCloudStorage返回参数结构体
      class CreateCloudStorageResponse < TencentCloud::Common::AbstractModel
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

      # CreateDataForward请求参数结构体
      class CreateDataForwardRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param ForwardAddr: 转发地址。
        # @type ForwardAddr: String
        # @param DataChose: 1-数据信息转发 2-设备上下线状态转发 3-数据信息转发&设备上下线状态转发
        # @type DataChose: Integer

        attr_accessor :ProductId, :ForwardAddr, :DataChose
        
        def initialize(productid=nil, forwardaddr=nil, datachose=nil)
          @ProductId = productid
          @ForwardAddr = forwardaddr
          @DataChose = datachose
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ForwardAddr = params['ForwardAddr']
          @DataChose = params['DataChose']
        end
      end

      # CreateDataForward返回参数结构体
      class CreateDataForwardResponse < TencentCloud::Common::AbstractModel
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

      # CreateForwardRule请求参数结构体
      class CreateForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param MsgType: 消息类型
        # @type MsgType: Integer
        # @param Skey: 控制台Skey
        # @type Skey: String
        # @param QueueRegion: 队列区域
        # @type QueueRegion: String
        # @param QueueType: 队列类型 0.CMQ  1.Ckafka
        # @type QueueType: Integer
        # @param Consecretid: 临时密钥
        # @type Consecretid: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param QueueID: 队列或主题ID
        # @type QueueID: String
        # @param QueueName: 队列或主题名称
        # @type QueueName: String

        attr_accessor :ProductID, :MsgType, :Skey, :QueueRegion, :QueueType, :Consecretid, :InstanceId, :InstanceName, :QueueID, :QueueName
        
        def initialize(productid=nil, msgtype=nil, skey=nil, queueregion=nil, queuetype=nil, consecretid=nil, instanceid=nil, instancename=nil, queueid=nil, queuename=nil)
          @ProductID = productid
          @MsgType = msgtype
          @Skey = skey
          @QueueRegion = queueregion
          @QueueType = queuetype
          @Consecretid = consecretid
          @InstanceId = instanceid
          @InstanceName = instancename
          @QueueID = queueid
          @QueueName = queuename
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @MsgType = params['MsgType']
          @Skey = params['Skey']
          @QueueRegion = params['QueueRegion']
          @QueueType = params['QueueType']
          @Consecretid = params['Consecretid']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @QueueID = params['QueueID']
          @QueueName = params['QueueName']
        end
      end

      # CreateForwardRule返回参数结构体
      class CreateForwardRuleResponse < TencentCloud::Common::AbstractModel
        # @param Endpoint: 腾讯云账号
        # @type Endpoint: String
        # @param QueueName: 队列名
        # @type QueueName: String
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param MsgType: 消息类型
        # @type MsgType: Integer
        # @param Result: 结果
        # @type Result: Integer
        # @param RoleName: 角色名称
        # @type RoleName: String
        # @param RoleID: 角色ID
        # @type RoleID: Integer
        # @param QueueRegion: 队列区
        # @type QueueRegion: String
        # @param QueueType: 消息队列的类型。 0：CMQ，1：CKafaka
        # @type QueueType: Integer
        # @param InstanceId: 实例id， 目前只有Ckafaka会用到
        # @type InstanceId: String
        # @param InstanceName: 实例名称，目前只有Ckafaka会用到
        # @type InstanceName: String
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoint, :QueueName, :ProductID, :MsgType, :Result, :RoleName, :RoleID, :QueueRegion, :QueueType, :InstanceId, :InstanceName, :ErrMsg, :RequestId
        
        def initialize(endpoint=nil, queuename=nil, productid=nil, msgtype=nil, result=nil, rolename=nil, roleid=nil, queueregion=nil, queuetype=nil, instanceid=nil, instancename=nil, errmsg=nil, requestid=nil)
          @Endpoint = endpoint
          @QueueName = queuename
          @ProductID = productid
          @MsgType = msgtype
          @Result = result
          @RoleName = rolename
          @RoleID = roleid
          @QueueRegion = queueregion
          @QueueType = queuetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @QueueName = params['QueueName']
          @ProductID = params['ProductID']
          @MsgType = params['MsgType']
          @Result = params['Result']
          @RoleName = params['RoleName']
          @RoleID = params['RoleID']
          @QueueRegion = params['QueueRegion']
          @QueueType = params['QueueType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateProduct请求参数结构体
      class CreateProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param DeviceType: 产品设备类型 1.普通设备 2.NVR设备
        # @type DeviceType: Integer
        # @param ProductVaildYears: 产品有效期
        # @type ProductVaildYears: Integer
        # @param Features: 设备功能码 ypsxth音频双向通话 spdxth视频单向通话
        # @type Features: Array
        # @param ChipOs: 设备操作系统 Linux
        # @type ChipOs: String
        # @param ChipManufactureId: 芯片厂商id
        # @type ChipManufactureId: String
        # @param ChipId: 芯片id
        # @type ChipId: String
        # @param ProductDescription: 产品描述信息
        # @type ProductDescription: String
        # @param EncryptionType: 认证方式 只支持取值为2 psk认证
        # @type EncryptionType: Integer

        attr_accessor :ProductName, :DeviceType, :ProductVaildYears, :Features, :ChipOs, :ChipManufactureId, :ChipId, :ProductDescription, :EncryptionType
        
        def initialize(productname=nil, devicetype=nil, productvaildyears=nil, features=nil, chipos=nil, chipmanufactureid=nil, chipid=nil, productdescription=nil, encryptiontype=nil)
          @ProductName = productname
          @DeviceType = devicetype
          @ProductVaildYears = productvaildyears
          @Features = features
          @ChipOs = chipos
          @ChipManufactureId = chipmanufactureid
          @ChipId = chipid
          @ProductDescription = productdescription
          @EncryptionType = encryptiontype
        end

        def deserialize(params)
          @ProductName = params['ProductName']
          @DeviceType = params['DeviceType']
          @ProductVaildYears = params['ProductVaildYears']
          @Features = params['Features']
          @ChipOs = params['ChipOs']
          @ChipManufactureId = params['ChipManufactureId']
          @ChipId = params['ChipId']
          @ProductDescription = params['ProductDescription']
          @EncryptionType = params['EncryptionType']
        end
      end

      # CreateProduct返回参数结构体
      class CreateProductResponse < TencentCloud::Common::AbstractModel
        # @param Data: 产品详情
        # @type Data: :class:`Tencentcloud::Iotvideo.v20201215.models.VideoProduct`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VideoProduct.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateTaskFileUrl请求参数结构体
      class CreateTaskFileUrlRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # CreateTaskFileUrl返回参数结构体
      class CreateTaskFileUrlResponse < TencentCloud::Common::AbstractModel
        # @param Url: 任务文件上传链接
        # @type Url: String
        # @param FileName: 任务文件名
        # @type FileName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :FileName, :RequestId
        
        def initialize(url=nil, filename=nil, requestid=nil)
          @Url = url
          @FileName = filename
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @FileName = params['FileName']
          @RequestId = params['RequestId']
        end
      end

      # 数据转发描述
      class DataForward < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param ForwardAddr: 转发地址。
        # @type ForwardAddr: String
        # @param Status: 转发状态。
        # @type Status: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: Integer
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: Integer
        # @param DataChose: 1-数据信息转发 2-设备上下线状态转发 3-数据信息转发&设备上下线状态转发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataChose: Integer

        attr_accessor :ProductId, :ForwardAddr, :Status, :CreateTime, :UpdateTime, :DataChose
        
        def initialize(productid=nil, forwardaddr=nil, status=nil, createtime=nil, updatetime=nil, datachose=nil)
          @ProductId = productid
          @ForwardAddr = forwardaddr
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DataChose = datachose
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ForwardAddr = params['ForwardAddr']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DataChose = params['DataChose']
        end
      end

      # DeleteDevice请求参数结构体
      class DeleteDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param DeviceName: 设备名称。
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DeleteDevice返回参数结构体
      class DeleteDeviceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFirmware请求参数结构体
      class DeleteFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String

        attr_accessor :ProductID, :FirmwareVersion
        
        def initialize(productid=nil, firmwareversion=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
        end
      end

      # DeleteFirmware返回参数结构体
      class DeleteFirmwareResponse < TencentCloud::Common::AbstractModel
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

      # DeleteForwardRule请求参数结构体
      class DeleteForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Skey: 控制台Skey
        # @type Skey: String
        # @param QueueType: 队列类型
        # @type QueueType: Integer
        # @param QueueName: 队列名称
        # @type QueueName: String

        attr_accessor :ProductID, :Skey, :QueueType, :QueueName
        
        def initialize(productid=nil, skey=nil, queuetype=nil, queuename=nil)
          @ProductID = productid
          @Skey = skey
          @QueueType = queuetype
          @QueueName = queuename
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @Skey = params['Skey']
          @QueueType = params['QueueType']
          @QueueName = params['QueueName']
        end
      end

      # DeleteForwardRule返回参数结构体
      class DeleteForwardRuleResponse < TencentCloud::Common::AbstractModel
        # @param Endpoint: 腾讯云账号
        # @type Endpoint: String
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Result: 删除结果 0成功 其他不成功
        # @type Result: Integer
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoint, :QueueName, :ProductID, :Result, :ErrMsg, :RequestId
        
        def initialize(endpoint=nil, queuename=nil, productid=nil, result=nil, errmsg=nil, requestid=nil)
          @Endpoint = endpoint
          @QueueName = queuename
          @ProductID = productid
          @Result = result
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @QueueName = params['QueueName']
          @ProductID = params['ProductID']
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProduct请求参数结构体
      class DeleteProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DeleteProduct返回参数结构体
      class DeleteProductResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAIModelApplications请求参数结构体
      class DescribeAIModelApplicationsRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param Limit: 分页的大小，最大100
        # @type Limit: Integer
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ModelId, :Limit, :Offset, :ProductId
        
        def initialize(modelid=nil, limit=nil, offset=nil, productid=nil)
          @ModelId = modelid
          @Limit = limit
          @Offset = offset
          @ProductId = productid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ProductId = params['ProductId']
        end
      end

      # DescribeAIModelApplications返回参数结构体
      class DescribeAIModelApplicationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 申请记录数量
        # @type TotalCount: Integer
        # @param Applications: 申请记录数组
        # @type Applications: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Applications, :RequestId
        
        def initialize(totalcount=nil, applications=nil, requestid=nil)
          @TotalCount = totalcount
          @Applications = applications
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Applications'].nil?
            @Applications = []
            params['Applications'].each do |i|
              aimodelapplication_tmp = AIModelApplication.new
              aimodelapplication_tmp.deserialize(i)
              @Applications << aimodelapplication_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIModelChannel请求参数结构体
      class DescribeAIModelChannelRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ModelId, :ProductId
        
        def initialize(modelid=nil, productid=nil)
          @ModelId = modelid
          @ProductId = productid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ProductId = params['ProductId']
        end
      end

      # DescribeAIModelChannel返回参数结构体
      class DescribeAIModelChannelResponse < TencentCloud::Common::AbstractModel
        # @param Type: 推送类型。ckafka：消息队列；forward：http/https推送
        # @type Type: String
        # @param ForwardAddress: 第三方推送地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardAddress: String
        # @param ForwardKey: 第三方推送密钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardKey: String
        # @param CKafkaRegion: ckafka地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CKafkaRegion: String
        # @param CKafkaInstance: ckafka实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CKafkaInstance: String
        # @param CKafkaTopic: ckafka订阅主题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CKafkaTopic: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :ForwardAddress, :ForwardKey, :CKafkaRegion, :CKafkaInstance, :CKafkaTopic, :RequestId
        
        def initialize(type=nil, forwardaddress=nil, forwardkey=nil, ckafkaregion=nil, ckafkainstance=nil, ckafkatopic=nil, requestid=nil)
          @Type = type
          @ForwardAddress = forwardaddress
          @ForwardKey = forwardkey
          @CKafkaRegion = ckafkaregion
          @CKafkaInstance = ckafkainstance
          @CKafkaTopic = ckafkatopic
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @ForwardAddress = params['ForwardAddress']
          @ForwardKey = params['ForwardKey']
          @CKafkaRegion = params['CKafkaRegion']
          @CKafkaInstance = params['CKafkaInstance']
          @CKafkaTopic = params['CKafkaTopic']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIModelUsage请求参数结构体
      class DescribeAIModelUsageRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Offset: 偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，最大100
        # @type Limit: Integer

        attr_accessor :ModelId, :ProductId, :Offset, :Limit
        
        def initialize(modelid=nil, productid=nil, offset=nil, limit=nil)
          @ModelId = modelid
          @ProductId = productid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIModelUsage返回参数结构体
      class DescribeAIModelUsageResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: AI模型资源包总量
        # @type TotalCount: Integer
        # @param UsageInfo: AI模型资源包信息数组
        # @type UsageInfo: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :UsageInfo, :RequestId
        
        def initialize(totalcount=nil, usageinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @UsageInfo = usageinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['UsageInfo'].nil?
            @UsageInfo = []
            params['UsageInfo'].each do |i|
              aimodelusageinfo_tmp = AIModelUsageInfo.new
              aimodelusageinfo_tmp.deserialize(i)
              @UsageInfo << aimodelusageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIModels请求参数结构体
      class DescribeAIModelsRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param Status: 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        # @type Status: Integer
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，最大100
        # @type Limit: Integer

        attr_accessor :ModelId, :Status, :Offset, :Limit
        
        def initialize(modelid=nil, status=nil, offset=nil, limit=nil)
          @ModelId = modelid
          @Status = status
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAIModels返回参数结构体
      class DescribeAIModelsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: AI模型数量
        # @type TotalCount: Integer
        # @param Models: AI模型信息数组
        # @type Models: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Models, :RequestId
        
        def initialize(totalcount=nil, models=nil, requestid=nil)
          @TotalCount = totalcount
          @Models = models
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Models'].nil?
            @Models = []
            params['Models'].each do |i|
              aimodelinfo_tmp = AIModelInfo.new
              aimodelinfo_tmp.deserialize(i)
              @Models << aimodelinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBalance请求参数结构体
      class DescribeBalanceRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型：1-设备接入；2-云存。
        # @type AccountType: Integer

        attr_accessor :AccountType
        
        def initialize(accounttype=nil)
          @AccountType = accounttype
        end

        def deserialize(params)
          @AccountType = params['AccountType']
        end
      end

      # DescribeBalance返回参数结构体
      class DescribeBalanceResponse < TencentCloud::Common::AbstractModel
        # @param Balance: 账户余额，单位：分（人民币）。
        # @type Balance: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Balance, :RequestId
        
        def initialize(balance=nil, requestid=nil)
          @Balance = balance
          @RequestId = requestid
        end

        def deserialize(params)
          @Balance = params['Balance']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBalanceTransactions请求参数结构体
      class DescribeBalanceTransactionsRequest < TencentCloud::Common::AbstractModel
        # @param AccountType: 账户类型：1-设备接入；2-云存。
        # @type AccountType: Integer
        # @param Offset: 分页游标开始，默认为0开始拉取第一条。
        # @type Offset: Integer
        # @param Limit: 分页每页数量。
        # @type Limit: Integer
        # @param Operation: 流水类型：All-全部类型；Recharge-充值；CreateOrder-新购。默认为All
        # @type Operation: String

        attr_accessor :AccountType, :Offset, :Limit, :Operation
        
        def initialize(accounttype=nil, offset=nil, limit=nil, operation=nil)
          @AccountType = accounttype
          @Offset = offset
          @Limit = limit
          @Operation = operation
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Operation = params['Operation']
        end
      end

      # DescribeBalanceTransactions返回参数结构体
      class DescribeBalanceTransactionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 账户流水总数。
        # @type TotalCount: Integer
        # @param Transactions: 账户流水详情数组。
        # @type Transactions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Transactions, :RequestId
        
        def initialize(totalcount=nil, transactions=nil, requestid=nil)
          @TotalCount = totalcount
          @Transactions = transactions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Transactions'].nil?
            @Transactions = []
            params['Transactions'].each do |i|
              balancetransaction_tmp = BalanceTransaction.new
              balancetransaction_tmp.deserialize(i)
              @Transactions << balancetransaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatch请求参数结构体
      class DescribeBatchRequest < TencentCloud::Common::AbstractModel
        # @param BatchId: 批次ID
        # @type BatchId: Integer

        attr_accessor :BatchId
        
        def initialize(batchid=nil)
          @BatchId = batchid
        end

        def deserialize(params)
          @BatchId = params['BatchId']
        end
      end

      # DescribeBatch返回参数结构体
      class DescribeBatchResponse < TencentCloud::Common::AbstractModel
        # @param Data: 批次详情
        # @type Data: :class:`Tencentcloud::Iotvideo.v20201215.models.VideoBatch`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VideoBatch.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchs请求参数结构体
      class DescribeBatchsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Limit: 分页的大小，最大100
        # @type Limit: Integer
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer

        attr_accessor :ProductId, :Limit, :Offset
        
        def initialize(productid=nil, limit=nil, offset=nil)
          @ProductId = productid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeBatchs返回参数结构体
      class DescribeBatchsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 批次数量
        # @type TotalCount: Integer
        # @param Data: 批次列表详情
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              videobatch_tmp = VideoBatch.new
              videobatch_tmp.deserialize(i)
              @Data << videobatch_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCategory请求参数结构体
      class DescribeCategoryRequest < TencentCloud::Common::AbstractModel
        # @param Id: Category ID。
        # @type Id: Integer

        attr_accessor :Id
        
        def initialize(id=nil)
          @Id = id
        end

        def deserialize(params)
          @Id = params['Id']
        end
      end

      # DescribeCategory返回参数结构体
      class DescribeCategoryResponse < TencentCloud::Common::AbstractModel
        # @param Data: Category详情
        # @type Data: :class:`Tencentcloud::Iotvideo.v20201215.models.ProductTemplate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ProductTemplate.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageDate请求参数结构体
      class DescribeCloudStorageDateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :UserId
        
        def initialize(productid=nil, devicename=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
        end
      end

      # DescribeCloudStorageDate返回参数结构体
      class DescribeCloudStorageDateResponse < TencentCloud::Common::AbstractModel
        # @param Data: 云存日期数组，["2021-01-05","2021-01-06"]
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageEvents请求参数结构体
      class DescribeCloudStorageEventsRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 请求上下文, 用作查询游标
        # @type Context: String
        # @param Size: 单次获取的历史数据项目的最大数量, 缺省10
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :StartTime, :EndTime, :Context, :Size, :EventId, :UserId
        
        def initialize(productid=nil, devicename=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
          @UserId = params['UserId']
        end
      end

      # DescribeCloudStorageEvents返回参数结构体
      class DescribeCloudStorageEventsResponse < TencentCloud::Common::AbstractModel
        # @param Events: 云存事件列表
        # @type Events: Array
        # @param Context: 请求上下文, 用作查询游标
        # @type Context: String
        # @param Listover: 拉取结果是否已经结束
        # @type Listover: Boolean
        # @param Total: 拉取结果数量
        # @type Total: Integer
        # @param VideoURL: 视频播放URL
        # @type VideoURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :Context, :Listover, :Total, :VideoURL, :RequestId
        
        def initialize(events=nil, context=nil, listover=nil, total=nil, videourl=nil, requestid=nil)
          @Events = events
          @Context = context
          @Listover = listover
          @Total = total
          @VideoURL = videourl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              cloudstorageevent_tmp = CloudStorageEvent.new
              cloudstorageevent_tmp.deserialize(i)
              @Events << cloudstorageevent_tmp
            end
          end
          @Context = params['Context']
          @Listover = params['Listover']
          @Total = params['Total']
          @VideoURL = params['VideoURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorage请求参数结构体
      class DescribeCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 云存用户ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :UserId
        
        def initialize(productid=nil, devicename=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
        end
      end

      # DescribeCloudStorage返回参数结构体
      class DescribeCloudStorageResponse < TencentCloud::Common::AbstractModel
        # @param Status: 云存开启状态，1为开启，0为未开启或已过期
        # @type Status: Integer
        # @param Type: 云存类型，1为全时云存，2为事件云存
        # @type Type: Integer
        # @param ExpireTime: 云存套餐过期时间
        # @type ExpireTime: Integer
        # @param ShiftDuration: 云存回看时长
        # @type ShiftDuration: Integer
        # @param UserId: 云存用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Type, :ExpireTime, :ShiftDuration, :UserId, :RequestId
        
        def initialize(status=nil, type=nil, expiretime=nil, shiftduration=nil, userid=nil, requestid=nil)
          @Status = status
          @Type = type
          @ExpireTime = expiretime
          @ShiftDuration = shiftduration
          @UserId = userid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @ShiftDuration = params['ShiftDuration']
          @UserId = params['UserId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageThumbnail请求参数结构体
      class DescribeCloudStorageThumbnailRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Thumbnail: 缩略图文件名
        # @type Thumbnail: String

        attr_accessor :ProductId, :DeviceName, :Thumbnail
        
        def initialize(productid=nil, devicename=nil, thumbnail=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Thumbnail = thumbnail
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Thumbnail = params['Thumbnail']
        end
      end

      # DescribeCloudStorageThumbnail返回参数结构体
      class DescribeCloudStorageThumbnailResponse < TencentCloud::Common::AbstractModel
        # @param ThumbnailURL: 缩略图访问地址
        # @type ThumbnailURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ThumbnailURL, :RequestId
        
        def initialize(thumbnailurl=nil, requestid=nil)
          @ThumbnailURL = thumbnailurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ThumbnailURL = params['ThumbnailURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageTime请求参数结构体
      class DescribeCloudStorageTimeRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Date: 云存日期，例如"2020-01-05"
        # @type Date: String
        # @param StartTime: 开始时间，unix时间
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间
        # @type EndTime: Integer
        # @param UserId: 用户ID
        # @type UserId: String

        attr_accessor :ProductId, :DeviceName, :Date, :StartTime, :EndTime, :UserId
        
        def initialize(productid=nil, devicename=nil, date=nil, starttime=nil, endtime=nil, userid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Date = date
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Date = params['Date']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
        end
      end

      # DescribeCloudStorageTime返回参数结构体
      class DescribeCloudStorageTimeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回数据
        # @type Data: :class:`Tencentcloud::Iotvideo.v20201215.models.CloudStorageTimeData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CloudStorageTimeData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudStorageUsers请求参数结构体
      class DescribeCloudStorageUsersRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Limit: 分页拉取数量
        # @type Limit: Integer
        # @param Offset: 分页拉取偏移
        # @type Offset: Integer

        attr_accessor :ProductId, :DeviceName, :Limit, :Offset
        
        def initialize(productid=nil, devicename=nil, limit=nil, offset=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCloudStorageUsers返回参数结构体
      class DescribeCloudStorageUsersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 用户总数
        # @type TotalCount: Integer
        # @param Users: 用户信息
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Users, :RequestId
        
        def initialize(totalcount=nil, users=nil, requestid=nil)
          @TotalCount = totalcount
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              cloudstorageuserinfo_tmp = CloudStorageUserInfo.new
              cloudstorageuserinfo_tmp.deserialize(i)
              @Users << cloudstorageuserinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataForwardList请求参数结构体
      class DescribeDataForwardListRequest < TencentCloud::Common::AbstractModel
        # @param ProductIds: 产品ID列表
        # @type ProductIds: String

        attr_accessor :ProductIds
        
        def initialize(productids=nil)
          @ProductIds = productids
        end

        def deserialize(params)
          @ProductIds = params['ProductIds']
        end
      end

      # DescribeDataForwardList返回参数结构体
      class DescribeDataForwardListResponse < TencentCloud::Common::AbstractModel
        # @param DataForwardList: 数据转发列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataForwardList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataForwardList, :RequestId
        
        def initialize(dataforwardlist=nil, requestid=nil)
          @DataForwardList = dataforwardlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataForwardList'].nil?
            @DataForwardList = []
            params['DataForwardList'].each do |i|
              dataforward_tmp = DataForward.new
              dataforward_tmp.deserialize(i)
              @DataForwardList << dataforward_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceActionHistory请求参数结构体
      class DescribeDeviceActionHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品Id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param MinTime: 开始范围的 unix 毫秒时间戳
        # @type MinTime: Integer
        # @param MaxTime: 结束范围的 unix 毫秒时间戳
        # @type MaxTime: Integer
        # @param ActionId: 动作Id
        # @type ActionId: String
        # @param Limit: 查询条数 默认为0 最大不超过500
        # @type Limit: Integer
        # @param Context: 游标，标识查询位置。
        # @type Context: String

        attr_accessor :ProductId, :DeviceName, :MinTime, :MaxTime, :ActionId, :Limit, :Context
        
        def initialize(productid=nil, devicename=nil, mintime=nil, maxtime=nil, actionid=nil, limit=nil, context=nil)
          @ProductId = productid
          @DeviceName = devicename
          @MinTime = mintime
          @MaxTime = maxtime
          @ActionId = actionid
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ActionId = params['ActionId']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # DescribeDeviceActionHistory返回参数结构体
      class DescribeDeviceActionHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCounts: 总条数
        # @type TotalCounts: Integer
        # @param ActionHistories: 动作历史
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionHistories: Array
        # @param Context: 用于标识查询结果的上下文，翻页用。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Listover: 搜索结果是否已经结束。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCounts, :ActionHistories, :Context, :Listover, :RequestId
        
        def initialize(totalcounts=nil, actionhistories=nil, context=nil, listover=nil, requestid=nil)
          @TotalCounts = totalcounts
          @ActionHistories = actionhistories
          @Context = context
          @Listover = listover
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCounts = params['TotalCounts']
          unless params['ActionHistories'].nil?
            @ActionHistories = []
            params['ActionHistories'].each do |i|
              actionhistory_tmp = ActionHistory.new
              actionhistory_tmp.deserialize(i)
              @ActionHistories << actionhistory_tmp
            end
          end
          @Context = params['Context']
          @Listover = params['Listover']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceCommLog请求参数结构体
      class DescribeDeviceCommLogRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 开始时间 13位时间戳 单位毫秒
        # @type MinTime: Integer
        # @param MaxTime: 结束时间 13位时间戳 单位毫秒
        # @type MaxTime: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Limit: 返回条数 默认为50
        # @type Limit: Integer
        # @param Context: 检索上下文
        # @type Context: String
        # @param Type: 类型：shadow 下行，device 上行 默认为空则全部查询
        # @type Type: String

        attr_accessor :MinTime, :MaxTime, :ProductId, :DeviceName, :Limit, :Context, :Type
        
        def initialize(mintime=nil, maxtime=nil, productid=nil, devicename=nil, limit=nil, context=nil, type=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @ProductId = productid
          @DeviceName = devicename
          @Limit = limit
          @Context = context
          @Type = type
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Limit = params['Limit']
          @Context = params['Context']
          @Type = params['Type']
        end
      end

      # DescribeDeviceCommLog返回参数结构体
      class DescribeDeviceCommLogResponse < TencentCloud::Common::AbstractModel
        # @param Listover: 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        # @type Listover: Boolean
        # @param Context: 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        # @type Context: String
        # @param Results: 日志数据结果数组，返回对应时间点及取值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listover, :Context, :Results, :RequestId
        
        def initialize(listover=nil, context=nil, results=nil, requestid=nil)
          @Listover = listover
          @Context = context
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Listover = params['Listover']
          @Context = params['Context']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              devicecommlogitem_tmp = DeviceCommLogItem.new
              devicecommlogitem_tmp.deserialize(i)
              @Results << devicecommlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceDataHistory请求参数结构体
      class DescribeDeviceDataHistoryRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 区间开始时间（Unix 时间戳，毫秒级）
        # @type MinTime: Integer
        # @param MaxTime: 区间结束时间（Unix 时间戳，毫秒级）
        # @type MaxTime: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # @type FieldName: String
        # @param Limit: 返回条数
        # @type Limit: Array
        # @param Context: 检索上下文
        # @type Context: String

        attr_accessor :MinTime, :MaxTime, :ProductId, :DeviceName, :FieldName, :Limit, :Context
        
        def initialize(mintime=nil, maxtime=nil, productid=nil, devicename=nil, fieldname=nil, limit=nil, context=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @ProductId = productid
          @DeviceName = devicename
          @FieldName = fieldname
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @FieldName = params['FieldName']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # DescribeDeviceDataHistory返回参数结构体
      class DescribeDeviceDataHistoryResponse < TencentCloud::Common::AbstractModel
        # @param FieldName: 属性字段名称，对应数据模板中功能属性的标识符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldName: String
        # @param Listover: 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param Context: 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Results: 历史数据结果数组，返回对应时间点及取值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FieldName, :Listover, :Context, :Results, :RequestId
        
        def initialize(fieldname=nil, listover=nil, context=nil, results=nil, requestid=nil)
          @FieldName = fieldname
          @Listover = listover
          @Context = context
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @Listover = params['Listover']
          @Context = params['Context']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              devicedatahistoryitem_tmp = DeviceDataHistoryItem.new
              devicedatahistoryitem_tmp.deserialize(i)
              @Results << devicedatahistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceData请求参数结构体
      class DescribeDeviceDataRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDeviceData返回参数结构体
      class DescribeDeviceDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 设备数据
        # @type Data: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceEventHistory请求参数结构体
      class DescribeDeviceEventHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Type: 搜索的事件类型：alert 表示告警，fault 表示故障，info 表示信息，为空则表示查询上述所有类型事件
        # @type Type: String
        # @param StartTime: 起始时间（Unix 时间戳，秒级）, 为0 表示 当前时间 - 24h
        # @type StartTime: Integer
        # @param EndTime: 结束时间（Unix 时间戳，秒级）, 为0 表示当前时间
        # @type EndTime: Integer
        # @param Context: 搜索上下文, 用作查询游标
        # @type Context: String
        # @param Size: 单次获取的历史数据项目的最大数量, 缺省10
        # @type Size: Integer
        # @param EventId: 事件标识符，可以用来指定查询特定的事件，如果不指定，则查询所有事件。
        # @type EventId: String

        attr_accessor :ProductId, :DeviceName, :Type, :StartTime, :EndTime, :Context, :Size, :EventId
        
        def initialize(productid=nil, devicename=nil, type=nil, starttime=nil, endtime=nil, context=nil, size=nil, eventid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Type = type
          @StartTime = starttime
          @EndTime = endtime
          @Context = context
          @Size = size
          @EventId = eventid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Type = params['Type']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Context = params['Context']
          @Size = params['Size']
          @EventId = params['EventId']
        end
      end

      # DescribeDeviceEventHistory返回参数结构体
      class DescribeDeviceEventHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Context: 搜索上下文, 用作查询游标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Total: 搜索结果数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Listover: 搜索结果是否已经结束
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param EventHistory: 搜集结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventHistory: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Total, :Listover, :EventHistory, :RequestId
        
        def initialize(context=nil, total=nil, listover=nil, eventhistory=nil, requestid=nil)
          @Context = context
          @Total = total
          @Listover = listover
          @EventHistory = eventhistory
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Total = params['Total']
          @Listover = params['Listover']
          unless params['EventHistory'].nil?
            @EventHistory = []
            params['EventHistory'].each do |i|
              eventhistoryitem_tmp = EventHistoryItem.new
              eventhistoryitem_tmp.deserialize(i)
              @EventHistory << eventhistoryitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevice请求参数结构体
      class DescribeDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDevice返回参数结构体
      class DescribeDeviceResponse < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Online: 设备是否在线，0不在线，1在线，2获取失败，3未激活
        # @type Online: Integer
        # @param LoginTime: 设备最后上线时间
        # @type LoginTime: Integer
        # @param DevicePsk: 设备密钥
        # @type DevicePsk: String
        # @param EnableState: 设备启用状态
        # @type EnableState: Integer
        # @param ExpireTime: 设备过期时间
        # @type ExpireTime: Integer
        # @param LogLevel: 设备的sdk日志等级，0：关闭，1：错误，2：告警，3：信息，4：调试
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceName, :Online, :LoginTime, :DevicePsk, :EnableState, :ExpireTime, :LogLevel, :RequestId
        
        def initialize(devicename=nil, online=nil, logintime=nil, devicepsk=nil, enablestate=nil, expiretime=nil, loglevel=nil, requestid=nil)
          @DeviceName = devicename
          @Online = online
          @LoginTime = logintime
          @DevicePsk = devicepsk
          @EnableState = enablestate
          @ExpireTime = expiretime
          @LogLevel = loglevel
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Online = params['Online']
          @LoginTime = params['LoginTime']
          @DevicePsk = params['DevicePsk']
          @EnableState = params['EnableState']
          @ExpireTime = params['ExpireTime']
          @LogLevel = params['LogLevel']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceStatusLog请求参数结构体
      class DescribeDeviceStatusLogRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 开始时间（毫秒）
        # @type MinTime: Integer
        # @param MaxTime: 结束时间（毫秒）
        # @type MaxTime: Integer
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Limit: 返回条数
        # @type Limit: Integer
        # @param Context: 检索上下文
        # @type Context: String

        attr_accessor :MinTime, :MaxTime, :ProductId, :DeviceName, :Limit, :Context
        
        def initialize(mintime=nil, maxtime=nil, productid=nil, devicename=nil, limit=nil, context=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @ProductId = productid
          @DeviceName = devicename
          @Limit = limit
          @Context = context
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Limit = params['Limit']
          @Context = params['Context']
        end
      end

      # DescribeDeviceStatusLog返回参数结构体
      class DescribeDeviceStatusLogResponse < TencentCloud::Common::AbstractModel
        # @param Listover: 数据是否已全部返回，true 表示数据全部返回，false 表示还有数据待返回，可将 Context 作为入参，继续查询返回结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listover: Boolean
        # @param Context: 检索上下文，当 ListOver 为false时，可以用此上下文，继续读取后续数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Context: String
        # @param Results: 日志数据结果数组，返回对应时间点及取值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param TotalCount: 日志数据结果总条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listover, :Context, :Results, :TotalCount, :RequestId
        
        def initialize(listover=nil, context=nil, results=nil, totalcount=nil, requestid=nil)
          @Listover = listover
          @Context = context
          @Results = results
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Listover = params['Listover']
          @Context = params['Context']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              devicestatuslogitem_tmp = DeviceStatusLogItem.new
              devicestatuslogitem_tmp.deserialize(i)
              @Results << devicestatuslogitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevices请求参数结构体
      class DescribeDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 需要查看设备列表的产品 ID
        # @type ProductId: String
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer
        # @param Limit: 分页的大小，最大100
        # @type Limit: Integer
        # @param DeviceName: 需要过滤的设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :Offset, :Limit, :DeviceName
        
        def initialize(productid=nil, offset=nil, limit=nil, devicename=nil)
          @ProductId = productid
          @Offset = offset
          @Limit = limit
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DeviceName = params['DeviceName']
        end
      end

      # DescribeDevices返回参数结构体
      class DescribeDevicesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 设备总数
        # @type TotalCount: Integer
        # @param Devices: 设备详细信息列表
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Devices, :RequestId
        
        def initialize(totalcount=nil, devices=nil, requestid=nil)
          @TotalCount = totalcount
          @Devices = devices
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceinfo_tmp = DeviceInfo.new
              deviceinfo_tmp.deserialize(i)
              @Devices << deviceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmware请求参数结构体
      class DescribeFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String

        attr_accessor :ProductID, :FirmwareVersion
        
        def initialize(productid=nil, firmwareversion=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
        end
      end

      # DescribeFirmware返回参数结构体
      class DescribeFirmwareResponse < TencentCloud::Common::AbstractModel
        # @param Version: 固件版本号
        # @type Version: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Name: 固件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Description: 固件描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Md5sum: 固件Md5值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5sum: String
        # @param Createtime: 固件上传的秒级时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Createtime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :ProductId, :Name, :Description, :Md5sum, :Createtime, :ProductName, :RequestId
        
        def initialize(version=nil, productid=nil, name=nil, description=nil, md5sum=nil, createtime=nil, productname=nil, requestid=nil)
          @Version = version
          @ProductId = productid
          @Name = name
          @Description = description
          @Md5sum = md5sum
          @Createtime = createtime
          @ProductName = productname
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @ProductId = params['ProductId']
          @Name = params['Name']
          @Description = params['Description']
          @Md5sum = params['Md5sum']
          @Createtime = params['Createtime']
          @ProductName = params['ProductName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTaskDevices请求参数结构体
      class DescribeFirmwareTaskDevicesRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String
        # @param Filters: 筛选条件
        # @type Filters: Array
        # @param Offset: 查询偏移量 默认为0
        # @type Offset: Integer
        # @param Limit: 查询的数量 默认为50
        # @type Limit: Integer

        attr_accessor :ProductID, :FirmwareVersion, :Filters, :Offset, :Limit
        
        def initialize(productid=nil, firmwareversion=nil, filters=nil, offset=nil, limit=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFirmwareTaskDevices返回参数结构体
      class DescribeFirmwareTaskDevicesResponse < TencentCloud::Common::AbstractModel
        # @param Total: 固件升级任务的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param Devices: 固件升级任务的设备列表
        # @type Devices: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Devices, :RequestId
        
        def initialize(total=nil, devices=nil, requestid=nil)
          @Total = total
          @Devices = devices
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Devices'].nil?
            @Devices = []
            params['Devices'].each do |i|
              deviceupdatestatus_tmp = DeviceUpdateStatus.new
              deviceupdatestatus_tmp.deserialize(i)
              @Devices << deviceupdatestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTaskDistribution请求参数结构体
      class DescribeFirmwareTaskDistributionRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # DescribeFirmwareTaskDistribution返回参数结构体
      class DescribeFirmwareTaskDistributionResponse < TencentCloud::Common::AbstractModel
        # @param StatusInfos: 固件升级任务状态分布信息
        # @type StatusInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatusInfos, :RequestId
        
        def initialize(statusinfos=nil, requestid=nil)
          @StatusInfos = statusinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatusInfos'].nil?
            @StatusInfos = []
            params['StatusInfos'].each do |i|
              statusstatistic_tmp = StatusStatistic.new
              statusstatistic_tmp.deserialize(i)
              @StatusInfos << statusstatistic_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTask请求参数结构体
      class DescribeFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # DescribeFirmwareTask返回参数结构体
      class DescribeFirmwareTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 固件任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param Status: 固件任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 固件任务创建时间，单位:秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param Type: 固件任务升级类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param ProductName: 产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductName: String
        # @param UpgradeMode: 固件任务升级模式。originalVersion（按版本号升级）、filename（提交文件升级）、devicenames（按设备名称升级）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradeMode: String
        # @param ProductId: 产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param OriginalVersion: 原始固件版本号，在UpgradeMode是originalVersion升级模式下会返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :CreateTime, :Type, :ProductName, :UpgradeMode, :ProductId, :OriginalVersion, :RequestId
        
        def initialize(taskid=nil, status=nil, createtime=nil, type=nil, productname=nil, upgrademode=nil, productid=nil, originalversion=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @CreateTime = createtime
          @Type = type
          @ProductName = productname
          @UpgradeMode = upgrademode
          @ProductId = productid
          @OriginalVersion = originalversion
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @Type = params['Type']
          @ProductName = params['ProductName']
          @UpgradeMode = params['UpgradeMode']
          @ProductId = params['ProductId']
          @OriginalVersion = params['OriginalVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTaskStatistics请求参数结构体
      class DescribeFirmwareTaskStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String

        attr_accessor :ProductID, :FirmwareVersion
        
        def initialize(productid=nil, firmwareversion=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
        end
      end

      # DescribeFirmwareTaskStatistics返回参数结构体
      class DescribeFirmwareTaskStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SuccessTotal: 升级成功的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessTotal: Integer
        # @param FailureTotal: 升级失败的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureTotal: Integer
        # @param UpgradingTotal: 正在升级的设备总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpgradingTotal: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessTotal, :FailureTotal, :UpgradingTotal, :RequestId
        
        def initialize(successtotal=nil, failuretotal=nil, upgradingtotal=nil, requestid=nil)
          @SuccessTotal = successtotal
          @FailureTotal = failuretotal
          @UpgradingTotal = upgradingtotal
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessTotal = params['SuccessTotal']
          @FailureTotal = params['FailureTotal']
          @UpgradingTotal = params['UpgradingTotal']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirmwareTasks请求参数结构体
      class DescribeFirmwareTasksRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 返回查询结果条数
        # @type Limit: Integer
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :ProductID, :FirmwareVersion, :Offset, :Limit, :Filters
        
        def initialize(productid=nil, firmwareversion=nil, offset=nil, limit=nil, filters=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
        end
      end

      # DescribeFirmwareTasks返回参数结构体
      class DescribeFirmwareTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskInfos: 固件升级任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskInfos: Array
        # @param Total: 固件升级任务总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskInfos, :Total, :RequestId
        
        def initialize(taskinfos=nil, total=nil, requestid=nil)
          @TaskInfos = taskinfos
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskInfos'].nil?
            @TaskInfos = []
            params['TaskInfos'].each do |i|
              firmwaretaskinfo_tmp = FirmwareTaskInfo.new
              firmwaretaskinfo_tmp.deserialize(i)
              @TaskInfos << firmwaretaskinfo_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeForwardRule请求参数结构体
      class DescribeForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Skey: 控制台Skey
        # @type Skey: String
        # @param QueueType: 队列类型，0：CMQ，1：Ckafka
        # @type QueueType: Integer
        # @param Consecretid: 临时密钥
        # @type Consecretid: String

        attr_accessor :ProductID, :Skey, :QueueType, :Consecretid
        
        def initialize(productid=nil, skey=nil, queuetype=nil, consecretid=nil)
          @ProductID = productid
          @Skey = skey
          @QueueType = queuetype
          @Consecretid = consecretid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @Skey = params['Skey']
          @QueueType = params['QueueType']
          @Consecretid = params['Consecretid']
        end
      end

      # DescribeForwardRule返回参数结构体
      class DescribeForwardRuleResponse < TencentCloud::Common::AbstractModel
        # @param Endpoint: 腾讯云账号
        # @type Endpoint: String
        # @param QueueName: 队列名称
        # @type QueueName: String
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param MsgType: 消息类型 1设备上报信息 2设备状态变化通知 3为全选
        # @type MsgType: Integer
        # @param Result: 结果 2表示禁用 其他为成功
        # @type Result: Integer
        # @param RoleName: 角色名
        # @type RoleName: String
        # @param RoleID: 角色ID
        # @type RoleID: Integer
        # @param QueueRegion: 队列区域
        # @type QueueRegion: String
        # @param QueueType: 队列类型，0：CMQ，1：Ckafka
        # @type QueueType: Integer
        # @param InstanceId: 实例id， 目前只有Ckafaka会用到
        # @type InstanceId: String
        # @param InstanceName: 实例名称，目前只有Ckafaka会用到
        # @type InstanceName: String
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoint, :QueueName, :ProductID, :MsgType, :Result, :RoleName, :RoleID, :QueueRegion, :QueueType, :InstanceId, :InstanceName, :ErrMsg, :RequestId
        
        def initialize(endpoint=nil, queuename=nil, productid=nil, msgtype=nil, result=nil, rolename=nil, roleid=nil, queueregion=nil, queuetype=nil, instanceid=nil, instancename=nil, errmsg=nil, requestid=nil)
          @Endpoint = endpoint
          @QueueName = queuename
          @ProductID = productid
          @MsgType = msgtype
          @Result = result
          @RoleName = rolename
          @RoleID = roleid
          @QueueRegion = queueregion
          @QueueType = queuetype
          @InstanceId = instanceid
          @InstanceName = instancename
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @QueueName = params['QueueName']
          @ProductID = params['ProductID']
          @MsgType = params['MsgType']
          @Result = params['Result']
          @RoleName = params['RoleName']
          @RoleID = params['RoleID']
          @QueueRegion = params['QueueRegion']
          @QueueType = params['QueueType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeModelDefinition请求参数结构体
      class DescribeModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeModelDefinition返回参数结构体
      class DescribeModelDefinitionResponse < TencentCloud::Common::AbstractModel
        # @param Model: 产品数据模板
        # @type Model: :class:`Tencentcloud::Iotvideo.v20201215.models.ProductModelDefinition`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Model, :RequestId
        
        def initialize(model=nil, requestid=nil)
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ProductModelDefinition.new
            @Model.deserialize(params['Model'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProduct请求参数结构体
      class DescribeProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String

        attr_accessor :ProductId
        
        def initialize(productid=nil)
          @ProductId = productid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
        end
      end

      # DescribeProduct返回参数结构体
      class DescribeProductResponse < TencentCloud::Common::AbstractModel
        # @param Data: 产品详情
        # @type Data: :class:`Tencentcloud::Iotvideo.v20201215.models.VideoProduct`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VideoProduct.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProducts请求参数结构体
      class DescribeProductsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页的大小，最大100
        # @type Limit: Integer
        # @param Offset: 偏移量，Offset从0开始
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeProducts返回参数结构体
      class DescribeProductsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 产品详情列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              videoproduct_tmp = VideoProduct.new
              videoproduct_tmp.deserialize(i)
              @Data << videoproduct_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSDKLog请求参数结构体
      class DescribeSDKLogRequest < TencentCloud::Common::AbstractModel
        # @param MinTime: 日志开始时间
        # @type MinTime: Integer
        # @param MaxTime: 日志结束时间
        # @type MaxTime: Integer
        # @param Keywords: 查询关键字，可以同时支持键值查询和文本查询，
        # 例如，查询某key的值为value，并且包含某word的日志，该参数为：key:value word。
        # 键值或文本可以包含多个，以空格隔开。
        # 其中可以索引的key包括：productid、devicename、loglevel
        # 一个典型的查询示例：productid:7JK1G72JNE devicename:name publish loglevel:WARN一个典型的查询示例：productid:ABCDE12345 devicename:test scene:SHADOW publish
        # @type Keywords: String
        # @param Context: 日志检索上下文
        # @type Context: String
        # @param MaxNum: 查询条数
        # @type MaxNum: Integer

        attr_accessor :MinTime, :MaxTime, :Keywords, :Context, :MaxNum
        
        def initialize(mintime=nil, maxtime=nil, keywords=nil, context=nil, maxnum=nil)
          @MinTime = mintime
          @MaxTime = maxtime
          @Keywords = keywords
          @Context = context
          @MaxNum = maxnum
        end

        def deserialize(params)
          @MinTime = params['MinTime']
          @MaxTime = params['MaxTime']
          @Keywords = params['Keywords']
          @Context = params['Context']
          @MaxNum = params['MaxNum']
        end
      end

      # DescribeSDKLog返回参数结构体
      class DescribeSDKLogResponse < TencentCloud::Common::AbstractModel
        # @param Context: 日志检索上下文
        # @type Context: String
        # @param Listover: 是否还有日志，如有仍有日志，下次查询的请求带上当前请求返回的Context
        # @type Listover: Boolean
        # @param Results: 日志列表
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Context, :Listover, :Results, :RequestId
        
        def initialize(context=nil, listover=nil, results=nil, requestid=nil)
          @Context = context
          @Listover = listover
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Context = params['Context']
          @Listover = params['Listover']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              sdklogitem_tmp = SDKLogItem.new
              sdklogitem_tmp.deserialize(i)
              @Results << sdklogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 设备通讯日志查询返回条目
      class DeviceCommLogItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Type: 日志类型，device 设备上行，shadow 服务端下行。
        # @type Type: String
        # @param Data: 通讯数据。
        # @type Data: String

        attr_accessor :Time, :Type, :Data
        
        def initialize(time=nil, type=nil, data=nil)
          @Time = time
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @Time = params['Time']
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # 设备历史数据结构
      class DeviceDataHistoryItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间点，毫秒时间戳
        # @type Time: String
        # @param Value: 字段取值
        # @type Value: String

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 设备详细信息
      class DeviceInfo < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param Online: 设备是否在线，0不在线，1在线，2获取失败，3未激活
        # @type Online: Integer
        # @param LoginTime: 设备最后上线时间
        # @type LoginTime: Integer
        # @param DevicePsk: 设备密钥
        # @type DevicePsk: String
        # @param EnableState: 设备启用状态 0为停用 1为可用
        # @type EnableState: Integer
        # @param ExpireTime: 设备过期时间
        # @type ExpireTime: Integer

        attr_accessor :DeviceName, :Online, :LoginTime, :DevicePsk, :EnableState, :ExpireTime
        
        def initialize(devicename=nil, online=nil, logintime=nil, devicepsk=nil, enablestate=nil, expiretime=nil)
          @DeviceName = devicename
          @Online = online
          @LoginTime = logintime
          @DevicePsk = devicepsk
          @EnableState = enablestate
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @Online = params['Online']
          @LoginTime = params['LoginTime']
          @DevicePsk = params['DevicePsk']
          @EnableState = params['EnableState']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 设备上下线日志记录
      class DeviceStatusLogItem < TencentCloud::Common::AbstractModel
        # @param Time: 时间
        # @type Time: String
        # @param Type: 状态类型： Online 上线，Offline 下线
        # @type Type: String
        # @param Data: 日志信息
        # @type Data: String

        attr_accessor :Time, :Type, :Data
        
        def initialize(time=nil, type=nil, data=nil)
          @Time = time
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @Time = params['Time']
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # 设备固件更新状态
      class DeviceUpdateStatus < TencentCloud::Common::AbstractModel
        # @param DeviceName: 设备名
        # @type DeviceName: String
        # @param LastProcessTime: 最后处理时间
        # @type LastProcessTime: Integer
        # @param Status: 状态
        # @type Status: Integer
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param Retcode: 返回码
        # @type Retcode: Integer
        # @param DstVersion: 目标更新版本
        # @type DstVersion: String
        # @param Percent: 下载中状态时的下载进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param OriVersion: 原版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriVersion: String
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer

        attr_accessor :DeviceName, :LastProcessTime, :Status, :ErrMsg, :Retcode, :DstVersion, :Percent, :OriVersion, :TaskId
        
        def initialize(devicename=nil, lastprocesstime=nil, status=nil, errmsg=nil, retcode=nil, dstversion=nil, percent=nil, oriversion=nil, taskid=nil)
          @DeviceName = devicename
          @LastProcessTime = lastprocesstime
          @Status = status
          @ErrMsg = errmsg
          @Retcode = retcode
          @DstVersion = dstversion
          @Percent = percent
          @OriVersion = oriversion
          @TaskId = taskid
        end

        def deserialize(params)
          @DeviceName = params['DeviceName']
          @LastProcessTime = params['LastProcessTime']
          @Status = params['Status']
          @ErrMsg = params['ErrMsg']
          @Retcode = params['Retcode']
          @DstVersion = params['DstVersion']
          @Percent = params['Percent']
          @OriVersion = params['OriVersion']
          @TaskId = params['TaskId']
        end
      end

      # EditFirmware请求参数结构体
      class EditFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID。
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号。
        # @type FirmwareVersion: String
        # @param FirmwareName: 固件名称。
        # @type FirmwareName: String
        # @param FirmwareDescription: 固件描述。
        # @type FirmwareDescription: String

        attr_accessor :ProductID, :FirmwareVersion, :FirmwareName, :FirmwareDescription
        
        def initialize(productid=nil, firmwareversion=nil, firmwarename=nil, firmwaredescription=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
        end
      end

      # EditFirmware返回参数结构体
      class EditFirmwareResponse < TencentCloud::Common::AbstractModel
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

      # 设备事件的搜索结果项
      class EventHistoryItem < TencentCloud::Common::AbstractModel
        # @param TimeStamp: 事件的时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeStamp: Integer
        # @param ProductId: 事件的产品ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductId: String
        # @param DeviceName: 事件的设备名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceName: String
        # @param EventId: 事件的标识符ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventId: String
        # @param Type: 事件的类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Data: 事件的数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String

        attr_accessor :TimeStamp, :ProductId, :DeviceName, :EventId, :Type, :Data
        
        def initialize(timestamp=nil, productid=nil, devicename=nil, eventid=nil, type=nil, data=nil)
          @TimeStamp = timestamp
          @ProductId = productid
          @DeviceName = devicename
          @EventId = eventid
          @Type = type
          @Data = data
        end

        def deserialize(params)
          @TimeStamp = params['TimeStamp']
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EventId = params['EventId']
          @Type = params['Type']
          @Data = params['Data']
        end
      end

      # 设备固件详细信息
      class FirmwareInfo < TencentCloud::Common::AbstractModel
        # @param Version: 固件版本
        # @type Version: String
        # @param Md5sum: 固件MD5值
        # @type Md5sum: String
        # @param CreateTime: 固件创建时间
        # @type CreateTime: Integer
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param Name: 固件名称
        # @type Name: String
        # @param Description: 固件描述
        # @type Description: String
        # @param ProductId: 产品ID
        # @type ProductId: String

        attr_accessor :Version, :Md5sum, :CreateTime, :ProductName, :Name, :Description, :ProductId
        
        def initialize(version=nil, md5sum=nil, createtime=nil, productname=nil, name=nil, description=nil, productid=nil)
          @Version = version
          @Md5sum = md5sum
          @CreateTime = createtime
          @ProductName = productname
          @Name = name
          @Description = description
          @ProductId = productid
        end

        def deserialize(params)
          @Version = params['Version']
          @Md5sum = params['Md5sum']
          @CreateTime = params['CreateTime']
          @ProductName = params['ProductName']
          @Name = params['Name']
          @Description = params['Description']
          @ProductId = params['ProductId']
        end
      end

      # 固件升级任务信息
      class FirmwareTaskInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Type: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer
        # @param CreateTime: 任务创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer

        attr_accessor :TaskId, :Status, :Type, :CreateTime
        
        def initialize(taskid=nil, status=nil, type=nil, createtime=nil)
          @TaskId = taskid
          @Status = status
          @Type = type
          @CreateTime = createtime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
        end
      end

      # GenerateSignedVideoURL请求参数结构体
      class GenerateSignedVideoURLRequest < TencentCloud::Common::AbstractModel
        # @param VideoURL: 视频播放原始URL地址
        # @type VideoURL: String
        # @param ExpireTime: 播放链接过期时间
        # @type ExpireTime: Integer

        attr_accessor :VideoURL, :ExpireTime
        
        def initialize(videourl=nil, expiretime=nil)
          @VideoURL = videourl
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @VideoURL = params['VideoURL']
          @ExpireTime = params['ExpireTime']
        end
      end

      # GenerateSignedVideoURL返回参数结构体
      class GenerateSignedVideoURLResponse < TencentCloud::Common::AbstractModel
        # @param SignedVideoURL: 视频防盗链播放URL
        # @type SignedVideoURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SignedVideoURL, :RequestId
        
        def initialize(signedvideourl=nil, requestid=nil)
          @SignedVideoURL = signedvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @SignedVideoURL = params['SignedVideoURL']
          @RequestId = params['RequestId']
        end
      end

      # GetAllFirmwareVersion请求参数结构体
      class GetAllFirmwareVersionRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String

        attr_accessor :ProductID
        
        def initialize(productid=nil)
          @ProductID = productid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
        end
      end

      # GetAllFirmwareVersion返回参数结构体
      class GetAllFirmwareVersionResponse < TencentCloud::Common::AbstractModel
        # @param Version: 固件可用版本列表
        # @type Version: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Version, :RequestId
        
        def initialize(version=nil, requestid=nil)
          @Version = version
          @RequestId = requestid
        end

        def deserialize(params)
          @Version = params['Version']
          @RequestId = params['RequestId']
        end
      end

      # GetFirmwareURL请求参数结构体
      class GetFirmwareURLRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本
        # @type FirmwareVersion: String

        attr_accessor :ProductID, :FirmwareVersion
        
        def initialize(productid=nil, firmwareversion=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
        end
      end

      # GetFirmwareURL返回参数结构体
      class GetFirmwareURLResponse < TencentCloud::Common::AbstractModel
        # @param Url: 固件URL
        # @type Url: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :RequestId
        
        def initialize(url=nil, requestid=nil)
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # ImportModelDefinition请求参数结构体
      class ImportModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelSchema: 数据模板定义
        # @type ModelSchema: String

        attr_accessor :ProductId, :ModelSchema
        
        def initialize(productid=nil, modelschema=nil)
          @ProductId = productid
          @ModelSchema = modelschema
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelSchema = params['ModelSchema']
        end
      end

      # ImportModelDefinition返回参数结构体
      class ImportModelDefinitionResponse < TencentCloud::Common::AbstractModel
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

      # InheritCloudStorageUser请求参数结构体
      class InheritCloudStorageUserRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param UserId: 原始用户ID
        # @type UserId: String
        # @param ToUserId: 目标用户ID
        # @type ToUserId: String

        attr_accessor :ProductId, :DeviceName, :UserId, :ToUserId
        
        def initialize(productid=nil, devicename=nil, userid=nil, touserid=nil)
          @ProductId = productid
          @DeviceName = devicename
          @UserId = userid
          @ToUserId = touserid
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @UserId = params['UserId']
          @ToUserId = params['ToUserId']
        end
      end

      # InheritCloudStorageUser返回参数结构体
      class InheritCloudStorageUserResponse < TencentCloud::Common::AbstractModel
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

      # ListFirmwares请求参数结构体
      class ListFirmwaresRequest < TencentCloud::Common::AbstractModel
        # @param PageNum: 获取的页数
        # @type PageNum: Integer
        # @param PageSize: 分页的大小
        # @type PageSize: Integer
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Filters: 搜索过滤条件
        # @type Filters: Array

        attr_accessor :PageNum, :PageSize, :ProductID, :Filters
        
        def initialize(pagenum=nil, pagesize=nil, productid=nil, filters=nil)
          @PageNum = pagenum
          @PageSize = pagesize
          @ProductID = productid
          @Filters = filters
        end

        def deserialize(params)
          @PageNum = params['PageNum']
          @PageSize = params['PageSize']
          @ProductID = params['ProductID']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              searchkeyword_tmp = SearchKeyword.new
              searchkeyword_tmp.deserialize(i)
              @Filters << searchkeyword_tmp
            end
          end
        end
      end

      # ListFirmwares返回参数结构体
      class ListFirmwaresResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 固件总数
        # @type TotalCount: Integer
        # @param Firmwares: 固件列表
        # @type Firmwares: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Firmwares, :RequestId
        
        def initialize(totalcount=nil, firmwares=nil, requestid=nil)
          @TotalCount = totalcount
          @Firmwares = firmwares
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Firmwares'].nil?
            @Firmwares = []
            params['Firmwares'].each do |i|
              firmwareinfo_tmp = FirmwareInfo.new
              firmwareinfo_tmp.deserialize(i)
              @Firmwares << firmwareinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyDataForward请求参数结构体
      class ModifyDataForwardRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param ForwardAddr: 转发地址。
        # @type ForwardAddr: String
        # @param DataChose: 1-数据信息转发 2-设备上下线状态转发 3-数据信息转发&设备上下线状态转发
        # @type DataChose: Integer

        attr_accessor :ProductId, :ForwardAddr, :DataChose
        
        def initialize(productid=nil, forwardaddr=nil, datachose=nil)
          @ProductId = productid
          @ForwardAddr = forwardaddr
          @DataChose = datachose
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ForwardAddr = params['ForwardAddr']
          @DataChose = params['DataChose']
        end
      end

      # ModifyDataForward返回参数结构体
      class ModifyDataForwardResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDataForwardStatus请求参数结构体
      class ModifyDataForwardStatusRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID。
        # @type ProductId: String
        # @param Status: 转发状态，1启用，0禁用。
        # @type Status: Integer

        attr_accessor :ProductId, :Status
        
        def initialize(productid=nil, status=nil)
          @ProductId = productid
          @Status = status
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @Status = params['Status']
        end
      end

      # ModifyDataForwardStatus返回参数结构体
      class ModifyDataForwardStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDeviceLogLevel请求参数结构体
      class ModifyDeviceLogLevelRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param LogLevel: 日志级别，0：关闭，1：错误，2：告警，3：信息，4：调试
        # @type LogLevel: Integer

        attr_accessor :ProductId, :DeviceName, :LogLevel
        
        def initialize(productid=nil, devicename=nil, loglevel=nil)
          @ProductId = productid
          @DeviceName = devicename
          @LogLevel = loglevel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @LogLevel = params['LogLevel']
        end
      end

      # ModifyDeviceLogLevel返回参数结构体
      class ModifyDeviceLogLevelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDevice请求参数结构体
      class ModifyDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 设备所属产品id
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param EnableState: 要设置的设备状态，1为启用，0为禁用
        # @type EnableState: Integer

        attr_accessor :ProductId, :DeviceName, :EnableState
        
        def initialize(productid=nil, devicename=nil, enablestate=nil)
          @ProductId = productid
          @DeviceName = devicename
          @EnableState = enablestate
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @EnableState = params['EnableState']
        end
      end

      # ModifyDevice返回参数结构体
      class ModifyDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyForwardRule请求参数结构体
      class ModifyForwardRuleRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param MsgType: 消息类型
        # @type MsgType: Integer
        # @param Skey: 控制台Skey
        # @type Skey: String
        # @param QueueRegion: 队列区域
        # @type QueueRegion: String
        # @param QueueType: 队列类型 0.CMQ 1.CKafka
        # @type QueueType: Integer
        # @param Consecretid: 临时密钥
        # @type Consecretid: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param QueueID: 队列或主题ID
        # @type QueueID: String
        # @param QueueName: 队列或主题名称
        # @type QueueName: String

        attr_accessor :ProductID, :MsgType, :Skey, :QueueRegion, :QueueType, :Consecretid, :InstanceId, :InstanceName, :QueueID, :QueueName
        
        def initialize(productid=nil, msgtype=nil, skey=nil, queueregion=nil, queuetype=nil, consecretid=nil, instanceid=nil, instancename=nil, queueid=nil, queuename=nil)
          @ProductID = productid
          @MsgType = msgtype
          @Skey = skey
          @QueueRegion = queueregion
          @QueueType = queuetype
          @Consecretid = consecretid
          @InstanceId = instanceid
          @InstanceName = instancename
          @QueueID = queueid
          @QueueName = queuename
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @MsgType = params['MsgType']
          @Skey = params['Skey']
          @QueueRegion = params['QueueRegion']
          @QueueType = params['QueueType']
          @Consecretid = params['Consecretid']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @QueueID = params['QueueID']
          @QueueName = params['QueueName']
        end
      end

      # ModifyForwardRule返回参数结构体
      class ModifyForwardRuleResponse < TencentCloud::Common::AbstractModel
        # @param Endpoint: 腾讯云账号
        # @type Endpoint: String
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param Result: 结果
        # @type Result: Integer
        # @param ErrMsg: 错误信息
        # @type ErrMsg: String
        # @param QueueType: 队列类型 0.CMQ 1.CKafka
        # @type QueueType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoint, :ProductID, :Result, :ErrMsg, :QueueType, :RequestId
        
        def initialize(endpoint=nil, productid=nil, result=nil, errmsg=nil, queuetype=nil, requestid=nil)
          @Endpoint = endpoint
          @ProductID = productid
          @Result = result
          @ErrMsg = errmsg
          @QueueType = queuetype
          @RequestId = requestid
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @ProductID = params['ProductID']
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
          @QueueType = params['QueueType']
          @RequestId = params['RequestId']
        end
      end

      # ModifyModelDefinition请求参数结构体
      class ModifyModelDefinitionRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelSchema: 数据模板定义
        # @type ModelSchema: String

        attr_accessor :ProductId, :ModelSchema
        
        def initialize(productid=nil, modelschema=nil)
          @ProductId = productid
          @ModelSchema = modelschema
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelSchema = params['ModelSchema']
        end
      end

      # ModifyModelDefinition返回参数结构体
      class ModifyModelDefinitionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProduct请求参数结构体
      class ModifyProductRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品id
        # @type ProductId: String
        # @param ProductName: 修改的产品名称 （支持中文、英文、数字、下划线组合，最多不超过20个字符）
        # @type ProductName: String
        # @param ProductDescription: 修改的产品描述 （最多不超过128个字符）
        # @type ProductDescription: String

        attr_accessor :ProductId, :ProductName, :ProductDescription
        
        def initialize(productid=nil, productname=nil, productdescription=nil)
          @ProductId = productid
          @ProductName = productname
          @ProductDescription = productdescription
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @ProductDescription = params['ProductDescription']
        end
      end

      # ModifyProduct返回参数结构体
      class ModifyProductResponse < TencentCloud::Common::AbstractModel
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

      # 产品模型定义
      class ProductModelDefinition < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ModelDefine: 模型定义
        # @type ModelDefine: String
        # @param UpdateTime: 更新时间，秒级时间戳
        # @type UpdateTime: Integer
        # @param CreateTime: 创建时间，秒级时间戳
        # @type CreateTime: Integer
        # @param CategoryModel: 产品所属分类的模型快照（产品创建时刻的）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CategoryModel: String
        # @param NetTypeModel: 产品的连接类型的模型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetTypeModel: String

        attr_accessor :ProductId, :ModelDefine, :UpdateTime, :CreateTime, :CategoryModel, :NetTypeModel
        
        def initialize(productid=nil, modeldefine=nil, updatetime=nil, createtime=nil, categorymodel=nil, nettypemodel=nil)
          @ProductId = productid
          @ModelDefine = modeldefine
          @UpdateTime = updatetime
          @CreateTime = createtime
          @CategoryModel = categorymodel
          @NetTypeModel = nettypemodel
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ModelDefine = params['ModelDefine']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @CategoryModel = params['CategoryModel']
          @NetTypeModel = params['NetTypeModel']
        end
      end

      # 产品分类实体
      class ProductTemplate < TencentCloud::Common::AbstractModel
        # @param Id: 实体ID
        # @type Id: Integer
        # @param CategoryKey: 分类字段
        # @type CategoryKey: String
        # @param CategoryName: 分类名称
        # @type CategoryName: String
        # @param ParentId: 上层实体ID
        # @type ParentId: Integer
        # @param ModelTemplate: 物模型
        # @type ModelTemplate: String
        # @param ListOrder: 排列顺序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListOrder: Integer
        # @param IconUrl: 分类图标地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrl: String
        # @param IconUrlGrid: 九宫格图片地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IconUrlGrid: String

        attr_accessor :Id, :CategoryKey, :CategoryName, :ParentId, :ModelTemplate, :ListOrder, :IconUrl, :IconUrlGrid
        
        def initialize(id=nil, categorykey=nil, categoryname=nil, parentid=nil, modeltemplate=nil, listorder=nil, iconurl=nil, iconurlgrid=nil)
          @Id = id
          @CategoryKey = categorykey
          @CategoryName = categoryname
          @ParentId = parentid
          @ModelTemplate = modeltemplate
          @ListOrder = listorder
          @IconUrl = iconurl
          @IconUrlGrid = iconurlgrid
        end

        def deserialize(params)
          @Id = params['Id']
          @CategoryKey = params['CategoryKey']
          @CategoryName = params['CategoryName']
          @ParentId = params['ParentId']
          @ModelTemplate = params['ModelTemplate']
          @ListOrder = params['ListOrder']
          @IconUrl = params['IconUrl']
          @IconUrlGrid = params['IconUrlGrid']
        end
      end

      # PublishMessage请求参数结构体
      class PublishMessageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Topic: 消息发往的主题
        # @type Topic: String
        # @param Payload: 云端下发到设备的控制报文
        # @type Payload: String
        # @param Qos: 消息服务质量等级，取值为0或1
        # @type Qos: Integer
        # @param PayloadEncoding: Payload的内容编码格式，取值为base64或空。base64表示云端将接收到的base64编码后的报文再转换成二进制报文下发至设备，为空表示不作转换，透传下发至设备
        # @type PayloadEncoding: String

        attr_accessor :ProductId, :DeviceName, :Topic, :Payload, :Qos, :PayloadEncoding
        
        def initialize(productid=nil, devicename=nil, topic=nil, payload=nil, qos=nil, payloadencoding=nil)
          @ProductId = productid
          @DeviceName = devicename
          @Topic = topic
          @Payload = payload
          @Qos = qos
          @PayloadEncoding = payloadencoding
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @Topic = params['Topic']
          @Payload = params['Payload']
          @Qos = params['Qos']
          @PayloadEncoding = params['PayloadEncoding']
        end
      end

      # PublishMessage返回参数结构体
      class PublishMessageResponse < TencentCloud::Common::AbstractModel
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

      # ReportAliveDevice请求参数结构体
      class ReportAliveDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # ReportAliveDevice返回参数结构体
      class ReportAliveDeviceResponse < TencentCloud::Common::AbstractModel
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

      # ResetCloudStorage请求参数结构体
      class ResetCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # ResetCloudStorage返回参数结构体
      class ResetCloudStorageResponse < TencentCloud::Common::AbstractModel
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

      # RetryDeviceFirmwareTask请求参数结构体
      class RetryDeviceFirmwareTaskRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param TaskId: 固件升级任务ID
        # @type TaskId: Integer

        attr_accessor :ProductID, :DeviceName, :FirmwareVersion, :TaskId
        
        def initialize(productid=nil, devicename=nil, firmwareversion=nil, taskid=nil)
          @ProductID = productid
          @DeviceName = devicename
          @FirmwareVersion = firmwareversion
          @TaskId = taskid
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @FirmwareVersion = params['FirmwareVersion']
          @TaskId = params['TaskId']
        end
      end

      # RetryDeviceFirmwareTask返回参数结构体
      class RetryDeviceFirmwareTaskResponse < TencentCloud::Common::AbstractModel
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

      # SDK日志项
      class SDKLogItem < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String
        # @param Level: 日志等级
        # @type Level: String
        # @param DateTime: 日志时间
        # @type DateTime: String
        # @param Content: 日志内容
        # @type Content: String

        attr_accessor :ProductID, :DeviceName, :Level, :DateTime, :Content
        
        def initialize(productid=nil, devicename=nil, level=nil, datetime=nil, content=nil)
          @ProductID = productid
          @DeviceName = devicename
          @Level = level
          @DateTime = datetime
          @Content = content
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @DeviceName = params['DeviceName']
          @Level = params['Level']
          @DateTime = params['DateTime']
          @Content = params['Content']
        end
      end

      # 搜索关键词
      class SearchKeyword < TencentCloud::Common::AbstractModel
        # @param Key: 搜索条件的Key
        # @type Key: String
        # @param Value: 搜索条件的值
        # @type Value: String

        attr_accessor :Key, :Value
        
        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # SetForwardAuth请求参数结构体
      class SetForwardAuthRequest < TencentCloud::Common::AbstractModel
        # @param Skey: 控制台Skey
        # @type Skey: String
        # @param QueueType: 消息队列类型  0.CMQ 1.CKafka
        # @type QueueType: Integer

        attr_accessor :Skey, :QueueType
        
        def initialize(skey=nil, queuetype=nil)
          @Skey = skey
          @QueueType = queuetype
        end

        def deserialize(params)
          @Skey = params['Skey']
          @QueueType = params['QueueType']
        end
      end

      # SetForwardAuth返回参数结构体
      class SetForwardAuthResponse < TencentCloud::Common::AbstractModel
        # @param Endpoint: 腾讯云账号
        # @type Endpoint: String
        # @param Result: 结果
        # @type Result: Integer
        # @param RoleName: 角色名
        # @type RoleName: String
        # @param RoleID: 角色ID
        # @type RoleID: Integer
        # @param QueueType: 消息队列类型  0.CMQ 1.CKafka
        # @type QueueType: Integer
        # @param ErrMsg: 错误消息
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Endpoint, :Result, :RoleName, :RoleID, :QueueType, :ErrMsg, :RequestId
        
        def initialize(endpoint=nil, result=nil, rolename=nil, roleid=nil, queuetype=nil, errmsg=nil, requestid=nil)
          @Endpoint = endpoint
          @Result = result
          @RoleName = rolename
          @RoleID = roleid
          @QueueType = queuetype
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @Result = params['Result']
          @RoleName = params['RoleName']
          @RoleID = params['RoleID']
          @QueueType = params['QueueType']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # 状态统计信息
      class StatusStatistic < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Total: 统计总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :Status, :Total
        
        def initialize(status=nil, total=nil)
          @Status = status
          @Total = total
        end

        def deserialize(params)
          @Status = params['Status']
          @Total = params['Total']
        end
      end

      # TransferCloudStorage请求参数结构体
      class TransferCloudStorageRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 已开通云存的设备名称
        # @type DeviceName: String
        # @param ToDeviceName: 未开通云存的设备名称
        # @type ToDeviceName: String

        attr_accessor :ProductId, :DeviceName, :ToDeviceName
        
        def initialize(productid=nil, devicename=nil, todevicename=nil)
          @ProductId = productid
          @DeviceName = devicename
          @ToDeviceName = todevicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
          @ToDeviceName = params['ToDeviceName']
        end
      end

      # TransferCloudStorage返回参数结构体
      class TransferCloudStorageResponse < TencentCloud::Common::AbstractModel
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

      # UpdateAIModelChannel请求参数结构体
      class UpdateAIModelChannelRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Type: 推送类型。ckafka：消息队列；forward：http/https推送
        # @type Type: String
        # @param ForwardAddress: 第三方推送地址
        # @type ForwardAddress: String
        # @param ForwardKey: 第三方推送密钥，不填写则腾讯云自动生成。
        # @type ForwardKey: String
        # @param CKafkaRegion: ckafka地域
        # @type CKafkaRegion: String
        # @param CKafkaInstance: ckafka实例
        # @type CKafkaInstance: String
        # @param CKafkaTopic: ckafka订阅主题
        # @type CKafkaTopic: String

        attr_accessor :ModelId, :ProductId, :Type, :ForwardAddress, :ForwardKey, :CKafkaRegion, :CKafkaInstance, :CKafkaTopic
        
        def initialize(modelid=nil, productid=nil, type=nil, forwardaddress=nil, forwardkey=nil, ckafkaregion=nil, ckafkainstance=nil, ckafkatopic=nil)
          @ModelId = modelid
          @ProductId = productid
          @Type = type
          @ForwardAddress = forwardaddress
          @ForwardKey = forwardkey
          @CKafkaRegion = ckafkaregion
          @CKafkaInstance = ckafkainstance
          @CKafkaTopic = ckafkatopic
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ProductId = params['ProductId']
          @Type = params['Type']
          @ForwardAddress = params['ForwardAddress']
          @ForwardKey = params['ForwardKey']
          @CKafkaRegion = params['CKafkaRegion']
          @CKafkaInstance = params['CKafkaInstance']
          @CKafkaTopic = params['CKafkaTopic']
        end
      end

      # UpdateAIModelChannel返回参数结构体
      class UpdateAIModelChannelResponse < TencentCloud::Common::AbstractModel
        # @param ForwardKey: 第三方推送密钥，如果选择自动生成则会返回此字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ForwardKey, :RequestId
        
        def initialize(forwardkey=nil, requestid=nil)
          @ForwardKey = forwardkey
          @RequestId = requestid
        end

        def deserialize(params)
          @ForwardKey = params['ForwardKey']
          @RequestId = params['RequestId']
        end
      end

      # UploadFirmware请求参数结构体
      class UploadFirmwareRequest < TencentCloud::Common::AbstractModel
        # @param ProductID: 产品ID
        # @type ProductID: String
        # @param FirmwareVersion: 固件版本号
        # @type FirmwareVersion: String
        # @param Md5sum: 固件的MD5值
        # @type Md5sum: String
        # @param FileSize: 固件的大小
        # @type FileSize: Integer
        # @param FirmwareName: 固件名称
        # @type FirmwareName: String
        # @param FirmwareDescription: 固件描述
        # @type FirmwareDescription: String

        attr_accessor :ProductID, :FirmwareVersion, :Md5sum, :FileSize, :FirmwareName, :FirmwareDescription
        
        def initialize(productid=nil, firmwareversion=nil, md5sum=nil, filesize=nil, firmwarename=nil, firmwaredescription=nil)
          @ProductID = productid
          @FirmwareVersion = firmwareversion
          @Md5sum = md5sum
          @FileSize = filesize
          @FirmwareName = firmwarename
          @FirmwareDescription = firmwaredescription
        end

        def deserialize(params)
          @ProductID = params['ProductID']
          @FirmwareVersion = params['FirmwareVersion']
          @Md5sum = params['Md5sum']
          @FileSize = params['FileSize']
          @FirmwareName = params['FirmwareName']
          @FirmwareDescription = params['FirmwareDescription']
        end
      end

      # UploadFirmware返回参数结构体
      class UploadFirmwareResponse < TencentCloud::Common::AbstractModel
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

      # 批次元数据
      class VideoBatch < TencentCloud::Common::AbstractModel
        # @param Id: 批次ID
        # @type Id: Integer
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param Status: 状态：1：待创建设备 2：创建中 3：已完成
        # @type Status: Integer
        # @param DevPre: 设备前缀
        # @type DevPre: String
        # @param DevNum: 设备数量
        # @type DevNum: Integer
        # @param DevNumCreated: 已创建设备数量
        # @type DevNumCreated: Integer
        # @param BatchURL: 批次下载地址
        # @type BatchURL: String
        # @param CreateTime: 创建时间。unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间。unix时间戳
        # @type UpdateTime: Integer

        attr_accessor :Id, :UserId, :ProductId, :Status, :DevPre, :DevNum, :DevNumCreated, :BatchURL, :CreateTime, :UpdateTime
        
        def initialize(id=nil, userid=nil, productid=nil, status=nil, devpre=nil, devnum=nil, devnumcreated=nil, batchurl=nil, createtime=nil, updatetime=nil)
          @Id = id
          @UserId = userid
          @ProductId = productid
          @Status = status
          @DevPre = devpre
          @DevNum = devnum
          @DevNumCreated = devnumcreated
          @BatchURL = batchurl
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @UserId = params['UserId']
          @ProductId = params['ProductId']
          @Status = params['Status']
          @DevPre = params['DevPre']
          @DevNum = params['DevNum']
          @DevNumCreated = params['DevNumCreated']
          @BatchURL = params['BatchURL']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # video产品元数据
      class VideoProduct < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param ProductName: 产品名称
        # @type ProductName: String
        # @param DeviceType: 产品设备类型（普通设备)	1.普通设备
        # @type DeviceType: Integer
        # @param EncryptionType: 认证方式：2：PSK
        # @type EncryptionType: Integer
        # @param Features: 设备功能码
        # @type Features: Array
        # @param ChipOs: 操作系统
        # @type ChipOs: String
        # @param ChipManufactureId: 芯片厂商id
        # @type ChipManufactureId: String
        # @param ChipId: 芯片id
        # @type ChipId: String
        # @param ProductDescription: 产品描述信息
        # @type ProductDescription: String
        # @param CreateTime: 创建时间unix时间戳
        # @type CreateTime: Integer
        # @param UpdateTime: 修改时间unix时间戳
        # @type UpdateTime: Integer

        attr_accessor :ProductId, :ProductName, :DeviceType, :EncryptionType, :Features, :ChipOs, :ChipManufactureId, :ChipId, :ProductDescription, :CreateTime, :UpdateTime
        
        def initialize(productid=nil, productname=nil, devicetype=nil, encryptiontype=nil, features=nil, chipos=nil, chipmanufactureid=nil, chipid=nil, productdescription=nil, createtime=nil, updatetime=nil)
          @ProductId = productid
          @ProductName = productname
          @DeviceType = devicetype
          @EncryptionType = encryptiontype
          @Features = features
          @ChipOs = chipos
          @ChipManufactureId = chipmanufactureid
          @ChipId = chipid
          @ProductDescription = productdescription
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @ProductName = params['ProductName']
          @DeviceType = params['DeviceType']
          @EncryptionType = params['EncryptionType']
          @Features = params['Features']
          @ChipOs = params['ChipOs']
          @ChipManufactureId = params['ChipManufactureId']
          @ChipId = params['ChipId']
          @ProductDescription = params['ProductDescription']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # WakeUpDevice请求参数结构体
      class WakeUpDeviceRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 产品ID
        # @type ProductId: String
        # @param DeviceName: 设备名称
        # @type DeviceName: String

        attr_accessor :ProductId, :DeviceName
        
        def initialize(productid=nil, devicename=nil)
          @ProductId = productid
          @DeviceName = devicename
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DeviceName = params['DeviceName']
        end
      end

      # WakeUpDevice返回参数结构体
      class WakeUpDeviceResponse < TencentCloud::Common::AbstractModel
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

    end
  end
end

