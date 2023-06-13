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
  module Goosefs
    module V20220519
      # CreateDataRepositoryTask请求参数结构体
      class CreateDataRepositoryTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 数据流通任务类型, FS_TO_COS(文件系统到COS Bucket),或者COS_TO_FS(COS Bucket到文件系统)
        # @type TaskType: String
        # @param Bucket: COS存储桶名
        # @type Bucket: String
        # @param FileSystemId: 文件系统ID
        # @type FileSystemId: String
        # @param TaskPath: 对于FS_TO_COS, TaskPath是Bucket映射目录的相对路径, 对于COS_TO_FS是COS上的路径。如果置为空, 则表示全部数据
        # @type TaskPath: String
        # @param TaskName: 任务名称
        # @type TaskName: String
        # @param RepositoryType: 数据流通方式 MSP_AFM 手动加载  RAW_AFM 按需加载
        # @type RepositoryType: String
        # @param TextLocation: 文件列表下载地址，以http开头
        # @type TextLocation: String

        attr_accessor :TaskType, :Bucket, :FileSystemId, :TaskPath, :TaskName, :RepositoryType, :TextLocation

        def initialize(tasktype=nil, bucket=nil, filesystemid=nil, taskpath=nil, taskname=nil, repositorytype=nil, textlocation=nil)
          @TaskType = tasktype
          @Bucket = bucket
          @FileSystemId = filesystemid
          @TaskPath = taskpath
          @TaskName = taskname
          @RepositoryType = repositorytype
          @TextLocation = textlocation
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Bucket = params['Bucket']
          @FileSystemId = params['FileSystemId']
          @TaskPath = params['TaskPath']
          @TaskName = params['TaskName']
          @RepositoryType = params['RepositoryType']
          @TextLocation = params['TextLocation']
        end
      end

      # CreateDataRepositoryTask返回参数结构体
      class CreateDataRepositoryTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
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

      # DescribeDataRepositoryTaskStatus请求参数结构体
      class DescribeDataRepositoryTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: task id
        # @type TaskId: String
        # @param FileSystemId: file system id
        # @type FileSystemId: String

        attr_accessor :TaskId, :FileSystemId

        def initialize(taskid=nil, filesystemid=nil)
          @TaskId = taskid
          @FileSystemId = filesystemid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileSystemId = params['FileSystemId']
        end
      end

      # DescribeDataRepositoryTaskStatus返回参数结构体
      class DescribeDataRepositoryTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Status: 任务状态 0(初始化中), 1(运行中), 2(已完成), 3(任务失败)
        # @type Status: Integer
        # @param FinishedFileNumber: 已完成的文件数量
        # @type FinishedFileNumber: Integer
        # @param FinishedCapacity: 已完成的数据量
        # @type FinishedCapacity: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :FinishedFileNumber, :FinishedCapacity, :RequestId

        def initialize(taskid=nil, status=nil, finishedfilenumber=nil, finishedcapacity=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @FinishedFileNumber = finishedfilenumber
          @FinishedCapacity = finishedcapacity
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @FinishedFileNumber = params['FinishedFileNumber']
          @FinishedCapacity = params['FinishedCapacity']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

