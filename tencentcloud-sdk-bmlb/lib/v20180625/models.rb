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
  module Bmlb
    module V20180625
      # 待与四层监听器绑定的物理机主机、虚拟机或半托管主机信息。目前一个四层监听器下面最多允许绑定255个主机端口。
      class BindL4Backend < TencentCloud::Common::AbstractModel
        # @param Port: 待绑定的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 待绑定的黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Weight: 待绑定的主机权重，可选值0~100。
        # @type Weight: Integer
        # @param ProbePort: 自定义探测的主机端口，可选值1~65535。（需要监听器开启自定义健康检查）
        # @type ProbePort: Integer

        attr_accessor :Port, :InstanceId, :Weight, :ProbePort

        def initialize(port=nil, instanceid=nil, weight=nil, probeport=nil)
          @Port = port
          @InstanceId = instanceid
          @Weight = weight
          @ProbePort = probeport
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @ProbePort = params['ProbePort']
        end
      end

      # BindL4Backends请求参数结构体
      class BindL4BackendsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 四层监听器实例ID，可通过接口DescribeL4Listeners查询。
        # @type ListenerId: String
        # @param BackendSet: 待绑定的主机信息。可以绑定多个主机端口。目前一个四层监听器下面最多允许绑定255个主机端口。
        # @type BackendSet: Array
        # @param BindType: 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :BackendSet, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, backendset=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @BackendSet = backendset
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              bindl4backend_tmp = BindL4Backend.new
              bindl4backend_tmp.deserialize(i)
              @BackendSet << bindl4backend_tmp
            end
          end
          @BindType = params['BindType']
        end
      end

      # BindL4Backends返回参数结构体
      class BindL4BackendsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 待与七层监听器转发规则绑定的物理机主机、虚拟机或半托管主机信息。目前一个七层转发路径下面最多允许绑定255个主机端口。
      class BindL7Backend < TencentCloud::Common::AbstractModel
        # @param Port: 待绑定的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Weight: 待绑定的主机权重，可选值0~100。
        # @type Weight: Integer

        attr_accessor :Port, :InstanceId, :Weight

        def initialize(port=nil, instanceid=nil, weight=nil)
          @Port = port
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # BindL7Backends请求参数结构体
      class BindL7BackendsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationId: 转发路径实例ID，可通过接口DescribeL7Rules查询。
        # @type LocationId: String
        # @param BackendSet: 待绑定的主机信息。可以绑定多个主机端口。目前一个七层转发路径下面最多允许绑定255个主机端口。
        # @type BackendSet: Array
        # @param BindType: 绑定类型。0：物理机，1：虚拟机 2：半托管机器。
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId, :LocationId, :BackendSet, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil, locationid=nil, backendset=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
          @LocationId = locationid
          @BackendSet = backendset
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
          @LocationId = params['LocationId']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              bindl7backend_tmp = BindL7Backend.new
              bindl7backend_tmp.deserialize(i)
              @BackendSet << bindl7backend_tmp
            end
          end
          @BindType = params['BindType']
        end
      end

      # BindL7Backends返回参数结构体
      class BindL7BackendsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # BindTrafficMirrorListeners请求参数结构体
      class BindTrafficMirrorListenersRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param ListenerIds: 七层监听器实例ID数组，可通过接口DescribeL7Listeners查询。
        # @type ListenerIds: Array

        attr_accessor :TrafficMirrorId, :ListenerIds

        def initialize(trafficmirrorid=nil, listenerids=nil)
          @TrafficMirrorId = trafficmirrorid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # BindTrafficMirrorListeners返回参数结构体
      class BindTrafficMirrorListenersResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 待与流量镜像绑定的接收机信息。
      class BindTrafficMirrorReceiver < TencentCloud::Common::AbstractModel
        # @param Port: 待绑定的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 待绑定的主机实例ID。
        # @type InstanceId: String
        # @param Weight: 待绑定的主机权重，可选值0~100。
        # @type Weight: Integer

        attr_accessor :Port, :InstanceId, :Weight

        def initialize(port=nil, instanceid=nil, weight=nil)
          @Port = port
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # BindTrafficMirrorReceivers请求参数结构体
      class BindTrafficMirrorReceiversRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param ReceiverSet: 待绑定的黑石物理机信息数组。
        # @type ReceiverSet: Array

        attr_accessor :TrafficMirrorId, :ReceiverSet

        def initialize(trafficmirrorid=nil, receiverset=nil)
          @TrafficMirrorId = trafficmirrorid
          @ReceiverSet = receiverset
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          unless params['ReceiverSet'].nil?
            @ReceiverSet = []
            params['ReceiverSet'].each do |i|
              bindtrafficmirrorreceiver_tmp = BindTrafficMirrorReceiver.new
              bindtrafficmirrorreceiver_tmp.deserialize(i)
              @ReceiverSet << bindtrafficmirrorreceiver_tmp
            end
          end
        end
      end

      # BindTrafficMirrorReceivers返回参数结构体
      class BindTrafficMirrorReceiversResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 获取证书信息时返回的所用在的负载均衡信息。
      class CertDetailLoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 黑石负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 黑石负载均衡实例名称。
        # @type LoadBalancerName: String
        # @param VpcId: 该黑石负载均衡所在的VpcId。
        # @type VpcId: String
        # @param RegionId: 该黑石负载均衡所在的regionId。
        # @type RegionId: Integer

        attr_accessor :LoadBalancerId, :LoadBalancerName, :VpcId, :RegionId

        def initialize(loadbalancerid=nil, loadbalancername=nil, vpcid=nil, regionid=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @VpcId = vpcid
          @RegionId = regionid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @VpcId = params['VpcId']
          @RegionId = params['RegionId']
        end
      end

      # 用于创建四层监听器的监听器信息。目前一个负载均衡下面最多允许创建50个监听器。
      class CreateL4Listener < TencentCloud::Common::AbstractModel
        # @param LoadBalancerPort: 监听器监听端口，可选值1~65535。
        # @type LoadBalancerPort: Integer
        # @param Protocol: 监听器协议类型，可选值tcp，udp。
        # @type Protocol: String
        # @param ListenerName: 监听器名称。
        # @type ListenerName: String
        # @param SessionExpire: 监听器的会话保持时间，单位：秒。可选值：900~3600,不传表示不开启会话保持。
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启健康检查：1（开启）、0（关闭）。默认值0，表示关闭。
        # @type HealthSwitch: Integer
        # @param TimeOut: 健康检查的响应超时时间，可选值：2-60，默认值：2，单位:秒。<br><font color="red">响应超时时间要小于检查间隔时间。</font>
        # @type TimeOut: Integer
        # @param IntervalTime: 健康检查检查间隔时间，默认值：5，可选值：5-300，单位：秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        # @type HealthNum: Integer
        # @param UnhealthNum: 不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发不正常，可选值：2-10，单位：次。
        # @type UnhealthNum: Integer
        # @param Bandwidth: 监听器最大带宽值，用于计费模式为固定带宽计费，可选值：0-1000，单位：Mbps。
        # @type Bandwidth: Integer
        # @param CustomHealthSwitch: 是否开启自定义健康检查：1（开启）、0（关闭）。默认值0，表示关闭。（该字段在健康检查开启的情况下才生效）
        # @type CustomHealthSwitch: Integer
        # @param InputType: 自定义健康探测内容类型，可选值：text（文本）、hexadecimal（十六进制）。
        # @type InputType: String
        # @param LineSeparatorType: 探测内容类型为文本方式时，针对请求文本中换行替换方式。可选值：1（替换为LF）、2（替换为CR）、3（替换为LF+CR）。
        # @type LineSeparatorType: Integer
        # @param HealthRequest: 自定义探测请求内容。
        # @type HealthRequest: String
        # @param HealthResponse: 自定义探测返回内容。
        # @type HealthResponse: String
        # @param ToaFlag: 是否开启toa。可选值：0（关闭）、1（开启），默认关闭。（该字段在负载均衡为fullnat类型下才生效）
        # @type ToaFlag: Integer

        attr_accessor :LoadBalancerPort, :Protocol, :ListenerName, :SessionExpire, :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnhealthNum, :Bandwidth, :CustomHealthSwitch, :InputType, :LineSeparatorType, :HealthRequest, :HealthResponse, :ToaFlag

        def initialize(loadbalancerport=nil, protocol=nil, listenername=nil, sessionexpire=nil, healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, bandwidth=nil, customhealthswitch=nil, inputtype=nil, lineseparatortype=nil, healthrequest=nil, healthresponse=nil, toaflag=nil)
          @LoadBalancerPort = loadbalancerport
          @Protocol = protocol
          @ListenerName = listenername
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @Bandwidth = bandwidth
          @CustomHealthSwitch = customhealthswitch
          @InputType = inputtype
          @LineSeparatorType = lineseparatortype
          @HealthRequest = healthrequest
          @HealthResponse = healthresponse
          @ToaFlag = toaflag
        end

        def deserialize(params)
          @LoadBalancerPort = params['LoadBalancerPort']
          @Protocol = params['Protocol']
          @ListenerName = params['ListenerName']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @Bandwidth = params['Bandwidth']
          @CustomHealthSwitch = params['CustomHealthSwitch']
          @InputType = params['InputType']
          @LineSeparatorType = params['LineSeparatorType']
          @HealthRequest = params['HealthRequest']
          @HealthResponse = params['HealthResponse']
          @ToaFlag = params['ToaFlag']
        end
      end

      # CreateL4Listeners请求参数结构体
      class CreateL4ListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerSet: 监听器信息数组，可以创建多个监听器。目前一个负载均衡下面最多允许创建50个监听器
        # @type ListenerSet: Array

        attr_accessor :LoadBalancerId, :ListenerSet

        def initialize(loadbalancerid=nil, listenerset=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerSet = listenerset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              createl4listener_tmp = CreateL4Listener.new
              createl4listener_tmp.deserialize(i)
              @ListenerSet << createl4listener_tmp
            end
          end
        end
      end

      # CreateL4Listeners返回参数结构体
      class CreateL4ListenersResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果
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

      # 用于创建四层监听器的监听器信息。目前一个负载均衡下面最多允许创建50个七层监听器。
      class CreateL7Listener < TencentCloud::Common::AbstractModel
        # @param LoadBalancerPort: 七层监听器端口，可选值1~65535。
        # @type LoadBalancerPort: Integer
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param ListenerName: 七层监听器名称。
        # @type ListenerName: String
        # @param SslMode: 认证方式：0（不认证，用于http），1（单向认证，用于https），2（双向认证，用于https）。当创建的是https类型的监听器时，此值必选。
        # @type SslMode: Integer
        # @param CertId: 服务端证书ID。当创建的是https类型的监听器时，此值必选。
        # @type CertId: String
        # @param CertName: 服务端证书名称。
        # @type CertName: String
        # @param CertContent: 服务端证书内容。
        # @type CertContent: String
        # @param CertKey: 服务端证书密钥。
        # @type CertKey: String
        # @param CertCaId: 客户端证书ID。
        # @type CertCaId: String
        # @param CertCaName: 客户端证书名称。
        # @type CertCaName: String
        # @param CertCaContent: 客户端证书内容。
        # @type CertCaContent: String
        # @param Bandwidth: 用于计费模式为固定带宽计费，指定监听器最大带宽值，可选值：0-1000，单位：Mbps。
        # @type Bandwidth: Integer
        # @param ForwardProtocol: 转发协议。当Protocol为https时并且SslMode为1或2时，有意义。可选的值为0：https，1：spdy，2：http2，3：spdy+http2。
        # @type ForwardProtocol: Integer

        attr_accessor :LoadBalancerPort, :Protocol, :ListenerName, :SslMode, :CertId, :CertName, :CertContent, :CertKey, :CertCaId, :CertCaName, :CertCaContent, :Bandwidth, :ForwardProtocol

        def initialize(loadbalancerport=nil, protocol=nil, listenername=nil, sslmode=nil, certid=nil, certname=nil, certcontent=nil, certkey=nil, certcaid=nil, certcaname=nil, certcacontent=nil, bandwidth=nil, forwardprotocol=nil)
          @LoadBalancerPort = loadbalancerport
          @Protocol = protocol
          @ListenerName = listenername
          @SslMode = sslmode
          @CertId = certid
          @CertName = certname
          @CertContent = certcontent
          @CertKey = certkey
          @CertCaId = certcaid
          @CertCaName = certcaname
          @CertCaContent = certcacontent
          @Bandwidth = bandwidth
          @ForwardProtocol = forwardprotocol
        end

        def deserialize(params)
          @LoadBalancerPort = params['LoadBalancerPort']
          @Protocol = params['Protocol']
          @ListenerName = params['ListenerName']
          @SslMode = params['SslMode']
          @CertId = params['CertId']
          @CertName = params['CertName']
          @CertContent = params['CertContent']
          @CertKey = params['CertKey']
          @CertCaId = params['CertCaId']
          @CertCaName = params['CertCaName']
          @CertCaContent = params['CertCaContent']
          @Bandwidth = params['Bandwidth']
          @ForwardProtocol = params['ForwardProtocol']
        end
      end

      # CreateL7Listeners请求参数结构体
      class CreateL7ListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID
        # @type LoadBalancerId: String
        # @param ListenerSet: 七层监听器信息数组，可以创建多个七层监听器。目前一个负载均衡下面最多允许创建50个七层监听器。
        # @type ListenerSet: Array

        attr_accessor :LoadBalancerId, :ListenerSet

        def initialize(loadbalancerid=nil, listenerset=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerSet = listenerset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              createl7listener_tmp = CreateL7Listener.new
              createl7listener_tmp.deserialize(i)
              @ListenerSet << createl7listener_tmp
            end
          end
        end
      end

      # CreateL7Listeners返回参数结构体
      class CreateL7ListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 新建的负载均衡七层监听器的唯一ID列表。
        # @type ListenerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerIds, :RequestId

        def initialize(listenerids=nil, requestid=nil)
          @ListenerIds = listenerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @RequestId = params['RequestId']
        end
      end

      # 用于创建七层监听器的转发规则的信息。目前一个七层监听器下面最多允许创建50个七层转发域名，而每一个转发域名下最多可以创建100个转发规则。
      class CreateL7Rule < TencentCloud::Common::AbstractModel
        # @param Domain: 七层转发规则的转发域名。
        # @type Domain: String
        # @param Url: 七层转发规则的转发路径。
        # @type Url: String
        # @param SessionExpire: 会话保持时间，单位：秒。可选值：30~3600。默认值0，表示不开启会话保持。
        # @type SessionExpire: Integer
        # @param HealthSwitch: 健康检查开关：1（开启）、0（关闭）。默认值0，表示关闭。
        # @type HealthSwitch: Integer
        # @param IntervalTime: 健康检查检查间隔时间，默认值：5，可选值：5-300，单位：秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康检查健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        # @type HealthNum: Integer
        # @param UnhealthNum: 健康检查不健康阈值，默认值：5，表示当连续探测五次不健康则表示该转发不正常，可选值：2-10，单位：次。
        # @type UnhealthNum: Integer
        # @param HttpCodes: 健康检查中认为健康的HTTP返回码的组合。可选值为1~5的集合，1表示HTTP返回码为1xx认为健康。2表示HTTP返回码为2xx认为健康。3表示HTTP返回码为3xx认为健康。4表示HTTP返回码为4xx认为健康。5表示HTTP返回码为5xx认为健康。
        # @type HttpCodes: Array
        # @param HttpCheckPath: 健康检查检查路径。
        # @type HttpCheckPath: String
        # @param HttpCheckDomain: 健康检查检查域名。如果创建规则的域名使用通配符或正则表达式，则健康检查检查域名可自定义，否则必须跟健康检查检查域名一样。
        # @type HttpCheckDomain: String
        # @param BalanceMode: 均衡方式：ip_hash、wrr。默认值wrr。
        # @type BalanceMode: String

        attr_accessor :Domain, :Url, :SessionExpire, :HealthSwitch, :IntervalTime, :HealthNum, :UnhealthNum, :HttpCodes, :HttpCheckPath, :HttpCheckDomain, :BalanceMode

        def initialize(domain=nil, url=nil, sessionexpire=nil, healthswitch=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httpcodes=nil, httpcheckpath=nil, httpcheckdomain=nil, balancemode=nil)
          @Domain = domain
          @Url = url
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @HttpCodes = httpcodes
          @HttpCheckPath = httpcheckpath
          @HttpCheckDomain = httpcheckdomain
          @BalanceMode = balancemode
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Url = params['Url']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @HttpCodes = params['HttpCodes']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckDomain = params['HttpCheckDomain']
          @BalanceMode = params['BalanceMode']
        end
      end

      # CreateL7Rules请求参数结构体
      class CreateL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param RuleSet: 七层转发规则信息数组，可以创建多个七层转发规则。目前一个七层监听器下面最多允许创建50个七层转发域名，而每一个转发域名下最多可以创建100个转发规则。目前只能单条创建，不能批量创建。
        # @type RuleSet: Array

        attr_accessor :LoadBalancerId, :ListenerId, :RuleSet

        def initialize(loadbalancerid=nil, listenerid=nil, ruleset=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @RuleSet = ruleset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              createl7rule_tmp = CreateL7Rule.new
              createl7rule_tmp.deserialize(i)
              @RuleSet << createl7rule_tmp
            end
          end
        end
      end

      # CreateL7Rules返回参数结构体
      class CreateL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 用于创建负载均衡的个性化配置。
      class CreateLoadBalancerBzConf < TencentCloud::Common::AbstractModel
        # @param BzPayMode: 按月/按小时计费。
        # @type BzPayMode: String
        # @param BzL4Metrics: 四层可选按带宽，连接数衡量。
        # @type BzL4Metrics: String
        # @param BzL7Metrics: 七层可选按qps衡量。
        # @type BzL7Metrics: String

        attr_accessor :BzPayMode, :BzL4Metrics, :BzL7Metrics

        def initialize(bzpaymode=nil, bzl4metrics=nil, bzl7metrics=nil)
          @BzPayMode = bzpaymode
          @BzL4Metrics = bzl4metrics
          @BzL7Metrics = bzl7metrics
        end

        def deserialize(params)
          @BzPayMode = params['BzPayMode']
          @BzL4Metrics = params['BzL4Metrics']
          @BzL7Metrics = params['BzL7Metrics']
        end
      end

      # CreateLoadBalancers请求参数结构体
      class CreateLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 黑石负载均衡实例所属的私有网络ID。
        # @type VpcId: String
        # @param LoadBalancerType: 负载均衡的类型，取值为open或internal。open表示公网(有日租)，internal表示内网。
        # @type LoadBalancerType: String
        # @param SubnetId: 在私有网络内购买内网负载均衡实例的时候需要指定子网ID，内网负载均衡实例的VIP将从这个子网中产生。其他情况不用填写该字段。
        # @type SubnetId: String
        # @param ProjectId: 负载均衡所属项目ID。不填则属于默认项目。
        # @type ProjectId: Integer
        # @param GoodsNum: 购买黑石负载均衡实例的数量。默认值为1, 最大值为20。
        # @type GoodsNum: Integer
        # @param PayMode: 黑石负载均衡的计费模式，取值为flow和bandwidth，其中flow模式表示流量模式，bandwidth表示带宽模式。默认值为flow。
        # @type PayMode: String
        # @param TgwSetType: 负载均衡对应的TGW集群类别，取值为tunnel、fullnat或dnat。tunnel表示隧道集群，fullnat表示FULLNAT集群（普通外网负载均衡），dnat表示DNAT集群（增强型外网负载均衡）。默认值为fullnat。如需获取client IP，可以选择 tunnel 模式，fullnat 模式（tcp 通过toa 获取），dnat 模式。
        # @type TgwSetType: String
        # @param Exclusive: 负载均衡的独占类别，取值为0表示非独占，1表示四层独占，2表示七层独占，3表示四层和七层独占，4表示共享容灾。
        # @type Exclusive: Integer
        # @param SpecifiedVips: 指定的VIP，如果指定，则数量必须与goodsNum一致。如果不指定，则由后台分配随机VIP。
        # @type SpecifiedVips: Array
        # @param BzConf: （未全地域开放）保障型负载均衡设定参数，如果类别选择保障型则需传入此参数。
        # @type BzConf: :class:`Tencentcloud::Bmlb.v20180625.models.CreateLoadBalancerBzConf`
        # @param IpProtocolType: IP协议类型。可取的值为“ipv4”或“ipv6”。
        # @type IpProtocolType: String

        attr_accessor :VpcId, :LoadBalancerType, :SubnetId, :ProjectId, :GoodsNum, :PayMode, :TgwSetType, :Exclusive, :SpecifiedVips, :BzConf, :IpProtocolType

        def initialize(vpcid=nil, loadbalancertype=nil, subnetid=nil, projectid=nil, goodsnum=nil, paymode=nil, tgwsettype=nil, exclusive=nil, specifiedvips=nil, bzconf=nil, ipprotocoltype=nil)
          @VpcId = vpcid
          @LoadBalancerType = loadbalancertype
          @SubnetId = subnetid
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @PayMode = paymode
          @TgwSetType = tgwsettype
          @Exclusive = exclusive
          @SpecifiedVips = specifiedvips
          @BzConf = bzconf
          @IpProtocolType = ipprotocoltype
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @LoadBalancerType = params['LoadBalancerType']
          @SubnetId = params['SubnetId']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @PayMode = params['PayMode']
          @TgwSetType = params['TgwSetType']
          @Exclusive = params['Exclusive']
          @SpecifiedVips = params['SpecifiedVips']
          unless params['BzConf'].nil?
            @BzConf = CreateLoadBalancerBzConf.new
            @BzConf.deserialize(params['BzConf'])
          end
          @IpProtocolType = params['IpProtocolType']
        end
      end

      # CreateLoadBalancers返回参数结构体
      class CreateLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 创建的黑石负载均衡实例ID。
        # @type LoadBalancerIds: Array
        # @param TaskId: 创建负载均衡的异步任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerIds, :TaskId, :RequestId

        def initialize(loadbalancerids=nil, taskid=nil, requestid=nil)
          @LoadBalancerIds = loadbalancerids
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateTrafficMirror请求参数结构体
      class CreateTrafficMirrorRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 流量镜像实例别名。
        # @type Alias: String
        # @param VpcId: 流量镜像实例所属的私有网络ID，形如：vpc-xxx。
        # @type VpcId: String

        attr_accessor :Alias, :VpcId

        def initialize(_alias=nil, vpcid=nil)
          @Alias = _alias
          @VpcId = vpcid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @VpcId = params['VpcId']
        end
      end

      # CreateTrafficMirror返回参数结构体
      class CreateTrafficMirrorResponse < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID
        # @type TrafficMirrorId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TrafficMirrorId, :RequestId

        def initialize(trafficmirrorid=nil, requestid=nil)
          @TrafficMirrorId = trafficmirrorid
          @RequestId = requestid
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteL7Domains请求参数结构体
      class DeleteL7DomainsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainIds: 转发域名实例ID列表，可通过接口DescribeL7Rules查询。
        # @type DomainIds: Array

        attr_accessor :LoadBalancerId, :ListenerId, :DomainIds

        def initialize(loadbalancerid=nil, listenerid=nil, domainids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainIds = domainids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainIds = params['DomainIds']
        end
      end

      # DeleteL7Domains返回参数结构体
      class DeleteL7DomainsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # DeleteL7Rules请求参数结构体
      class DeleteL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationIds: 转发路径实例ID列表，可通过接口DescribeL7Rules查询。
        # @type LocationIds: Array

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId, :LocationIds

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil, locationids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
          @LocationIds = locationids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
          @LocationIds = params['LocationIds']
        end
      end

      # DeleteL7Rules返回参数结构体
      class DeleteL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # DeleteListeners请求参数结构体
      class DeleteListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerIds: 待删除的负载均衡四层和七层监听器ID列表，可通过接口DescribeL4Listeners和DescribeL7Listeners查询。目前同时只能删除一种类型的监听器，并且删除七层监听器的数量上限为一个。
        # @type ListenerIds: Array

        attr_accessor :LoadBalancerId, :ListenerIds

        def initialize(loadbalancerid=nil, listenerids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # DeleteListeners返回参数结构体
      class DeleteListenersResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # DeleteLoadBalancer请求参数结构体
      class DeleteLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String

        attr_accessor :LoadBalancerId

        def initialize(loadbalancerid=nil)
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # DeleteLoadBalancer返回参数结构体
      class DeleteLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # DeleteTrafficMirror请求参数结构体
      class DeleteTrafficMirrorRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorIds: 流量镜像实例ID数组，可以批量删除，每次删除上限为20
        # @type TrafficMirrorIds: Array

        attr_accessor :TrafficMirrorIds

        def initialize(trafficmirrorids=nil)
          @TrafficMirrorIds = trafficmirrorids
        end

        def deserialize(params)
          @TrafficMirrorIds = params['TrafficMirrorIds']
        end
      end

      # DeleteTrafficMirror返回参数结构体
      class DeleteTrafficMirrorResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # DescribeCertDetail请求参数结构体
      class DescribeCertDetailRequest < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID。
        # @type CertId: String

        attr_accessor :CertId

        def initialize(certid=nil)
          @CertId = certid
        end

        def deserialize(params)
          @CertId = params['CertId']
        end
      end

      # DescribeCertDetail返回参数结构体
      class DescribeCertDetailResponse < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID。
        # @type CertId: String
        # @param CertName: 证书名称。
        # @type CertName: String
        # @param CertType: 证书类型（SVR=服务器证书，CA=客户端证书）。
        # @type CertType: String
        # @param CertContent: 证书内容。
        # @type CertContent: String
        # @param CertDomain: 证书主域名。
        # @type CertDomain: String
        # @param CertSubjectDomain: 证书子域名列表。
        # @type CertSubjectDomain: Array
        # @param CertUploadTime: 证书上传时间。
        # @type CertUploadTime: String
        # @param CertBeginTime: 证书生效时间。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。
        # @type CertEndTime: String
        # @param CertLoadBalancerSet: 该证书关联的黑石负载均衡对象列表。
        # @type CertLoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertId, :CertName, :CertType, :CertContent, :CertDomain, :CertSubjectDomain, :CertUploadTime, :CertBeginTime, :CertEndTime, :CertLoadBalancerSet, :RequestId

        def initialize(certid=nil, certname=nil, certtype=nil, certcontent=nil, certdomain=nil, certsubjectdomain=nil, certuploadtime=nil, certbegintime=nil, certendtime=nil, certloadbalancerset=nil, requestid=nil)
          @CertId = certid
          @CertName = certname
          @CertType = certtype
          @CertContent = certcontent
          @CertDomain = certdomain
          @CertSubjectDomain = certsubjectdomain
          @CertUploadTime = certuploadtime
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @CertLoadBalancerSet = certloadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          @CertId = params['CertId']
          @CertName = params['CertName']
          @CertType = params['CertType']
          @CertContent = params['CertContent']
          @CertDomain = params['CertDomain']
          @CertSubjectDomain = params['CertSubjectDomain']
          @CertUploadTime = params['CertUploadTime']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          unless params['CertLoadBalancerSet'].nil?
            @CertLoadBalancerSet = []
            params['CertLoadBalancerSet'].each do |i|
              certdetailloadbalancer_tmp = CertDetailLoadBalancer.new
              certdetailloadbalancer_tmp.deserialize(i)
              @CertLoadBalancerSet << certdetailloadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDevicesBindInfo请求参数结构体
      class DescribeDevicesBindInfoRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 黑石私有网络唯一ID。
        # @type VpcId: String
        # @param InstanceIds: 主机ID或虚机IP列表，可用于获取绑定了该主机的负载均衡列表。
        # @type InstanceIds: Array

        attr_accessor :VpcId, :InstanceIds

        def initialize(vpcid=nil, instanceids=nil)
          @VpcId = vpcid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeDevicesBindInfo返回参数结构体
      class DescribeDevicesBindInfoResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerSet: 返回的负载均衡绑定信息。
        # @type LoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerSet, :RequestId

        def initialize(loadbalancerset=nil, requestid=nil)
          @LoadBalancerSet = loadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              devicesbindinfoloadbalancer_tmp = DevicesBindInfoLoadBalancer.new
              devicesbindinfoloadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << devicesbindinfoloadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 待查询四层监听器绑定的主机信息。
      class DescribeL4Backend < TencentCloud::Common::AbstractModel
        # @param Port: 待绑定的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 黑石物理机的主机ID。
        # @type InstanceId: String

        attr_accessor :Port, :InstanceId

        def initialize(port=nil, instanceid=nil)
          @Port = port
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeL4Backends请求参数结构体
      class DescribeL4BackendsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        # @type ListenerId: String
        # @param BackendSet: 待查询的主机信息。
        # @type BackendSet: Array

        attr_accessor :LoadBalancerId, :ListenerId, :BackendSet

        def initialize(loadbalancerid=nil, listenerid=nil, backendset=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @BackendSet = backendset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              describel4backend_tmp = DescribeL4Backend.new
              describel4backend_tmp.deserialize(i)
              @BackendSet << describel4backend_tmp
            end
          end
        end
      end

      # DescribeL4Backends返回参数结构体
      class DescribeL4BackendsResponse < TencentCloud::Common::AbstractModel
        # @param BackendSet: 返回的绑定关系列表。
        # @type BackendSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackendSet, :RequestId

        def initialize(backendset=nil, requestid=nil)
          @BackendSet = backendset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              l4backend_tmp = L4Backend.new
              l4backend_tmp.deserialize(i)
              @BackendSet << l4backend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL4ListenerInfo请求参数结构体
      class DescribeL4ListenerInfoRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param SearchKey: 查找的键值，可用于模糊查找该名称的监听器。
        # @type SearchKey: String
        # @param InstanceIds: 主机ID或虚机IP列表，可用于获取绑定了该主机的监听器。
        # @type InstanceIds: Array

        attr_accessor :LoadBalancerId, :SearchKey, :InstanceIds

        def initialize(loadbalancerid=nil, searchkey=nil, instanceids=nil)
          @LoadBalancerId = loadbalancerid
          @SearchKey = searchkey
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SearchKey = params['SearchKey']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeL4ListenerInfo返回参数结构体
      class DescribeL4ListenerInfoResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 返回的四层监听器列表。
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :RequestId

        def initialize(listenerset=nil, requestid=nil)
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              l4listenerinfo_tmp = L4ListenerInfo.new
              l4listenerinfo_tmp.deserialize(i)
              @ListenerSet << l4listenerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL4Listeners请求参数结构体
      class DescribeL4ListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerIds: 四层监听器实例ID数组，可通过接口DescribeL4Listeners查询。
        # @type ListenerIds: Array

        attr_accessor :LoadBalancerId, :ListenerIds

        def initialize(loadbalancerid=nil, listenerids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # DescribeL4Listeners返回参数结构体
      class DescribeL4ListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 监听器信息数组。
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :RequestId

        def initialize(listenerset=nil, requestid=nil)
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              l4listener_tmp = L4Listener.new
              l4listener_tmp.deserialize(i)
              @ListenerSet << l4listener_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7Backends请求参数结构体
      class DescribeL7BackendsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationId: 转发路径实例ID，可通过接口DescribeL7Rules查询。
        # @type LocationId: String
        # @param QueryType: 查询条件，传'all'则查询所有与规则绑定的主机信息。如果为all时，DomainId和LocationId参数没有意义不必传入，否则DomainId和LocationId参数必须传入。
        # @type QueryType: String

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId, :LocationId, :QueryType

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil, locationid=nil, querytype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
          @LocationId = locationid
          @QueryType = querytype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
          @LocationId = params['LocationId']
          @QueryType = params['QueryType']
        end
      end

      # DescribeL7Backends返回参数结构体
      class DescribeL7BackendsResponse < TencentCloud::Common::AbstractModel
        # @param BackendSet: 返回的绑定关系列表。
        # @type BackendSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackendSet, :RequestId

        def initialize(backendset=nil, requestid=nil)
          @BackendSet = backendset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              l7backend_tmp = L7Backend.new
              l7backend_tmp.deserialize(i)
              @BackendSet << l7backend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7ListenerInfo请求参数结构体
      class DescribeL7ListenerInfoRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param SearchKey: 查找的键值，可用于模糊查找有该转发域名的监听器。
        # @type SearchKey: String
        # @param InstanceIds: 主机ID或虚机IP列表，可用于获取绑定了该主机的监听器。
        # @type InstanceIds: Array
        # @param IfGetBackendInfo: 是否获取转发规则下的主机信息。默认为0，不获取。
        # @type IfGetBackendInfo: Integer

        attr_accessor :LoadBalancerId, :SearchKey, :InstanceIds, :IfGetBackendInfo

        def initialize(loadbalancerid=nil, searchkey=nil, instanceids=nil, ifgetbackendinfo=nil)
          @LoadBalancerId = loadbalancerid
          @SearchKey = searchkey
          @InstanceIds = instanceids
          @IfGetBackendInfo = ifgetbackendinfo
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SearchKey = params['SearchKey']
          @InstanceIds = params['InstanceIds']
          @IfGetBackendInfo = params['IfGetBackendInfo']
        end
      end

      # DescribeL7ListenerInfo返回参数结构体
      class DescribeL7ListenerInfoResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 返回的七层监听器列表。
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :RequestId

        def initialize(listenerset=nil, requestid=nil)
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              l7listenerinfo_tmp = L7ListenerInfo.new
              l7listenerinfo_tmp.deserialize(i)
              @ListenerSet << l7listenerinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7ListenersEx请求参数结构体
      class DescribeL7ListenersExRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 返回的监听器中标识是否绑定在此流量镜像中。
        # @type TrafficMirrorId: String
        # @param VpcId: 待获取监听器所在的VPC的ID。
        # @type VpcId: String
        # @param Offset: 此VPC中获取负载均衡的偏移。
        # @type Offset: Integer
        # @param Limit: 此VPC中获取负载均衡的数量。
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # LoadBalancerId - String - （过滤条件）负载均衡ID。
        # LoadBalancerName - String - （过滤条件）负载均衡名称。
        # Vip - String - （过滤条件）VIP。
        # ListenerId - String - （过滤条件）监听器ID。
        # ListenerName -  String - （过滤条件）监听器名称。
        # Protocol -  String - （过滤条件）七层协议。
        # LoadBalancerPort -  String - （过滤条件）监听器端口。
        # @type Filters: Array

        attr_accessor :TrafficMirrorId, :VpcId, :Offset, :Limit, :Filters

        def initialize(trafficmirrorid=nil, vpcid=nil, offset=nil, limit=nil, filters=nil)
          @TrafficMirrorId = trafficmirrorid
          @VpcId = vpcid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @VpcId = params['VpcId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeL7ListenersEx返回参数结构体
      class DescribeL7ListenersExResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 此指定VPC中负载均衡的总数。
        # @type TotalCount: Integer
        # @param ListenerSet: 符合条件的监听器。
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ListenerSet, :RequestId

        def initialize(totalcount=nil, listenerset=nil, requestid=nil)
          @TotalCount = totalcount
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              l7exlistener_tmp = L7ExListener.new
              l7exlistener_tmp.deserialize(i)
              @ListenerSet << l7exlistener_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7Listeners请求参数结构体
      class DescribeL7ListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerIds: 七层监听器实例ID列表，可通过接口DescribeL7Listeners查询。
        # @type ListenerIds: Array

        attr_accessor :LoadBalancerId, :ListenerIds

        def initialize(loadbalancerid=nil, listenerids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # DescribeL7Listeners返回参数结构体
      class DescribeL7ListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 返回的七层监听器列表。
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :RequestId

        def initialize(listenerset=nil, requestid=nil)
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              l7listener_tmp = L7Listener.new
              l7listener_tmp.deserialize(i)
              @ListenerSet << l7listener_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7Rules请求参数结构体
      class DescribeL7RulesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainIds: 转发域名ID列表，可通过接口DescribeL7Rules查询。
        # @type DomainIds: Array

        attr_accessor :LoadBalancerId, :ListenerId, :DomainIds

        def initialize(loadbalancerid=nil, listenerid=nil, domainids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainIds = domainids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainIds = params['DomainIds']
        end
      end

      # DescribeL7Rules返回参数结构体
      class DescribeL7RulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleSet: 返回的转发规则列表。
        # @type RuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleSet, :RequestId

        def initialize(ruleset=nil, requestid=nil)
          @RuleSet = ruleset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              l7rule_tmp = L7Rule.new
              l7rule_tmp.deserialize(i)
              @RuleSet << l7rule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerPortInfo请求参数结构体
      class DescribeLoadBalancerPortInfoRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String

        attr_accessor :LoadBalancerId

        def initialize(loadbalancerid=nil)
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # DescribeLoadBalancerPortInfo返回参数结构体
      class DescribeLoadBalancerPortInfoResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 返回的监听器列表（四层和七层）。
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :RequestId

        def initialize(listenerset=nil, requestid=nil)
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              loadbalancerportinfolistener_tmp = LoadBalancerPortInfoListener.new
              loadbalancerportinfolistener_tmp.deserialize(i)
              @ListenerSet << loadbalancerportinfolistener_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerTaskResult请求参数结构体
      class DescribeLoadBalancerTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。由具体的异步操作接口提供。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeLoadBalancerTaskResult返回参数结构体
      class DescribeLoadBalancerTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务当前状态。0：成功，1：失败，2：进行中。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancers请求参数结构体
      class DescribeLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡器ID数组
        # @type LoadBalancerIds: Array
        # @param LoadBalancerType: 负载均衡的类型 : open表示公网LB类型，internal表示内网LB类型
        # @type LoadBalancerType: String
        # @param LoadBalancerName: 负载均衡器名称
        # @type LoadBalancerName: String
        # @param Domain: 负载均衡域名。规则：1-60个小写英文字母、数字、点号“.”或连接线“-”。内网类型的负载均衡不能配置该字段
        # @type Domain: String
        # @param LoadBalancerVips: 负载均衡获得的公网IP地址,支持多个
        # @type LoadBalancerVips: Array
        # @param Offset: 数据偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数据长度，默认为20
        # @type Limit: Integer
        # @param SearchKey: 模糊查找名称、域名、VIP
        # @type SearchKey: String
        # @param OrderBy: 排序字段，支持：loadBalancerName,createTime,domain,loadBalancerType
        # @type OrderBy: String
        # @param OrderType: 1倒序，0顺序，默认顺序
        # @type OrderType: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Exclusive: 是否筛选独占集群，0表示非独占集群，1表示四层独占集群，2表示七层独占集群，3表示四层和七层独占集群，4表示共享容灾
        # @type Exclusive: Integer
        # @param TgwSetType: 该负载均衡对应的tgw集群（fullnat,tunnel,dnat）
        # @type TgwSetType: String
        # @param VpcId: 该负载均衡对应的所在的私有网络ID
        # @type VpcId: String
        # @param QueryType: 'CONFLIST' 查询带confId的LB列表，'CONFID' 查询某个confId绑定的LB列表
        # @type QueryType: String
        # @param ConfId: 个性化配置ID
        # @type ConfId: String

        attr_accessor :LoadBalancerIds, :LoadBalancerType, :LoadBalancerName, :Domain, :LoadBalancerVips, :Offset, :Limit, :SearchKey, :OrderBy, :OrderType, :ProjectId, :Exclusive, :TgwSetType, :VpcId, :QueryType, :ConfId

        def initialize(loadbalancerids=nil, loadbalancertype=nil, loadbalancername=nil, domain=nil, loadbalancervips=nil, offset=nil, limit=nil, searchkey=nil, orderby=nil, ordertype=nil, projectid=nil, exclusive=nil, tgwsettype=nil, vpcid=nil, querytype=nil, confid=nil)
          @LoadBalancerIds = loadbalancerids
          @LoadBalancerType = loadbalancertype
          @LoadBalancerName = loadbalancername
          @Domain = domain
          @LoadBalancerVips = loadbalancervips
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @OrderBy = orderby
          @OrderType = ordertype
          @ProjectId = projectid
          @Exclusive = exclusive
          @TgwSetType = tgwsettype
          @VpcId = vpcid
          @QueryType = querytype
          @ConfId = confid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @LoadBalancerType = params['LoadBalancerType']
          @LoadBalancerName = params['LoadBalancerName']
          @Domain = params['Domain']
          @LoadBalancerVips = params['LoadBalancerVips']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
          @ProjectId = params['ProjectId']
          @Exclusive = params['Exclusive']
          @TgwSetType = params['TgwSetType']
          @VpcId = params['VpcId']
          @QueryType = params['QueryType']
          @ConfId = params['ConfId']
        end
      end

      # DescribeLoadBalancers返回参数结构体
      class DescribeLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerSet: 返回负载均衡信息列表。
        # @type LoadBalancerSet: Array
        # @param TotalCount: 符合条件的负载均衡总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerSet, :TotalCount, :RequestId

        def initialize(loadbalancerset=nil, totalcount=nil, requestid=nil)
          @LoadBalancerSet = loadbalancerset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancer_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrafficMirrorListeners请求参数结构体
      class DescribeTrafficMirrorListenersRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param Offset: 分页的偏移量，也即从第几条记录开始查询
        # @type Offset: Integer
        # @param Limit: 单次查询返回的条目数，默认值：500。
        # @type Limit: Integer
        # @param SearchLoadBalancerIds: 待搜索的负载均衡Id。
        # @type SearchLoadBalancerIds: Array
        # @param SearchLoadBalancerNames: 待搜索的负载均衡名称。
        # @type SearchLoadBalancerNames: Array
        # @param SearchVips: 待搜索的Vip。
        # @type SearchVips: Array
        # @param SearchListenerIds: 待搜索的监听器ID。
        # @type SearchListenerIds: Array
        # @param SearchListenerNames: 待搜索的监听器名称。
        # @type SearchListenerNames: Array
        # @param SearchProtocols: 待搜索的协议名称。
        # @type SearchProtocols: Array
        # @param SearchLoadBalancerPorts: 待搜索的端口。
        # @type SearchLoadBalancerPorts: Array

        attr_accessor :TrafficMirrorId, :Offset, :Limit, :SearchLoadBalancerIds, :SearchLoadBalancerNames, :SearchVips, :SearchListenerIds, :SearchListenerNames, :SearchProtocols, :SearchLoadBalancerPorts

        def initialize(trafficmirrorid=nil, offset=nil, limit=nil, searchloadbalancerids=nil, searchloadbalancernames=nil, searchvips=nil, searchlistenerids=nil, searchlistenernames=nil, searchprotocols=nil, searchloadbalancerports=nil)
          @TrafficMirrorId = trafficmirrorid
          @Offset = offset
          @Limit = limit
          @SearchLoadBalancerIds = searchloadbalancerids
          @SearchLoadBalancerNames = searchloadbalancernames
          @SearchVips = searchvips
          @SearchListenerIds = searchlistenerids
          @SearchListenerNames = searchlistenernames
          @SearchProtocols = searchprotocols
          @SearchLoadBalancerPorts = searchloadbalancerports
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchLoadBalancerIds = params['SearchLoadBalancerIds']
          @SearchLoadBalancerNames = params['SearchLoadBalancerNames']
          @SearchVips = params['SearchVips']
          @SearchListenerIds = params['SearchListenerIds']
          @SearchListenerNames = params['SearchListenerNames']
          @SearchProtocols = params['SearchProtocols']
          @SearchLoadBalancerPorts = params['SearchLoadBalancerPorts']
        end
      end

      # DescribeTrafficMirrorListeners返回参数结构体
      class DescribeTrafficMirrorListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerSet: 监听器列表。
        # @type ListenerSet: Array
        # @param TotalCount: 监听器总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerSet, :TotalCount, :RequestId

        def initialize(listenerset=nil, totalcount=nil, requestid=nil)
          @ListenerSet = listenerset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              trafficmirrorlistener_tmp = TrafficMirrorListener.new
              trafficmirrorlistener_tmp.deserialize(i)
              @ListenerSet << trafficmirrorlistener_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 流量镜像进行健康检查的接收机信息。
      class DescribeTrafficMirrorReceiver < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机实例ID。
        # @type InstanceId: String
        # @param Port: 物理机绑定的端口。
        # @type Port: Integer

        attr_accessor :InstanceId, :Port

        def initialize(instanceid=nil, port=nil)
          @InstanceId = instanceid
          @Port = port
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Port = params['Port']
        end
      end

      # DescribeTrafficMirrorReceiverHealthStatus请求参数结构体
      class DescribeTrafficMirrorReceiverHealthStatusRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 查询所在的流量镜像ID。
        # @type TrafficMirrorId: String
        # @param ReceiverSet: 流量镜像接收机实例ID和端口数组。
        # @type ReceiverSet: Array

        attr_accessor :TrafficMirrorId, :ReceiverSet

        def initialize(trafficmirrorid=nil, receiverset=nil)
          @TrafficMirrorId = trafficmirrorid
          @ReceiverSet = receiverset
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          unless params['ReceiverSet'].nil?
            @ReceiverSet = []
            params['ReceiverSet'].each do |i|
              describetrafficmirrorreceiver_tmp = DescribeTrafficMirrorReceiver.new
              describetrafficmirrorreceiver_tmp.deserialize(i)
              @ReceiverSet << describetrafficmirrorreceiver_tmp
            end
          end
        end
      end

      # DescribeTrafficMirrorReceiverHealthStatus返回参数结构体
      class DescribeTrafficMirrorReceiverHealthStatusResponse < TencentCloud::Common::AbstractModel
        # @param ReceiversStatusSet: 内网IP和端口对应的状态。
        # @type ReceiversStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReceiversStatusSet, :RequestId

        def initialize(receiversstatusset=nil, requestid=nil)
          @ReceiversStatusSet = receiversstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReceiversStatusSet'].nil?
            @ReceiversStatusSet = []
            params['ReceiversStatusSet'].each do |i|
              trafficmirrorreciversstatus_tmp = TrafficMirrorReciversStatus.new
              trafficmirrorreciversstatus_tmp.deserialize(i)
              @ReceiversStatusSet << trafficmirrorreciversstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrafficMirrorReceivers请求参数结构体
      class DescribeTrafficMirrorReceiversRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param InstanceIds: 接收机黑石物理机实例ID数组。
        # @type InstanceIds: Array
        # @param Ports: 接收机接收端口数组。
        # @type Ports: Array
        # @param Weights: 接收机实例权重数组。
        # @type Weights: Array
        # @param Offset: 分页的偏移量，也即从第几条记录开始查询
        # @type Offset: Integer
        # @param Limit: 单次查询返回的条目数，默认值：500。
        # @type Limit: Integer
        # @param VagueStr: 搜索instance或者alias
        # @type VagueStr: String
        # @param VagueIp: 搜索IP
        # @type VagueIp: String

        attr_accessor :TrafficMirrorId, :InstanceIds, :Ports, :Weights, :Offset, :Limit, :VagueStr, :VagueIp

        def initialize(trafficmirrorid=nil, instanceids=nil, ports=nil, weights=nil, offset=nil, limit=nil, vaguestr=nil, vagueip=nil)
          @TrafficMirrorId = trafficmirrorid
          @InstanceIds = instanceids
          @Ports = ports
          @Weights = weights
          @Offset = offset
          @Limit = limit
          @VagueStr = vaguestr
          @VagueIp = vagueip
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @InstanceIds = params['InstanceIds']
          @Ports = params['Ports']
          @Weights = params['Weights']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @VagueStr = params['VagueStr']
          @VagueIp = params['VagueIp']
        end
      end

      # DescribeTrafficMirrorReceivers返回参数结构体
      class DescribeTrafficMirrorReceiversResponse < TencentCloud::Common::AbstractModel
        # @param ReceiverSet: 接收机列表，具体结构描述如data结构所示。
        # @type ReceiverSet: Array
        # @param TotalCount: 接收机总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReceiverSet, :TotalCount, :RequestId

        def initialize(receiverset=nil, totalcount=nil, requestid=nil)
          @ReceiverSet = receiverset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReceiverSet'].nil?
            @ReceiverSet = []
            params['ReceiverSet'].each do |i|
              trafficmirrorreceiver_tmp = TrafficMirrorReceiver.new
              trafficmirrorreceiver_tmp.deserialize(i)
              @ReceiverSet << trafficmirrorreceiver_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrafficMirrors请求参数结构体
      class DescribeTrafficMirrorsRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorIds: 流量镜像实例ID的数组，支持批量查询
        # @type TrafficMirrorIds: Array
        # @param Aliases: 流量镜像实例别名数组。
        # @type Aliases: Array
        # @param VpcIds: 流量镜像实例所属的私有网络ID数组，形如：vpc-xxx。
        # @type VpcIds: Array
        # @param Offset: 分页的偏移量，也即从第几条记录开始查询
        # @type Offset: Integer
        # @param Limit: 单次查询返回的条目数，默认值：500。
        # @type Limit: Integer
        # @param OrderField: 排序字段。trafficMirrorId或者createTime。
        # @type OrderField: String
        # @param Order: 排序方式，取值：0:增序(默认)，1:降序
        # @type Order: Integer
        # @param SearchKey: 模糊匹配trafficMirrorId或者alias字段。
        # @type SearchKey: String

        attr_accessor :TrafficMirrorIds, :Aliases, :VpcIds, :Offset, :Limit, :OrderField, :Order, :SearchKey

        def initialize(trafficmirrorids=nil, aliases=nil, vpcids=nil, offset=nil, limit=nil, orderfield=nil, order=nil, searchkey=nil)
          @TrafficMirrorIds = trafficmirrorids
          @Aliases = aliases
          @VpcIds = vpcids
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @SearchKey = searchkey
        end

        def deserialize(params)
          @TrafficMirrorIds = params['TrafficMirrorIds']
          @Aliases = params['Aliases']
          @VpcIds = params['VpcIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeTrafficMirrors返回参数结构体
      class DescribeTrafficMirrorsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 流量镜像总数。
        # @type TotalCount: Integer
        # @param TrafficMirrorSet: 对象数组。数组元素为流量镜像信息，具体结构描述如list结构所示。
        # @type TrafficMirrorSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TrafficMirrorSet, :RequestId

        def initialize(totalcount=nil, trafficmirrorset=nil, requestid=nil)
          @TotalCount = totalcount
          @TrafficMirrorSet = trafficmirrorset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TrafficMirrorSet'].nil?
            @TrafficMirrorSet = []
            params['TrafficMirrorSet'].each do |i|
              trafficmirror_tmp = TrafficMirror.new
              trafficmirror_tmp.deserialize(i)
              @TrafficMirrorSet << trafficmirror_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取设备绑定信息时返回的所绑定的主机信息。
      class DevicesBindInfoBackend < TencentCloud::Common::AbstractModel
        # @param InstanceId: 黑石物理机的主机ID、托管主机ID或虚拟机IP。
        # @type InstanceId: String
        # @param Port: 主机端口。
        # @type Port: Integer

        attr_accessor :InstanceId, :Port

        def initialize(instanceid=nil, port=nil)
          @InstanceId = instanceid
          @Port = port
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Port = params['Port']
        end
      end

      # 获取设备绑定信息时返回的四层监听器信息。
      class DevicesBindInfoL4Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 七层监听器实例ID。
        # @type ListenerId: String
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param LoadBalancerPort: 七层监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param BackendSet: 该转发路径所绑定的主机列表。
        # @type BackendSet: Array

        attr_accessor :ListenerId, :Protocol, :LoadBalancerPort, :BackendSet

        def initialize(listenerid=nil, protocol=nil, loadbalancerport=nil, backendset=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @BackendSet = backendset
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              devicesbindinfobackend_tmp = DevicesBindInfoBackend.new
              devicesbindinfobackend_tmp.deserialize(i)
              @BackendSet << devicesbindinfobackend_tmp
            end
          end
        end
      end

      # 获取设备绑定信息时返回的七层监听器信息。
      class DevicesBindInfoL7Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 七层监听器实例ID。
        # @type ListenerId: String
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param LoadBalancerPort: 七层监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param RuleSet: 返回的转发规则列表。
        # @type RuleSet: Array

        attr_accessor :ListenerId, :Protocol, :LoadBalancerPort, :RuleSet

        def initialize(listenerid=nil, protocol=nil, loadbalancerport=nil, ruleset=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @RuleSet = ruleset
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              devicesbindinforule_tmp = DevicesBindInfoRule.new
              devicesbindinforule_tmp.deserialize(i)
              @RuleSet << devicesbindinforule_tmp
            end
          end
        end
      end

      # 获取设备绑定信息时返回的设备被绑定所在的负载均衡信息。
      class DevicesBindInfoLoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param AppId: 开发商AppId。
        # @type AppId: Integer
        # @param ProjectId: 负载均衡所属的项目ID。
        # @type ProjectId: Integer
        # @param VpcId: 黑石私有网络唯一ID。
        # @type VpcId: String
        # @param Vip: 负载均衡的IP地址。
        # @type Vip: String
        # @param TgwSetType: 负载均衡对应的TGW集群类别，取值为tunnel或fullnat。tunnel表示隧道集群，fullnat表示FULLNAT集群。
        # @type TgwSetType: String
        # @param Exclusive: 是否独占TGW集群。
        # @type Exclusive: Integer
        # @param L4ListenerSet: 具有该绑定关系的四层监听器列表。
        # @type L4ListenerSet: Array
        # @param L7ListenerSet: 具有该绑定关系的七层监听器列表。
        # @type L7ListenerSet: Array

        attr_accessor :LoadBalancerId, :AppId, :ProjectId, :VpcId, :Vip, :TgwSetType, :Exclusive, :L4ListenerSet, :L7ListenerSet

        def initialize(loadbalancerid=nil, appid=nil, projectid=nil, vpcid=nil, vip=nil, tgwsettype=nil, exclusive=nil, l4listenerset=nil, l7listenerset=nil)
          @LoadBalancerId = loadbalancerid
          @AppId = appid
          @ProjectId = projectid
          @VpcId = vpcid
          @Vip = vip
          @TgwSetType = tgwsettype
          @Exclusive = exclusive
          @L4ListenerSet = l4listenerset
          @L7ListenerSet = l7listenerset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @AppId = params['AppId']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @Vip = params['Vip']
          @TgwSetType = params['TgwSetType']
          @Exclusive = params['Exclusive']
          unless params['L4ListenerSet'].nil?
            @L4ListenerSet = []
            params['L4ListenerSet'].each do |i|
              devicesbindinfol4listener_tmp = DevicesBindInfoL4Listener.new
              devicesbindinfol4listener_tmp.deserialize(i)
              @L4ListenerSet << devicesbindinfol4listener_tmp
            end
          end
          unless params['L7ListenerSet'].nil?
            @L7ListenerSet = []
            params['L7ListenerSet'].each do |i|
              devicesbindinfol7listener_tmp = DevicesBindInfoL7Listener.new
              devicesbindinfol7listener_tmp.deserialize(i)
              @L7ListenerSet << devicesbindinfol7listener_tmp
            end
          end
        end
      end

      # 获取设备绑定信息时返回的设备所绑定的转发路径信息。
      class DevicesBindInfoLocation < TencentCloud::Common::AbstractModel
        # @param Url: 转发路径。
        # @type Url: String
        # @param LocationId: 转发路径实例ID。
        # @type LocationId: String
        # @param BackendSet: 该转发路径所绑定的主机列表。
        # @type BackendSet: Array

        attr_accessor :Url, :LocationId, :BackendSet

        def initialize(url=nil, locationid=nil, backendset=nil)
          @Url = url
          @LocationId = locationid
          @BackendSet = backendset
        end

        def deserialize(params)
          @Url = params['Url']
          @LocationId = params['LocationId']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              devicesbindinfobackend_tmp = DevicesBindInfoBackend.new
              devicesbindinfobackend_tmp.deserialize(i)
              @BackendSet << devicesbindinfobackend_tmp
            end
          end
        end
      end

      # 获取设备绑定信息时返回的设备所绑定的转发规则信息。
      class DevicesBindInfoRule < TencentCloud::Common::AbstractModel
        # @param Domain: 转发域名。
        # @type Domain: String
        # @param DomainId: 转发域名ID。
        # @type DomainId: String
        # @param LocationSet: 转发路径列表。
        # @type LocationSet: Array

        attr_accessor :Domain, :DomainId, :LocationSet

        def initialize(domain=nil, domainid=nil, locationset=nil)
          @Domain = domain
          @DomainId = domainid
          @LocationSet = locationset
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          unless params['LocationSet'].nil?
            @LocationSet = []
            params['LocationSet'].each do |i|
              devicesbindinfolocation_tmp = DevicesBindInfoLocation.new
              devicesbindinfolocation_tmp.deserialize(i)
              @LocationSet << devicesbindinfolocation_tmp
            end
          end
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 查询四层监听器返回的与监听器绑定关系的主机信息。
      class L4Backend < TencentCloud::Common::AbstractModel
        # @param BindType: 绑定类别（0代表黑石物理机，1代表虚拟机IP）。
        # @type BindType: Integer
        # @param Port: 主机端口。
        # @type Port: Integer
        # @param Weight: 权重。
        # @type Weight: Integer
        # @param Status: 当前绑定关系的健康检查状态（Dead代表不健康，Alive代表健康）。
        # @type Status: String
        # @param InstanceId: 黑石物理机的主机ID。
        # @type InstanceId: String
        # @param Alias: 黑石物理机的别名。
        # @type Alias: String
        # @param LanIp: 主机IP。
        # @type LanIp: String
        # @param Operates: 黑石物理机当前可以执行的操作。
        # @type Operates: Array
        # @param ProbePort: 主机探测端口。
        # @type ProbePort: Integer

        attr_accessor :BindType, :Port, :Weight, :Status, :InstanceId, :Alias, :LanIp, :Operates, :ProbePort

        def initialize(bindtype=nil, port=nil, weight=nil, status=nil, instanceid=nil, _alias=nil, lanip=nil, operates=nil, probeport=nil)
          @BindType = bindtype
          @Port = port
          @Weight = weight
          @Status = status
          @InstanceId = instanceid
          @Alias = _alias
          @LanIp = lanip
          @Operates = operates
          @ProbePort = probeport
        end

        def deserialize(params)
          @BindType = params['BindType']
          @Port = params['Port']
          @Weight = params['Weight']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @LanIp = params['LanIp']
          @Operates = params['Operates']
          @ProbePort = params['ProbePort']
        end
      end

      # 查询四层监听器时返回的四层监听器信息。
      class L4Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ListenerName: 用户自定义的监听器名称。
        # @type ListenerName: String
        # @param Protocol: 负载均衡实例监听器协议类型，可选值tcp，udp。
        # @type Protocol: String
        # @param LoadBalancerPort: 负载均衡监听器的监听接口，可选值1~65535。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 用于计费模式为固定带宽计费，指定监听器最大带宽值，可选值：0-1000，单位：Mbps。
        # @type Bandwidth: Integer
        # @param ListenerType: 监听器的类别：L4Listener（四层监听器），L7Listener（七层监听器）。
        # @type ListenerType: String
        # @param SessionExpire: 会话保持时间。单位：秒
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启了检查：1（开启）、0（关闭）。
        # @type HealthSwitch: Integer
        # @param TimeOut: 响应超时时间，单位：秒。
        # @type TimeOut: Integer
        # @param IntervalTime: 检查间隔，单位：秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 负载均衡监听器健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        # @type HealthNum: Integer
        # @param UnhealthNum: 负载均衡监听器不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发不正常，可选值：2-10，单位：次。
        # @type UnhealthNum: Integer
        # @param CustomHealthSwitch: 是否开启自定义健康检查：1（开启）、0（关闭）。默认值0，表示关闭。（该字段在健康检查开启的情况下才生效）
        # @type CustomHealthSwitch: Integer
        # @param InputType: 自定义健康探测内容类型，可选值：text（文本）、hexadecimal（十六进制）。
        # @type InputType: String
        # @param LineSeparatorType: 探测内容类型为文本方式时，针对请求文本中换行替换方式。可选值：1（替换为LF）、2（替换为CR）、3（替换为LF+CR）。
        # @type LineSeparatorType: Integer
        # @param HealthRequest: 自定义探测请求内容。
        # @type HealthRequest: String
        # @param HealthResponse: 自定义探测返回内容。
        # @type HealthResponse: String
        # @param ToaFlag: 是否开启toa：1（开启）、0（关闭）。
        # @type ToaFlag: Integer
        # @param Status: 监听器当前状态（0代表创建中，1代表正常运行，2代表创建失败，3代表删除中，4代表删除失败）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param BalanceMode: 转发后端服务器调度类型。
        # @type BalanceMode: String

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :ListenerType, :SessionExpire, :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnhealthNum, :CustomHealthSwitch, :InputType, :LineSeparatorType, :HealthRequest, :HealthResponse, :ToaFlag, :Status, :AddTimestamp, :BalanceMode

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, listenertype=nil, sessionexpire=nil, healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, customhealthswitch=nil, inputtype=nil, lineseparatortype=nil, healthrequest=nil, healthresponse=nil, toaflag=nil, status=nil, addtimestamp=nil, balancemode=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @ListenerType = listenertype
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @CustomHealthSwitch = customhealthswitch
          @InputType = inputtype
          @LineSeparatorType = lineseparatortype
          @HealthRequest = healthrequest
          @HealthResponse = healthresponse
          @ToaFlag = toaflag
          @Status = status
          @AddTimestamp = addtimestamp
          @BalanceMode = balancemode
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @ListenerType = params['ListenerType']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @CustomHealthSwitch = params['CustomHealthSwitch']
          @InputType = params['InputType']
          @LineSeparatorType = params['LineSeparatorType']
          @HealthRequest = params['HealthRequest']
          @HealthResponse = params['HealthResponse']
          @ToaFlag = params['ToaFlag']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          @BalanceMode = params['BalanceMode']
        end
      end

      # 查询绑定了某主机的四层监听器时返回的四层监听器信息。
      class L4ListenerInfo < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ListenerName: 用户自定义的监听器名称。
        # @type ListenerName: String
        # @param Protocol: 负载均衡实例监听器协议类型，可选值tcp，udp。
        # @type Protocol: String
        # @param LoadBalancerPort: 负载均衡监听器的监听接口，可选值1~65535。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 用于计费模式为固定带宽计费，指定监听器最大带宽值，可选值：0-1000，单位：Mbps。
        # @type Bandwidth: Integer
        # @param ListenerType: 监听器的类别：L4Listener（四层监听器），L7Listener（七层监听器）。
        # @type ListenerType: String
        # @param SessionExpire: 会话保持时间。单位：秒
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启了检查：1（开启）、0（关闭）。
        # @type HealthSwitch: Integer
        # @param TimeOut: 响应超时时间，单位：秒。
        # @type TimeOut: Integer
        # @param IntervalTime: 检查间隔，单位：秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 负载均衡监听器健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        # @type HealthNum: Integer
        # @param UnhealthNum: 负载均衡监听器不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发不正常，可选值：2-10，单位：次。
        # @type UnhealthNum: Integer
        # @param Status: 监听器当前状态（0代表创建中，1代表正常运行，2代表创建失败，3代表删除中，4代表删除失败）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param CustomHealthSwitch: 是否开启自定义健康检查：1（开启）、0（关闭）。默认值0，表示关闭。（该字段在健康检查开启的情况下才生效）
        # @type CustomHealthSwitch: Integer
        # @param InputType: 自定义健康探测内容类型，可选值：text（文本）、hexadecimal（十六进制）。
        # @type InputType: String
        # @param LineSeparatorType: 探测内容类型为文本方式时，针对请求文本中换行替换方式。可选值：1（替换为LF）、2（替换为CR）、3（替换为LF+CR）。
        # @type LineSeparatorType: Integer
        # @param HealthRequest: 自定义探测请求内容。
        # @type HealthRequest: String
        # @param HealthResponse: 自定义探测返回内容。
        # @type HealthResponse: String
        # @param ToaFlag: 是否开启toa：1（开启）、0（关闭）。
        # @type ToaFlag: Integer
        # @param BalanceMode: 转发后端服务器调度类型。
        # @type BalanceMode: String

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :ListenerType, :SessionExpire, :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnhealthNum, :Status, :AddTimestamp, :CustomHealthSwitch, :InputType, :LineSeparatorType, :HealthRequest, :HealthResponse, :ToaFlag, :BalanceMode

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, listenertype=nil, sessionexpire=nil, healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, status=nil, addtimestamp=nil, customhealthswitch=nil, inputtype=nil, lineseparatortype=nil, healthrequest=nil, healthresponse=nil, toaflag=nil, balancemode=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @ListenerType = listenertype
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @Status = status
          @AddTimestamp = addtimestamp
          @CustomHealthSwitch = customhealthswitch
          @InputType = inputtype
          @LineSeparatorType = lineseparatortype
          @HealthRequest = healthrequest
          @HealthResponse = healthresponse
          @ToaFlag = toaflag
          @BalanceMode = balancemode
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @ListenerType = params['ListenerType']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          @CustomHealthSwitch = params['CustomHealthSwitch']
          @InputType = params['InputType']
          @LineSeparatorType = params['LineSeparatorType']
          @HealthRequest = params['HealthRequest']
          @HealthResponse = params['HealthResponse']
          @ToaFlag = params['ToaFlag']
          @BalanceMode = params['BalanceMode']
        end
      end

      # 获取七层转发路径绑定的主机列表时返回的主机信息。
      class L7Backend < TencentCloud::Common::AbstractModel
        # @param BindType: 绑定类别（0代表黑石物理机，1代表虚拟机IP）。
        # @type BindType: Integer
        # @param Port: 主机端口。
        # @type Port: Integer
        # @param Weight: 权重。
        # @type Weight: Integer
        # @param Status: 当前绑定关系的健康检查状态（Dead代表不健康，Alive代表健康）。
        # @type Status: String
        # @param InstanceId: 黑石物理机的主机ID。
        # @type InstanceId: String
        # @param Alias: 黑石物理机的别名。
        # @type Alias: String
        # @param LanIp: 主机IP。
        # @type LanIp: String
        # @param MgtIp: 黑石物理机的管理IP。
        # @type MgtIp: String
        # @param Operates: 黑石物理机当前可以执行的操作。
        # @type Operates: Array

        attr_accessor :BindType, :Port, :Weight, :Status, :InstanceId, :Alias, :LanIp, :MgtIp, :Operates

        def initialize(bindtype=nil, port=nil, weight=nil, status=nil, instanceid=nil, _alias=nil, lanip=nil, mgtip=nil, operates=nil)
          @BindType = bindtype
          @Port = port
          @Weight = weight
          @Status = status
          @InstanceId = instanceid
          @Alias = _alias
          @LanIp = lanip
          @MgtIp = mgtip
          @Operates = operates
        end

        def deserialize(params)
          @BindType = params['BindType']
          @Port = params['Port']
          @Weight = params['Weight']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @LanIp = params['LanIp']
          @MgtIp = params['MgtIp']
          @Operates = params['Operates']
        end
      end

      # 监听器信息。
      class L7ExListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 绑定的监听器唯一ID。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称。
        # @type ListenerName: String
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param LoadBalancerPort: 监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 当前带宽。
        # @type Bandwidth: Integer
        # @param MaxBandwidth: 带宽上限。
        # @type MaxBandwidth: Integer
        # @param ListenerType: 监听器类型。
        # @type ListenerType: String
        # @param SslMode: 认证方式：0（不认证，用于http），1（单向认证，用于https），2（双向认证，用于https）。
        # @type SslMode: Integer
        # @param CertId: 服务端证书ID。
        # @type CertId: String
        # @param CertCaId: 客户端证书ID。
        # @type CertCaId: String
        # @param AddTimestamp: 添加时间。
        # @type AddTimestamp: String
        # @param LoadBalancerId: 负载均衡名ID。
        # @type LoadBalancerId: String
        # @param VpcName: 私有网络名称。
        # @type VpcName: String
        # @param VpcCidrBlock: 私有网络Cidr。
        # @type VpcCidrBlock: String
        # @param LoadBalancerVips: 负载均衡的VIP。
        # @type LoadBalancerVips: Array
        # @param LoadBalancerName: 负载均衡名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerVipv6s: 负载均衡IPV6的VIP。
        # @type LoadBalancerVipv6s: Array
        # @param IpProtocolType: 支持的IP协议类型。ipv4或者是ipv6。
        # @type IpProtocolType: String
        # @param BindTrafficMirror: 是否绑定在入参指定的流量镜像中。
        # @type BindTrafficMirror: Boolean

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :MaxBandwidth, :ListenerType, :SslMode, :CertId, :CertCaId, :AddTimestamp, :LoadBalancerId, :VpcName, :VpcCidrBlock, :LoadBalancerVips, :LoadBalancerName, :LoadBalancerVipv6s, :IpProtocolType, :BindTrafficMirror

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, maxbandwidth=nil, listenertype=nil, sslmode=nil, certid=nil, certcaid=nil, addtimestamp=nil, loadbalancerid=nil, vpcname=nil, vpccidrblock=nil, loadbalancervips=nil, loadbalancername=nil, loadbalancervipv6s=nil, ipprotocoltype=nil, bindtrafficmirror=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @MaxBandwidth = maxbandwidth
          @ListenerType = listenertype
          @SslMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @AddTimestamp = addtimestamp
          @LoadBalancerId = loadbalancerid
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @LoadBalancerVips = loadbalancervips
          @LoadBalancerName = loadbalancername
          @LoadBalancerVipv6s = loadbalancervipv6s
          @IpProtocolType = ipprotocoltype
          @BindTrafficMirror = bindtrafficmirror
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @MaxBandwidth = params['MaxBandwidth']
          @ListenerType = params['ListenerType']
          @SslMode = params['SslMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @AddTimestamp = params['AddTimestamp']
          @LoadBalancerId = params['LoadBalancerId']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @LoadBalancerVips = params['LoadBalancerVips']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerVipv6s = params['LoadBalancerVipv6s']
          @IpProtocolType = params['IpProtocolType']
          @BindTrafficMirror = params['BindTrafficMirror']
        end
      end

      # 获取黑石负载均衡七层监听器时返回的七层监听器信息。
      class L7Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 七层监听器实例ID。
        # @type ListenerId: String
        # @param ListenerName: 七层监听器名称。
        # @type ListenerName: String
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param LoadBalancerPort: 七层监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 计费模式为按固定带宽方式时监听器的限速值，单位：Mbps。
        # @type Bandwidth: Integer
        # @param ListenerType: 监听器的类别：L4Listener（四层监听器），L7Listener（七层监听器）。
        # @type ListenerType: String
        # @param SslMode: 七层监听器的认证方式：0（不认证，用于http），1（单向认证，用于https），2（双向认证，用于https）。
        # @type SslMode: Integer
        # @param CertId: 七层监听器关联的服务端证书ID。
        # @type CertId: String
        # @param CertCaId: 七层监听器关联的客户端证书ID。
        # @type CertCaId: String
        # @param Status: 监听器当前状态（0代表创建中，1代表正常运行，2代表创建失败，3代表删除中，4代表删除失败）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param ForwardProtocol: https转发类型。0：https。1：spdy。2：http2。3：spdy+http2。
        # @type ForwardProtocol: Integer

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :ListenerType, :SslMode, :CertId, :CertCaId, :Status, :AddTimestamp, :ForwardProtocol

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, listenertype=nil, sslmode=nil, certid=nil, certcaid=nil, status=nil, addtimestamp=nil, forwardprotocol=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @ListenerType = listenertype
          @SslMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @Status = status
          @AddTimestamp = addtimestamp
          @ForwardProtocol = forwardprotocol
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @ListenerType = params['ListenerType']
          @SslMode = params['SslMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          @ForwardProtocol = params['ForwardProtocol']
        end
      end

      # 查询绑定了某主机的七层监听器时返回的七层监听器信息。
      class L7ListenerInfo < TencentCloud::Common::AbstractModel
        # @param ListenerId: 七层监听器实例ID。
        # @type ListenerId: String
        # @param ListenerName: 七层监听器名称。
        # @type ListenerName: String
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param LoadBalancerPort: 七层监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 计费模式为按固定带宽方式时监听器的限速值，单位：Mbps。
        # @type Bandwidth: Integer
        # @param ListenerType: 监听器的类别：L4Listener（四层监听器），L7Listener（七层监听器）。
        # @type ListenerType: String
        # @param SslMode: 七层监听器的认证方式：0（不认证，用于http），1（单向认证，用于https），2（双向认证，用于https）。
        # @type SslMode: Integer
        # @param CertId: 七层监听器关联的服务端证书ID。
        # @type CertId: String
        # @param CertCaId: 七层监听器关联的客户端证书ID。
        # @type CertCaId: String
        # @param Status: 当前绑定关系的健康检查状态（Dead代表不健康，Alive代表健康）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param RuleSet: 返回的转发规则列表。
        # @type RuleSet: Array
        # @param ForwardProtocol: https转发类型。0：https。1：spdy。2：http2。3：spdy+http2。
        # @type ForwardProtocol: Integer

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :ListenerType, :SslMode, :CertId, :CertCaId, :Status, :AddTimestamp, :RuleSet, :ForwardProtocol

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, listenertype=nil, sslmode=nil, certid=nil, certcaid=nil, status=nil, addtimestamp=nil, ruleset=nil, forwardprotocol=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @ListenerType = listenertype
          @SslMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @Status = status
          @AddTimestamp = addtimestamp
          @RuleSet = ruleset
          @ForwardProtocol = forwardprotocol
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @ListenerType = params['ListenerType']
          @SslMode = params['SslMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              l7listenerinforule_tmp = L7ListenerInfoRule.new
              l7listenerinforule_tmp.deserialize(i)
              @RuleSet << l7listenerinforule_tmp
            end
          end
          @ForwardProtocol = params['ForwardProtocol']
        end
      end

      # 查询绑定了某主机七层监听器时返回的与转发路径所绑定的主机信息。
      class L7ListenerInfoBackend < TencentCloud::Common::AbstractModel
        # @param BindType: 绑定类别（0代表黑石物理机，1代表虚拟机IP）。
        # @type BindType: Integer
        # @param Port: 主机端口。
        # @type Port: Integer
        # @param Weight: 权重。
        # @type Weight: Integer
        # @param Status: 当前绑定关系的健康检查状态（Dead代表不健康，Alive代表健康）。
        # @type Status: String
        # @param InstanceId: 黑石物理机的主机ID。
        # @type InstanceId: String
        # @param Alias: 黑石物理机的别名。
        # @type Alias: String
        # @param LanIp: 主机IP。
        # @type LanIp: String

        attr_accessor :BindType, :Port, :Weight, :Status, :InstanceId, :Alias, :LanIp

        def initialize(bindtype=nil, port=nil, weight=nil, status=nil, instanceid=nil, _alias=nil, lanip=nil)
          @BindType = bindtype
          @Port = port
          @Weight = weight
          @Status = status
          @InstanceId = instanceid
          @Alias = _alias
          @LanIp = lanip
        end

        def deserialize(params)
          @BindType = params['BindType']
          @Port = params['Port']
          @Weight = params['Weight']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @Alias = params['Alias']
          @LanIp = params['LanIp']
        end
      end

      # 查询绑定了某主机的七层监听器时返回的转发路径。
      class L7ListenerInfoLocation < TencentCloud::Common::AbstractModel
        # @param Url: 转发路径。
        # @type Url: String
        # @param LocationId: 转发路径实例ID。
        # @type LocationId: String
        # @param SessionExpire: 会话保持时间。
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启健康检查。
        # @type HealthSwitch: Integer
        # @param HttpCheckPath: 健康检查检查路径。
        # @type HttpCheckPath: String
        # @param HttpCheckDomain: 健康检查检查域名。
        # @type HttpCheckDomain: String
        # @param IntervalTime: 健康检查检查间隔时间。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康检查健康阈值。
        # @type HealthNum: Integer
        # @param UnhealthNum: 健康检查不健康阈值。
        # @type UnhealthNum: Integer
        # @param HttpCodes: 健康检查中认为健康的HTTP返回码的组合。可选值为1~5的集合，1表示HTTP返回码为1xx认为健康。2表示HTTP返回码为2xx认为健康。3表示HTTP返回码为3xx认为健康。4表示HTTP返回码为4xx认为健康。5表示HTTP返回码为5xx认为健康。
        # @type HttpCodes: Array
        # @param BalanceMode: 均衡方式。
        # @type BalanceMode: String
        # @param Status: 当前绑定关系的健康检查状态（Dead代表不健康，Alive代表健康）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param BackendSet: 该转发路径所绑定的主机列表。
        # @type BackendSet: Array

        attr_accessor :Url, :LocationId, :SessionExpire, :HealthSwitch, :HttpCheckPath, :HttpCheckDomain, :IntervalTime, :HealthNum, :UnhealthNum, :HttpCodes, :BalanceMode, :Status, :AddTimestamp, :BackendSet

        def initialize(url=nil, locationid=nil, sessionexpire=nil, healthswitch=nil, httpcheckpath=nil, httpcheckdomain=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httpcodes=nil, balancemode=nil, status=nil, addtimestamp=nil, backendset=nil)
          @Url = url
          @LocationId = locationid
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @HttpCheckPath = httpcheckpath
          @HttpCheckDomain = httpcheckdomain
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @HttpCodes = httpcodes
          @BalanceMode = balancemode
          @Status = status
          @AddTimestamp = addtimestamp
          @BackendSet = backendset
        end

        def deserialize(params)
          @Url = params['Url']
          @LocationId = params['LocationId']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckDomain = params['HttpCheckDomain']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @HttpCodes = params['HttpCodes']
          @BalanceMode = params['BalanceMode']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              l7listenerinfobackend_tmp = L7ListenerInfoBackend.new
              l7listenerinfobackend_tmp.deserialize(i)
              @BackendSet << l7listenerinfobackend_tmp
            end
          end
        end
      end

      # 查询绑定了某主机的七层监听器时返回的转发规则。
      class L7ListenerInfoRule < TencentCloud::Common::AbstractModel
        # @param Domain: 转发域名。
        # @type Domain: String
        # @param DomainId: 转发域名实例ID。
        # @type DomainId: String
        # @param Status: 当前绑定关系的健康检查状态（Dead代表不健康，Alive代表健康）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param LocationSet: 该转发域名下面的转发路径列表。
        # @type LocationSet: Array

        attr_accessor :Domain, :DomainId, :Status, :AddTimestamp, :LocationSet

        def initialize(domain=nil, domainid=nil, status=nil, addtimestamp=nil, locationset=nil)
          @Domain = domain
          @DomainId = domainid
          @Status = status
          @AddTimestamp = addtimestamp
          @LocationSet = locationset
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          unless params['LocationSet'].nil?
            @LocationSet = []
            params['LocationSet'].each do |i|
              l7listenerinfolocation_tmp = L7ListenerInfoLocation.new
              l7listenerinfolocation_tmp.deserialize(i)
              @LocationSet << l7listenerinfolocation_tmp
            end
          end
        end
      end

      # 获取七层监听器转发规则时返回的转发规则。
      class L7Rule < TencentCloud::Common::AbstractModel
        # @param Domain: 转发域名。
        # @type Domain: String
        # @param DomainId: 转发域名实例ID。
        # @type DomainId: String
        # @param Status: 转发路径当前状态（0代表创建中，1代表正常运行，2代表创建失败，3代表删除中，4代表删除失败）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String
        # @param LocationSet: 该转发域名下面的转发路径列表。
        # @type LocationSet: Array

        attr_accessor :Domain, :DomainId, :Status, :AddTimestamp, :LocationSet

        def initialize(domain=nil, domainid=nil, status=nil, addtimestamp=nil, locationset=nil)
          @Domain = domain
          @DomainId = domainid
          @Status = status
          @AddTimestamp = addtimestamp
          @LocationSet = locationset
        end

        def deserialize(params)
          @Domain = params['Domain']
          @DomainId = params['DomainId']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
          unless params['LocationSet'].nil?
            @LocationSet = []
            params['LocationSet'].each do |i|
              l7ruleslocation_tmp = L7RulesLocation.new
              l7ruleslocation_tmp.deserialize(i)
              @LocationSet << l7ruleslocation_tmp
            end
          end
        end
      end

      # 获取七层转发规则时返回的转发域名下面的转发路径。
      class L7RulesLocation < TencentCloud::Common::AbstractModel
        # @param Url: 转发路径。
        # @type Url: String
        # @param LocationId: 转发路径实例ID。
        # @type LocationId: String
        # @param SessionExpire: 会话保持时间。
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启健康检查。
        # @type HealthSwitch: Integer
        # @param HttpCheckPath: 健康检查检查路径。
        # @type HttpCheckPath: String
        # @param HttpCheckDomain: 健康检查检查域名。
        # @type HttpCheckDomain: String
        # @param IntervalTime: 健康检查检查间隔时间。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康检查健康阈值。
        # @type HealthNum: Integer
        # @param UnhealthNum: 健康检查不健康阈值。
        # @type UnhealthNum: Integer
        # @param HttpCodes: 健康检查中认为健康的HTTP返回码的组合。可选值为1~5的集合，1表示HTTP返回码为1xx认为健康。2表示HTTP返回码为2xx认为健康。3表示HTTP返回码为3xx认为健康。4表示HTTP返回码为4xx认为健康。5表示HTTP返回码为5xx认为健康。
        # @type HttpCodes: Array
        # @param BalanceMode: 均衡方式。
        # @type BalanceMode: String
        # @param Status: 转发路径当前状态（0代表创建中，1代表正常运行，2代表创建失败，3代表删除中，4代表删除失败）。
        # @type Status: Integer
        # @param AddTimestamp: 创建时间戳。
        # @type AddTimestamp: String

        attr_accessor :Url, :LocationId, :SessionExpire, :HealthSwitch, :HttpCheckPath, :HttpCheckDomain, :IntervalTime, :HealthNum, :UnhealthNum, :HttpCodes, :BalanceMode, :Status, :AddTimestamp

        def initialize(url=nil, locationid=nil, sessionexpire=nil, healthswitch=nil, httpcheckpath=nil, httpcheckdomain=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httpcodes=nil, balancemode=nil, status=nil, addtimestamp=nil)
          @Url = url
          @LocationId = locationid
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @HttpCheckPath = httpcheckpath
          @HttpCheckDomain = httpcheckdomain
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @HttpCodes = httpcodes
          @BalanceMode = balancemode
          @Status = status
          @AddTimestamp = addtimestamp
        end

        def deserialize(params)
          @Url = params['Url']
          @LocationId = params['LocationId']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckDomain = params['HttpCheckDomain']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @HttpCodes = params['HttpCodes']
          @BalanceMode = params['BalanceMode']
          @Status = params['Status']
          @AddTimestamp = params['AddTimestamp']
        end
      end

      # 获取负载均衡实例列表时返回的负载均衡信息。
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡器ID
        # @type LoadBalancerId: String
        # @param ProjectId: 项目ID，通过v2/DescribeProject 接口获得
        # @type ProjectId: Integer
        # @param LoadBalancerName: 负载均衡器名称
        # @type LoadBalancerName: String
        # @param LoadBalancerType: 负载均衡的类型 : open表示公网负载均衡类型，internal表示内网负载均衡类型
        # @type LoadBalancerType: String
        # @param Exclusive: 是否筛选独占集群，0表示非独占集群，1表示四层独占集群，2表示七层独占集群，3表示四层和七层独占集群，4表示共享容灾
        # @type Exclusive: Integer
        # @param TgwSetType: 该负载均衡对应的tgw集群（fullnat,tunnel,dnat）
        # @type TgwSetType: String
        # @param Domain: 负载均衡域名。规则：1-60个小写英文字母、数字、点号“.”或连接线“-”。内网类型的负载均衡不能配置该字段
        # @type Domain: String
        # @param VpcId: 该负载均衡对应的所在的VpcId
        # @type VpcId: String
        # @param SubnetId: 该负载均衡对应的所在的SubnetId
        # @type SubnetId: String
        # @param Status: 无
        # @type Status: Integer
        # @param PayMode: 无
        # @type PayMode: String
        # @param LatestPayMode: 无
        # @type LatestPayMode: String
        # @param CreateTime: 无
        # @type CreateTime: String
        # @param StatusTime: 无
        # @type StatusTime: String
        # @param VpcName: 私有网络名称。
        # @type VpcName: String
        # @param VpcCidrBlock: 私有网络Cidr。
        # @type VpcCidrBlock: String
        # @param LoadBalancerVips: 负载均衡的IPV4的VIP。
        # @type LoadBalancerVips: Array
        # @param SupportListenerTypes: 无
        # @type SupportListenerTypes: Array
        # @param Bandwidth: 无
        # @type Bandwidth: Integer
        # @param ConfId: 负载均衡个性化配置ID
        # @type ConfId: String
        # @param ConfName: 无
        # @type ConfName: String
        # @param LoadBalancerVipv6s: 负载均衡的IPV6的VIP。
        # @type LoadBalancerVipv6s: Array
        # @param IpProtocolType: 负载均衡IP协议类型。ipv4或者ipv6。
        # @type IpProtocolType: String
        # @param BzPayMode: 保障型网关计费形式
        # @type BzPayMode: String
        # @param BzL4Metrics: 保障型网关四层计费指标
        # @type BzL4Metrics: String
        # @param BzL7Metrics: 保障型网关七层计费指标
        # @type BzL7Metrics: String
        # @param IntVpcId: 该负载均衡对应的所在的整形类型的VpcId
        # @type IntVpcId: Integer
        # @param CurVips: 负载均衡的IPV6或者IPV4的VIP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurVips: Array

        attr_accessor :LoadBalancerId, :ProjectId, :LoadBalancerName, :LoadBalancerType, :Exclusive, :TgwSetType, :Domain, :VpcId, :SubnetId, :Status, :PayMode, :LatestPayMode, :CreateTime, :StatusTime, :VpcName, :VpcCidrBlock, :LoadBalancerVips, :SupportListenerTypes, :Bandwidth, :ConfId, :ConfName, :LoadBalancerVipv6s, :IpProtocolType, :BzPayMode, :BzL4Metrics, :BzL7Metrics, :IntVpcId, :CurVips

        def initialize(loadbalancerid=nil, projectid=nil, loadbalancername=nil, loadbalancertype=nil, exclusive=nil, tgwsettype=nil, domain=nil, vpcid=nil, subnetid=nil, status=nil, paymode=nil, latestpaymode=nil, createtime=nil, statustime=nil, vpcname=nil, vpccidrblock=nil, loadbalancervips=nil, supportlistenertypes=nil, bandwidth=nil, confid=nil, confname=nil, loadbalancervipv6s=nil, ipprotocoltype=nil, bzpaymode=nil, bzl4metrics=nil, bzl7metrics=nil, intvpcid=nil, curvips=nil)
          @LoadBalancerId = loadbalancerid
          @ProjectId = projectid
          @LoadBalancerName = loadbalancername
          @LoadBalancerType = loadbalancertype
          @Exclusive = exclusive
          @TgwSetType = tgwsettype
          @Domain = domain
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @PayMode = paymode
          @LatestPayMode = latestpaymode
          @CreateTime = createtime
          @StatusTime = statustime
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @LoadBalancerVips = loadbalancervips
          @SupportListenerTypes = supportlistenertypes
          @Bandwidth = bandwidth
          @ConfId = confid
          @ConfName = confname
          @LoadBalancerVipv6s = loadbalancervipv6s
          @IpProtocolType = ipprotocoltype
          @BzPayMode = bzpaymode
          @BzL4Metrics = bzl4metrics
          @BzL7Metrics = bzl7metrics
          @IntVpcId = intvpcid
          @CurVips = curvips
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ProjectId = params['ProjectId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerType = params['LoadBalancerType']
          @Exclusive = params['Exclusive']
          @TgwSetType = params['TgwSetType']
          @Domain = params['Domain']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @PayMode = params['PayMode']
          @LatestPayMode = params['LatestPayMode']
          @CreateTime = params['CreateTime']
          @StatusTime = params['StatusTime']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @LoadBalancerVips = params['LoadBalancerVips']
          @SupportListenerTypes = params['SupportListenerTypes']
          @Bandwidth = params['Bandwidth']
          @ConfId = params['ConfId']
          @ConfName = params['ConfName']
          @LoadBalancerVipv6s = params['LoadBalancerVipv6s']
          @IpProtocolType = params['IpProtocolType']
          @BzPayMode = params['BzPayMode']
          @BzL4Metrics = params['BzL4Metrics']
          @BzL7Metrics = params['BzL7Metrics']
          @IntVpcId = params['IntVpcId']
          @CurVips = params['CurVips']
        end
      end

      # 获取黑石负载均衡端口相关信息时返回的监听器信息（四层和七层）。
      class LoadBalancerPortInfoListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器ID。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称。
        # @type ListenerName: String
        # @param Protocol: 监听器协议类型，可选值：http，https，tcp，udp。
        # @type Protocol: String
        # @param LoadBalancerPort: 监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 计费模式为按固定带宽方式时监听器的限速值，单位：Mbps。
        # @type Bandwidth: Integer
        # @param Status: 监听器当前状态（0代表创建中，1代表正常运行，2代表创建失败，3代表删除中，4代表删除失败）。
        # @type Status: Integer
        # @param Port: 与监听器绑定的主机端口。
        # @type Port: Integer

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :Status, :Port

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, status=nil, port=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @Status = status
          @Port = port
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @Status = params['Status']
          @Port = params['Port']
        end
      end

      # ModifyL4BackendPort请求参数结构体
      class ModifyL4BackendPortRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        # @type ListenerId: String
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Port: 已绑定的主机端口。
        # @type Port: Integer
        # @param NewPort: 新的主机端口，可选值1~65535。
        # @type NewPort: Integer
        # @param BindType: 绑定类型。0：物理机  1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :InstanceId, :Port, :NewPort, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, instanceid=nil, port=nil, newport=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @InstanceId = instanceid
          @Port = port
          @NewPort = newport
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @NewPort = params['NewPort']
          @BindType = params['BindType']
        end
      end

      # ModifyL4BackendPort返回参数结构体
      class ModifyL4BackendPortResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果
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

      # ModifyL4BackendProbePort请求参数结构体
      class ModifyL4BackendProbePortRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡四层监听器ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Port: 已绑定的主机端口。
        # @type Port: Integer
        # @param ProbePort: 新的探测端口，可选值1~65535。
        # @type ProbePort: Integer
        # @param BindType: 绑定类型。0：物理机 1：虚拟机IP 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :InstanceId, :Port, :ProbePort, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, instanceid=nil, port=nil, probeport=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @InstanceId = instanceid
          @Port = port
          @ProbePort = probeport
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @ProbePort = params['ProbePort']
          @BindType = params['BindType']
        end
      end

      # ModifyL4BackendProbePort返回参数结构体
      class ModifyL4BackendProbePortResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # ModifyL4BackendWeight请求参数结构体
      class ModifyL4BackendWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        # @type ListenerId: String
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Weight: 权重信息，可选值0~100。
        # @type Weight: Integer
        # @param Port: 已绑定的主机端口。
        # @type Port: Integer
        # @param BindType: 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :InstanceId, :Weight, :Port, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, instanceid=nil, weight=nil, port=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @InstanceId = instanceid
          @Weight = weight
          @Port = port
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @Port = params['Port']
          @BindType = params['BindType']
        end
      end

      # ModifyL4BackendWeight返回参数结构体
      class ModifyL4BackendWeightResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # ModifyL4Listener请求参数结构体
      class ModifyL4ListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 四层监听器ID。可通过接口DescribeL4Listeners查询。
        # @type ListenerId: String
        # @param ListenerName: 四层监听器名称。
        # @type ListenerName: String
        # @param SessionExpire: 会话保持时间，单位：秒。可选值：900~3600。
        # @type SessionExpire: Integer
        # @param HealthSwitch: 是否开启健康检查：1（开启）、0（关闭）。默认值0，表示关闭。
        # @type HealthSwitch: Integer
        # @param TimeOut: 健康检查的响应超时时间，可选值：2-60，默认值：2，单位:秒。<br><font color="red">响应超时时间要小于检查间隔时间。</font>
        # @type TimeOut: Integer
        # @param IntervalTime: 健康检查间隔，默认值：5，可选值：5-300，单位：秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        # @type HealthNum: Integer
        # @param UnhealthNum: 不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发不正常，可选值：2-10，单位：次。
        # @type UnhealthNum: Integer
        # @param Bandwidth: 监听器最大带宽值，用于计费模式为固定带宽计费。可选值：0-1000，单位：Mbps。
        # @type Bandwidth: Integer
        # @param CustomHealthSwitch: 是否开启自定义健康检查：1（开启）、0（关闭）。默认值0，表示关闭。（该字段在健康检查开启的情况下才生效）
        # @type CustomHealthSwitch: Integer
        # @param InputType: 自定义健康探测内容类型，可选值：text（文本）、hexadecimal（十六进制）。
        # @type InputType: String
        # @param LineSeparatorType: 探测内容类型为文本方式时，针对请求文本中换行替换方式。可选值：1（替换为LF）、2（替换为CR）、3（替换为LF+CR）。
        # @type LineSeparatorType: Integer
        # @param HealthRequest: 自定义探测请求内容。
        # @type HealthRequest: String
        # @param HealthResponse: 自定义探测返回内容。
        # @type HealthResponse: String
        # @param ToaFlag: 是否开启toa。可选值：0（关闭）、1（开启），默认关闭。（该字段在负载均衡为fullnat类型下才生效）
        # @type ToaFlag: Integer
        # @param BalanceMode: 四层调度方式。wrr，wlc。
        # @type BalanceMode: String

        attr_accessor :LoadBalancerId, :ListenerId, :ListenerName, :SessionExpire, :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnhealthNum, :Bandwidth, :CustomHealthSwitch, :InputType, :LineSeparatorType, :HealthRequest, :HealthResponse, :ToaFlag, :BalanceMode

        def initialize(loadbalancerid=nil, listenerid=nil, listenername=nil, sessionexpire=nil, healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, bandwidth=nil, customhealthswitch=nil, inputtype=nil, lineseparatortype=nil, healthrequest=nil, healthresponse=nil, toaflag=nil, balancemode=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @ListenerName = listenername
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @Bandwidth = bandwidth
          @CustomHealthSwitch = customhealthswitch
          @InputType = inputtype
          @LineSeparatorType = lineseparatortype
          @HealthRequest = healthrequest
          @HealthResponse = healthresponse
          @ToaFlag = toaflag
          @BalanceMode = balancemode
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @Bandwidth = params['Bandwidth']
          @CustomHealthSwitch = params['CustomHealthSwitch']
          @InputType = params['InputType']
          @LineSeparatorType = params['LineSeparatorType']
          @HealthRequest = params['HealthRequest']
          @HealthResponse = params['HealthResponse']
          @ToaFlag = params['ToaFlag']
          @BalanceMode = params['BalanceMode']
        end
      end

      # ModifyL4Listener返回参数结构体
      class ModifyL4ListenerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # ModifyL7BackendPort请求参数结构体
      class ModifyL7BackendPortRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationId: 转发路径实例ID，可通过接口DescribeL7Rules查询。
        # @type LocationId: String
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Port: 已绑定的主机端口。
        # @type Port: Integer
        # @param NewPort: 新的主机端口，可选值1~65535。
        # @type NewPort: Integer
        # @param BindType: 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId, :LocationId, :InstanceId, :Port, :NewPort, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil, locationid=nil, instanceid=nil, port=nil, newport=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
          @LocationId = locationid
          @InstanceId = instanceid
          @Port = port
          @NewPort = newport
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
          @LocationId = params['LocationId']
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @NewPort = params['NewPort']
          @BindType = params['BindType']
        end
      end

      # ModifyL7BackendPort返回参数结构体
      class ModifyL7BackendPortResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # ModifyL7BackendWeight请求参数结构体
      class ModifyL7BackendWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationId: 转发路径实例ID，可通过接口DescribeL7Rules查询。
        # @type LocationId: String
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String
        # @param Weight: 权重信息，可选值0~100。
        # @type Weight: Integer
        # @param Port: 已绑定的主机端口。
        # @type Port: Integer
        # @param BindType: 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId, :LocationId, :InstanceId, :Weight, :Port, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil, locationid=nil, instanceid=nil, weight=nil, port=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
          @LocationId = locationid
          @InstanceId = instanceid
          @Weight = weight
          @Port = port
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
          @LocationId = params['LocationId']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @Port = params['Port']
          @BindType = params['BindType']
        end
      end

      # ModifyL7BackendWeight返回参数结构体
      class ModifyL7BackendWeightResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果
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

      # ModifyL7Listener请求参数结构体
      class ModifyL7ListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param ListenerName: 七层监听器名称。
        # @type ListenerName: String
        # @param SslMode: 认证方式：0（不认证，用于http），1（单向认证，用于https），2（双向认证，用于https）。
        # @type SslMode: Integer
        # @param CertId: 服务端证书ID。
        # @type CertId: String
        # @param CertName: 服务端证书名称。
        # @type CertName: String
        # @param CertContent: 服务端证书内容。
        # @type CertContent: String
        # @param CertKey: 服务端证书密钥。
        # @type CertKey: String
        # @param CertCaId: 客户端证书ID。
        # @type CertCaId: String
        # @param CertCaName: 客户端证书名称。
        # @type CertCaName: String
        # @param CertCaContent: 客户端证书内容。
        # @type CertCaContent: String
        # @param Bandwidth: 计费模式为按固定带宽方式时监听器的限速值，可选值：0-1000，单位：Mbps。
        # @type Bandwidth: Integer
        # @param ForwardProtocol: 转发协议。当监听器Protocol为https时并且SslMode为1或2时，有意义。可选的值为0：https，1：spdy，2：http2，3：spdy+http2。
        # @type ForwardProtocol: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :ListenerName, :SslMode, :CertId, :CertName, :CertContent, :CertKey, :CertCaId, :CertCaName, :CertCaContent, :Bandwidth, :ForwardProtocol

        def initialize(loadbalancerid=nil, listenerid=nil, listenername=nil, sslmode=nil, certid=nil, certname=nil, certcontent=nil, certkey=nil, certcaid=nil, certcaname=nil, certcacontent=nil, bandwidth=nil, forwardprotocol=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @ListenerName = listenername
          @SslMode = sslmode
          @CertId = certid
          @CertName = certname
          @CertContent = certcontent
          @CertKey = certkey
          @CertCaId = certcaid
          @CertCaName = certcaname
          @CertCaContent = certcacontent
          @Bandwidth = bandwidth
          @ForwardProtocol = forwardprotocol
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @SslMode = params['SslMode']
          @CertId = params['CertId']
          @CertName = params['CertName']
          @CertContent = params['CertContent']
          @CertKey = params['CertKey']
          @CertCaId = params['CertCaId']
          @CertCaName = params['CertCaName']
          @CertCaContent = params['CertCaContent']
          @Bandwidth = params['Bandwidth']
          @ForwardProtocol = params['ForwardProtocol']
        end
      end

      # ModifyL7Listener返回参数结构体
      class ModifyL7ListenerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用[DescribeLoadBalancerTaskResult](/document/product/386/9308)接口来查询任务操作结果
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

      # 修改黑石负载均衡七层转发路径时待修改的七层转发规则信息。
      class ModifyL7LocationRule < TencentCloud::Common::AbstractModel
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationId: 转发路径实例ID，可通过接口DescribeL7Rules查询。
        # @type LocationId: String
        # @param Url: 转发路径。
        # @type Url: String
        # @param SessionExpire: 会话保持时间，单位：秒。可选值：30~3600。默认值0，表示不开启会话保持。
        # @type SessionExpire: Integer
        # @param HealthSwitch: 健康检查开关：1（开启）、0（关闭）。默认值0，表示关闭。
        # @type HealthSwitch: Integer
        # @param IntervalTime: 健康检查检查间隔时间，默认值：5，可选值：5-300，单位：秒。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康检查健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2-10，单位：次。
        # @type HealthNum: Integer
        # @param UnhealthNum: 健康检查不健康阈值，默认值：5，表示当连续探测五次不健康则表示该转发不正常，可选值：2-10，单位：次。
        # @type UnhealthNum: Integer
        # @param HttpCodes: 健康检查中认为健康的HTTP返回码的组合。可选值为1~5的集合，1表示HTTP返回码为1xx认为健康。2表示HTTP返回码为2xx认为健康。3表示HTTP返回码为3xx认为健康。4表示HTTP返回码为4xx认为健康。5表示HTTP返回码为5xx认为健康。
        # @type HttpCodes: Array
        # @param HttpCheckPath: 健康检查检查路径。
        # @type HttpCheckPath: String
        # @param HttpCheckDomain: 健康检查检查域名。如果规则的域名使用通配符或正则表达式，则健康检查检查域名可自定义，否则必须跟健康检查检查域名一样。不填表示不修改。
        # @type HttpCheckDomain: String
        # @param BalanceMode: 均衡方式：ip_hash、wrr。默认值wrr。
        # @type BalanceMode: String
        # @param Domain: 转发域名。
        # @type Domain: String

        attr_accessor :DomainId, :LocationId, :Url, :SessionExpire, :HealthSwitch, :IntervalTime, :HealthNum, :UnhealthNum, :HttpCodes, :HttpCheckPath, :HttpCheckDomain, :BalanceMode, :Domain

        def initialize(domainid=nil, locationid=nil, url=nil, sessionexpire=nil, healthswitch=nil, intervaltime=nil, healthnum=nil, unhealthnum=nil, httpcodes=nil, httpcheckpath=nil, httpcheckdomain=nil, balancemode=nil, domain=nil)
          @DomainId = domainid
          @LocationId = locationid
          @Url = url
          @SessionExpire = sessionexpire
          @HealthSwitch = healthswitch
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @HttpCodes = httpcodes
          @HttpCheckPath = httpcheckpath
          @HttpCheckDomain = httpcheckdomain
          @BalanceMode = balancemode
          @Domain = domain
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @LocationId = params['LocationId']
          @Url = params['Url']
          @SessionExpire = params['SessionExpire']
          @HealthSwitch = params['HealthSwitch']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @HttpCodes = params['HttpCodes']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCheckDomain = params['HttpCheckDomain']
          @BalanceMode = params['BalanceMode']
          @Domain = params['Domain']
        end
      end

      # ModifyL7Locations请求参数结构体
      class ModifyL7LocationsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param RuleSet: 待更新的七层转发规则信息数组。
        # @type RuleSet: Array

        attr_accessor :LoadBalancerId, :ListenerId, :RuleSet

        def initialize(loadbalancerid=nil, listenerid=nil, ruleset=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @RuleSet = ruleset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['RuleSet'].nil?
            @RuleSet = []
            params['RuleSet'].each do |i|
              modifyl7locationrule_tmp = ModifyL7LocationRule.new
              modifyl7locationrule_tmp.deserialize(i)
              @RuleSet << modifyl7locationrule_tmp
            end
          end
        end
      end

      # ModifyL7Locations返回参数结构体
      class ModifyL7LocationsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 修改负载均衡计费方式的监听器信息。
      class ModifyLoadBalancerChargeModeListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param Protocol: 协议类型。
        # @type Protocol: String
        # @param Bandwidth: 带宽。
        # @type Bandwidth: Integer

        attr_accessor :ListenerId, :Protocol, :Bandwidth

        def initialize(listenerid=nil, protocol=nil, bandwidth=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Bandwidth = params['Bandwidth']
        end
      end

      # ModifyLoadBalancerChargeMode请求参数结构体
      class ModifyLoadBalancerChargeModeRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID。
        # @type LoadBalancerId: String
        # @param PayMode: 计费方式。flow或bandwidth。
        # @type PayMode: String
        # @param ListenerSet: 监听器信息，当计费方式选为 bandwidth 且此负载均衡实例下存在监听器时需填入此字段，可以自定义每个监听器带宽上限。
        # @type ListenerSet: Array

        attr_accessor :LoadBalancerId, :PayMode, :ListenerSet

        def initialize(loadbalancerid=nil, paymode=nil, listenerset=nil)
          @LoadBalancerId = loadbalancerid
          @PayMode = paymode
          @ListenerSet = listenerset
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @PayMode = params['PayMode']
          unless params['ListenerSet'].nil?
            @ListenerSet = []
            params['ListenerSet'].each do |i|
              modifyloadbalancerchargemodelistener_tmp = ModifyLoadBalancerChargeModeListener.new
              modifyloadbalancerchargemodelistener_tmp.deserialize(i)
              @ListenerSet << modifyloadbalancerchargemodelistener_tmp
            end
          end
        end
      end

      # ModifyLoadBalancerChargeMode返回参数结构体
      class ModifyLoadBalancerChargeModeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancer请求参数结构体
      class ModifyLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡器名称，规则：1-20个英文、汉字、数字、连接线“-”或下划线“_”。
        # @type LoadBalancerName: String
        # @param DomainPrefix: 域名前缀，负载均衡的域名由用户输入的域名前缀与配置文件中的域名后缀一起组合而成，保证是唯一的域名。规则：1-20个小写英文字母、数字或连接线“-”。内网类型的负载均衡不能配置该字段。
        # @type DomainPrefix: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :DomainPrefix

        def initialize(loadbalancerid=nil, loadbalancername=nil, domainprefix=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @DomainPrefix = domainprefix
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @DomainPrefix = params['DomainPrefix']
        end
      end

      # ModifyLoadBalancer返回参数结构体
      class ModifyLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # ReplaceCert请求参数结构体
      class ReplaceCertRequest < TencentCloud::Common::AbstractModel
        # @param OldCertId: 要被替换的证书ID
        # @type OldCertId: String
        # @param NewCert: 证书内容
        # @type NewCert: String
        # @param NewAlias: 证书名称
        # @type NewAlias: String
        # @param NewKey: 私钥内容，证书类型为SVR时不需要传递
        # @type NewKey: String
        # @param DeleteOld: 是否删除旧证书，0 表示不删除，1 表示删除
        # @type DeleteOld: Integer

        attr_accessor :OldCertId, :NewCert, :NewAlias, :NewKey, :DeleteOld

        def initialize(oldcertid=nil, newcert=nil, newalias=nil, newkey=nil, deleteold=nil)
          @OldCertId = oldcertid
          @NewCert = newcert
          @NewAlias = newalias
          @NewKey = newkey
          @DeleteOld = deleteold
        end

        def deserialize(params)
          @OldCertId = params['OldCertId']
          @NewCert = params['NewCert']
          @NewAlias = params['NewAlias']
          @NewKey = params['NewKey']
          @DeleteOld = params['DeleteOld']
        end
      end

      # ReplaceCert返回参数结构体
      class ReplaceCertResponse < TencentCloud::Common::AbstractModel
        # @param NewCertId: 新证书ID。
        # @type NewCertId: String
        # @param OldCertId: 旧证书ID。
        # @type OldCertId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NewCertId, :OldCertId, :RequestId

        def initialize(newcertid=nil, oldcertid=nil, requestid=nil)
          @NewCertId = newcertid
          @OldCertId = oldcertid
          @RequestId = requestid
        end

        def deserialize(params)
          @NewCertId = params['NewCertId']
          @OldCertId = params['OldCertId']
          @RequestId = params['RequestId']
        end
      end

      # SetTrafficMirrorAlias请求参数结构体
      class SetTrafficMirrorAliasRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param Alias: 流量镜像实例别名。
        # @type Alias: String

        attr_accessor :TrafficMirrorId, :Alias

        def initialize(trafficmirrorid=nil, _alias=nil)
          @TrafficMirrorId = trafficmirrorid
          @Alias = _alias
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @Alias = params['Alias']
        end
      end

      # SetTrafficMirrorAlias返回参数结构体
      class SetTrafficMirrorAliasResponse < TencentCloud::Common::AbstractModel
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

      # SetTrafficMirrorHealthSwitch请求参数结构体
      class SetTrafficMirrorHealthSwitchRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param HealthSwitch: 健康检查开关，0：关闭，1：打开
        # @type HealthSwitch: Integer
        # @param HealthNum: 健康检查判断健康的次数，最小值2，最大值10。
        # @type HealthNum: Integer
        # @param UnhealthNum: 健康检查判断不健康的次数，最小值2，最大值10。
        # @type UnhealthNum: Integer
        # @param IntervalTime: 健康检查间隔，单位：秒，最小值5，最大值300。
        # @type IntervalTime: Integer
        # @param HttpCheckDomain: 检查的域名配置。
        # @type HttpCheckDomain: String
        # @param HttpCheckPath: 检查的路径配置。
        # @type HttpCheckPath: String
        # @param HttpCodes: 健康检查中认为健康的HTTP返回码的组合。可选值为1~5的集合，1表示HTTP返回码为1xx认为健康。2表示HTTP返回码为2xx认为健康。3表示HTTP返回码为3xx认为健康。4表示HTTP返回码为4xx认为健康。5表示HTTP返回码为5xx认为健康。
        # @type HttpCodes: Array

        attr_accessor :TrafficMirrorId, :HealthSwitch, :HealthNum, :UnhealthNum, :IntervalTime, :HttpCheckDomain, :HttpCheckPath, :HttpCodes

        def initialize(trafficmirrorid=nil, healthswitch=nil, healthnum=nil, unhealthnum=nil, intervaltime=nil, httpcheckdomain=nil, httpcheckpath=nil, httpcodes=nil)
          @TrafficMirrorId = trafficmirrorid
          @HealthSwitch = healthswitch
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @IntervalTime = intervaltime
          @HttpCheckDomain = httpcheckdomain
          @HttpCheckPath = httpcheckpath
          @HttpCodes = httpcodes
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @HealthSwitch = params['HealthSwitch']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @IntervalTime = params['IntervalTime']
          @HttpCheckDomain = params['HttpCheckDomain']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCodes = params['HttpCodes']
        end
      end

      # SetTrafficMirrorHealthSwitch返回参数结构体
      class SetTrafficMirrorHealthSwitchResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 获取流量镜像实例的列表信息时返回的流量镜像信息。
      class TrafficMirror < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像ID。
        # @type TrafficMirrorId: String
        # @param Alias: 流量镜像名称。
        # @type Alias: String
        # @param VpcId: 流量镜像所在的私有网络ID。
        # @type VpcId: String
        # @param LoadBalancerType: 接收机负载均衡方式。wrr，ip_hash，wlc。
        # @type LoadBalancerType: String
        # @param HealthSwitch: 是否开始对接收机的健康检查。0：关闭，非0：开启。
        # @type HealthSwitch: Integer
        # @param HealthNum: 健康阈值。
        # @type HealthNum: Integer
        # @param UnhealthNum: 不健康阈值。
        # @type UnhealthNum: Integer
        # @param IntervalTime: 检查间隔。
        # @type IntervalTime: Integer
        # @param HttpCheckDomain: 检查域名。
        # @type HttpCheckDomain: String
        # @param HttpCheckPath: 检查目录。
        # @type HttpCheckPath: String
        # @param HttpCodes: 健康检查返回码。 1：1xx，2：2xx，3：3xx，4：4xx，5：5xx。
        # @type HttpCodes: Array
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param VpcCidrBlock: 流量镜像所在私有网络的Cidr。
        # @type VpcCidrBlock: String
        # @param VpcName: 流量镜像所在私有网络的名称。
        # @type VpcName: String

        attr_accessor :TrafficMirrorId, :Alias, :VpcId, :LoadBalancerType, :HealthSwitch, :HealthNum, :UnhealthNum, :IntervalTime, :HttpCheckDomain, :HttpCheckPath, :HttpCodes, :CreateTime, :VpcCidrBlock, :VpcName

        def initialize(trafficmirrorid=nil, _alias=nil, vpcid=nil, loadbalancertype=nil, healthswitch=nil, healthnum=nil, unhealthnum=nil, intervaltime=nil, httpcheckdomain=nil, httpcheckpath=nil, httpcodes=nil, createtime=nil, vpccidrblock=nil, vpcname=nil)
          @TrafficMirrorId = trafficmirrorid
          @Alias = _alias
          @VpcId = vpcid
          @LoadBalancerType = loadbalancertype
          @HealthSwitch = healthswitch
          @HealthNum = healthnum
          @UnhealthNum = unhealthnum
          @IntervalTime = intervaltime
          @HttpCheckDomain = httpcheckdomain
          @HttpCheckPath = httpcheckpath
          @HttpCodes = httpcodes
          @CreateTime = createtime
          @VpcCidrBlock = vpccidrblock
          @VpcName = vpcname
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @Alias = params['Alias']
          @VpcId = params['VpcId']
          @LoadBalancerType = params['LoadBalancerType']
          @HealthSwitch = params['HealthSwitch']
          @HealthNum = params['HealthNum']
          @UnhealthNum = params['UnhealthNum']
          @IntervalTime = params['IntervalTime']
          @HttpCheckDomain = params['HttpCheckDomain']
          @HttpCheckPath = params['HttpCheckPath']
          @HttpCodes = params['HttpCodes']
          @CreateTime = params['CreateTime']
          @VpcCidrBlock = params['VpcCidrBlock']
          @VpcName = params['VpcName']
        end
      end

      # 获取流量镜像的监听器列表信息时返回的与流量镜像绑定的监听器信息。
      class TrafficMirrorListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称。
        # @type ListenerName: String
        # @param Protocol: 七层监听器协议类型，可选值：http,https。
        # @type Protocol: String
        # @param LoadBalancerPort: 监听器的监听端口。
        # @type LoadBalancerPort: Integer
        # @param Bandwidth: 当前带宽。
        # @type Bandwidth: Integer
        # @param MaxBandwidth: 带宽上限。
        # @type MaxBandwidth: Integer
        # @param ListenerType: 监听器类型。
        # @type ListenerType: String
        # @param SslMode: 认证方式：0（不认证，用于http），1（单向认证，用于https），2（双向认证，用于https）。
        # @type SslMode: Integer
        # @param CertId: 服务端证书ID。
        # @type CertId: String
        # @param CertCaId: 客户端证书ID。
        # @type CertCaId: String
        # @param AddTimestamp: 添加时间。
        # @type AddTimestamp: String
        # @param LoadBalancerId: 负载均衡ID。
        # @type LoadBalancerId: String
        # @param VpcName: 私有网络名称。
        # @type VpcName: String
        # @param VpcCidrBlock: 私有网络Cidr。
        # @type VpcCidrBlock: String
        # @param LoadBalancerVips: 负载均衡的VIP。
        # @type LoadBalancerVips: Array
        # @param LoadBalancerName: 负载均衡名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerVipv6s: 负载均衡的IPV6的VIP。
        # @type LoadBalancerVipv6s: Array
        # @param IpProtocolType: 支持的IP协议类型。ipv4或者是ipv6。
        # @type IpProtocolType: String

        attr_accessor :ListenerId, :ListenerName, :Protocol, :LoadBalancerPort, :Bandwidth, :MaxBandwidth, :ListenerType, :SslMode, :CertId, :CertCaId, :AddTimestamp, :LoadBalancerId, :VpcName, :VpcCidrBlock, :LoadBalancerVips, :LoadBalancerName, :LoadBalancerVipv6s, :IpProtocolType

        def initialize(listenerid=nil, listenername=nil, protocol=nil, loadbalancerport=nil, bandwidth=nil, maxbandwidth=nil, listenertype=nil, sslmode=nil, certid=nil, certcaid=nil, addtimestamp=nil, loadbalancerid=nil, vpcname=nil, vpccidrblock=nil, loadbalancervips=nil, loadbalancername=nil, loadbalancervipv6s=nil, ipprotocoltype=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @LoadBalancerPort = loadbalancerport
          @Bandwidth = bandwidth
          @MaxBandwidth = maxbandwidth
          @ListenerType = listenertype
          @SslMode = sslmode
          @CertId = certid
          @CertCaId = certcaid
          @AddTimestamp = addtimestamp
          @LoadBalancerId = loadbalancerid
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @LoadBalancerVips = loadbalancervips
          @LoadBalancerName = loadbalancername
          @LoadBalancerVipv6s = loadbalancervipv6s
          @IpProtocolType = ipprotocoltype
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @LoadBalancerPort = params['LoadBalancerPort']
          @Bandwidth = params['Bandwidth']
          @MaxBandwidth = params['MaxBandwidth']
          @ListenerType = params['ListenerType']
          @SslMode = params['SslMode']
          @CertId = params['CertId']
          @CertCaId = params['CertCaId']
          @AddTimestamp = params['AddTimestamp']
          @LoadBalancerId = params['LoadBalancerId']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @LoadBalancerVips = params['LoadBalancerVips']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerVipv6s = params['LoadBalancerVipv6s']
          @IpProtocolType = params['IpProtocolType']
        end
      end

      # 流量镜像健康检查返回的接收机的端口及状态信息。
      class TrafficMirrorPortStatus < TencentCloud::Common::AbstractModel
        # @param Port: 接收机端口。
        # @type Port: Integer
        # @param Status: 状态。
        # @type Status: String

        attr_accessor :Port, :Status

        def initialize(port=nil, status=nil)
          @Port = port
          @Status = status
        end

        def deserialize(params)
          @Port = params['Port']
          @Status = params['Status']
        end
      end

      # 获取与流量镜像绑定的接收机信息时返回的接收机信息。
      class TrafficMirrorReceiver < TencentCloud::Common::AbstractModel
        # @param InstanceId: 接收机实例ID。
        # @type InstanceId: String
        # @param Port: 接收机接收端口。
        # @type Port: Integer
        # @param Weight: 接收机权重。
        # @type Weight: Integer
        # @param TrafficMirrorId: 流量镜像ID。
        # @type TrafficMirrorId: String
        # @param Alias: 接收机别名。
        # @type Alias: String
        # @param LanIp: 接收机内网IP地址。
        # @type LanIp: String
        # @param SubnetId: 接收机所在的子网的ID。
        # @type SubnetId: String
        # @param SubnetName: 接收机所在的子网的名称。
        # @type SubnetName: String
        # @param SubnetCidrBlock: 接收机所在的子网的Cidr。
        # @type SubnetCidrBlock: String
        # @param VpcId: 接收机所在的私有网络的ID。
        # @type VpcId: String
        # @param VpcName: 接收机所在的私有网络的名称。
        # @type VpcName: String
        # @param VpcCidrBlock: 接收机所在的私有网络的Cidr。
        # @type VpcCidrBlock: String
        # @param HealthStatus: 接收机的健康状态。
        # @type HealthStatus: String
        # @param Operates: 接收机的可以执行的操作集合。
        # @type Operates: Array

        attr_accessor :InstanceId, :Port, :Weight, :TrafficMirrorId, :Alias, :LanIp, :SubnetId, :SubnetName, :SubnetCidrBlock, :VpcId, :VpcName, :VpcCidrBlock, :HealthStatus, :Operates

        def initialize(instanceid=nil, port=nil, weight=nil, trafficmirrorid=nil, _alias=nil, lanip=nil, subnetid=nil, subnetname=nil, subnetcidrblock=nil, vpcid=nil, vpcname=nil, vpccidrblock=nil, healthstatus=nil, operates=nil)
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @TrafficMirrorId = trafficmirrorid
          @Alias = _alias
          @LanIp = lanip
          @SubnetId = subnetid
          @SubnetName = subnetname
          @SubnetCidrBlock = subnetcidrblock
          @VpcId = vpcid
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @HealthStatus = healthstatus
          @Operates = operates
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @TrafficMirrorId = params['TrafficMirrorId']
          @Alias = params['Alias']
          @LanIp = params['LanIp']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @SubnetCidrBlock = params['SubnetCidrBlock']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @HealthStatus = params['HealthStatus']
          @Operates = params['Operates']
        end
      end

      # 流量镜像健康检查返回的接收机状态信息。
      class TrafficMirrorReciversStatus < TencentCloud::Common::AbstractModel
        # @param LanIp: 内网IP。
        # @type LanIp: String
        # @param ReceiversPortStatusSet: 端口及对应的状态。
        # @type ReceiversPortStatusSet: Array

        attr_accessor :LanIp, :ReceiversPortStatusSet

        def initialize(lanip=nil, receiversportstatusset=nil)
          @LanIp = lanip
          @ReceiversPortStatusSet = receiversportstatusset
        end

        def deserialize(params)
          @LanIp = params['LanIp']
          unless params['ReceiversPortStatusSet'].nil?
            @ReceiversPortStatusSet = []
            params['ReceiversPortStatusSet'].each do |i|
              trafficmirrorportstatus_tmp = TrafficMirrorPortStatus.new
              trafficmirrorportstatus_tmp.deserialize(i)
              @ReceiversPortStatusSet << trafficmirrorportstatus_tmp
            end
          end
        end
      end

      # 待与四层监听器解绑的物理机主机、虚拟机或半托管主机信息。
      class UnbindL4Backend < TencentCloud::Common::AbstractModel
        # @param Port: 待解绑的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String

        attr_accessor :Port, :InstanceId

        def initialize(port=nil, instanceid=nil)
          @Port = port
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
        end
      end

      # UnbindL4Backends请求参数结构体
      class UnbindL4BackendsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        # @type ListenerId: String
        # @param BackendSet: 待解绑的主机信息。可以绑定多个主机端口。目前一个四层监听器下面最多允许绑定255个主机端口。
        # @type BackendSet: Array
        # @param BindType: 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :BackendSet, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, backendset=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @BackendSet = backendset
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              unbindl4backend_tmp = UnbindL4Backend.new
              unbindl4backend_tmp.deserialize(i)
              @BackendSet << unbindl4backend_tmp
            end
          end
          @BindType = params['BindType']
        end
      end

      # UnbindL4Backends返回参数结构体
      class UnbindL4BackendsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 待与七层监听器转发规则解绑的物理机主机、虚拟机或半托管主机信息。
      class UnbindL7Backend < TencentCloud::Common::AbstractModel
        # @param Port: 待解绑的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        # @type InstanceId: String

        attr_accessor :Port, :InstanceId

        def initialize(port=nil, instanceid=nil)
          @Port = port
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
        end
      end

      # UnbindL7Backends请求参数结构体
      class UnbindL7BackendsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        # @type LoadBalancerId: String
        # @param ListenerId: 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        # @type ListenerId: String
        # @param DomainId: 转发域名实例ID，可通过接口DescribeL7Rules查询。
        # @type DomainId: String
        # @param LocationId: 转发路径实例ID，可通过接口DescribeL7Rules查询。
        # @type LocationId: String
        # @param BackendSet: 待绑定的主机信息。
        # @type BackendSet: Array
        # @param BindType: 绑定类型。0：物理机  1：虚拟机 2：半托管机器
        # @type BindType: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :DomainId, :LocationId, :BackendSet, :BindType

        def initialize(loadbalancerid=nil, listenerid=nil, domainid=nil, locationid=nil, backendset=nil, bindtype=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @DomainId = domainid
          @LocationId = locationid
          @BackendSet = backendset
          @BindType = bindtype
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @DomainId = params['DomainId']
          @LocationId = params['LocationId']
          unless params['BackendSet'].nil?
            @BackendSet = []
            params['BackendSet'].each do |i|
              unbindl7backend_tmp = UnbindL7Backend.new
              unbindl7backend_tmp.deserialize(i)
              @BackendSet << unbindl7backend_tmp
            end
          end
          @BindType = params['BindType']
        end
      end

      # UnbindL7Backends返回参数结构体
      class UnbindL7BackendsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # UnbindTrafficMirrorListeners请求参数结构体
      class UnbindTrafficMirrorListenersRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param ListenerIds: 七层监听器实例ID数组，可通过接口DescribeL7Listeners查询。
        # @type ListenerIds: Array

        attr_accessor :TrafficMirrorId, :ListenerIds

        def initialize(trafficmirrorid=nil, listenerids=nil)
          @TrafficMirrorId = trafficmirrorid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # UnbindTrafficMirrorListeners返回参数结构体
      class UnbindTrafficMirrorListenersResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # 待与流量镜像解绑的接收机信息。
      class UnbindTrafficMirrorReceiver < TencentCloud::Common::AbstractModel
        # @param Port: 待解绑的主机端口，可选值1~65535。
        # @type Port: Integer
        # @param InstanceId: 待解绑的主机实例ID。
        # @type InstanceId: String

        attr_accessor :Port, :InstanceId

        def initialize(port=nil, instanceid=nil)
          @Port = port
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
        end
      end

      # UnbindTrafficMirrorReceivers请求参数结构体
      class UnbindTrafficMirrorReceiversRequest < TencentCloud::Common::AbstractModel
        # @param TrafficMirrorId: 流量镜像实例ID。
        # @type TrafficMirrorId: String
        # @param ReceiverSet: 待绑定的主机实例ID和端口数组。
        # @type ReceiverSet: Array

        attr_accessor :TrafficMirrorId, :ReceiverSet

        def initialize(trafficmirrorid=nil, receiverset=nil)
          @TrafficMirrorId = trafficmirrorid
          @ReceiverSet = receiverset
        end

        def deserialize(params)
          @TrafficMirrorId = params['TrafficMirrorId']
          unless params['ReceiverSet'].nil?
            @ReceiverSet = []
            params['ReceiverSet'].each do |i|
              unbindtrafficmirrorreceiver_tmp = UnbindTrafficMirrorReceiver.new
              unbindtrafficmirrorreceiver_tmp.deserialize(i)
              @ReceiverSet << unbindtrafficmirrorreceiver_tmp
            end
          end
        end
      end

      # UnbindTrafficMirrorReceivers返回参数结构体
      class UnbindTrafficMirrorReceiversResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
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

      # UploadCert请求参数结构体
      class UploadCertRequest < TencentCloud::Common::AbstractModel
        # @param CertType: 证书类型，可选值：CA，SVR。
        # @type CertType: String
        # @param Cert: 证书内容。
        # @type Cert: String
        # @param Alias: 证书别名。
        # @type Alias: String
        # @param Key: 私钥内容，证书类型为SVR时不需要传递。
        # @type Key: String

        attr_accessor :CertType, :Cert, :Alias, :Key

        def initialize(certtype=nil, cert=nil, _alias=nil, key=nil)
          @CertType = certtype
          @Cert = cert
          @Alias = _alias
          @Key = key
        end

        def deserialize(params)
          @CertType = params['CertType']
          @Cert = params['Cert']
          @Alias = params['Alias']
          @Key = params['Key']
        end
      end

      # UploadCert返回参数结构体
      class UploadCertResponse < TencentCloud::Common::AbstractModel
        # @param CertId: 新建的证书ID。
        # @type CertId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertId, :RequestId

        def initialize(certid=nil, requestid=nil)
          @CertId = certid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertId = params['CertId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

