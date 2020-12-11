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

Gem::Specification.new do |spec|
  spec.name          = 'tencentcloud-sdk'
  spec.version       = File.read(File.expand_path('lib/VERSION', __dir__)).strip
  spec.summary       = 'Tencent Cloud SDK for Ruby'
  spec.description   = 'Tencent Cloud Ruby SDK is the official software development kit, which allows Ruby developers to write software that makes use of Tencent Cloud service.'
  spec.author        = 'Tencent Cloud'
  spec.homepage      = 'https://github.com/TencentCloud/tencentcloud-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['tencentcloudapi@tencent.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb', 'lib/VERSION']

  spec.add_dependency('aws-sdk-nlp', '~> 1')
  spec.add_dependency('aws-sdk-iai', '~> 1')
  spec.add_dependency('aws-sdk-iotcloud', '~> 1')
  spec.add_dependency('aws-sdk-rp', '~> 1')
  spec.add_dependency('aws-sdk-tiw', '~> 1')
  spec.add_dependency('aws-sdk-mps', '~> 1')
  spec.add_dependency('aws-sdk-ft', '~> 1')
  spec.add_dependency('aws-sdk-youmall', '~> 1')
  spec.add_dependency('aws-sdk-vod', '~> 1')
  spec.add_dependency('aws-sdk-aai', '~> 1')
  spec.add_dependency('aws-sdk-ssl', '~> 1')
  spec.add_dependency('aws-sdk-cme', '~> 1')
  spec.add_dependency('aws-sdk-tbm', '~> 1')
  spec.add_dependency('aws-sdk-bri', '~> 1')
  spec.add_dependency('aws-sdk-ame', '~> 1')
  spec.add_dependency('aws-sdk-cis', '~> 1')
  spec.add_dependency('aws-sdk-smpn', '~> 1')
  spec.add_dependency('aws-sdk-kms', '~> 1')
  spec.add_dependency('aws-sdk-cpdp', '~> 1')
  spec.add_dependency('aws-sdk-cat', '~> 1')
  spec.add_dependency('aws-sdk-as', '~> 1')
  spec.add_dependency('aws-sdk-aa', '~> 1')
  spec.add_dependency('aws-sdk-mvj', '~> 1')
  spec.add_dependency('aws-sdk-ocr', '~> 1')
  spec.add_dependency('aws-sdk-cim', '~> 1')
  spec.add_dependency('aws-sdk-ssm', '~> 1')
  spec.add_dependency('aws-sdk-dc', '~> 1')
  spec.add_dependency('aws-sdk-partners', '~> 1')
  spec.add_dependency('aws-sdk-mongodb', '~> 1')
  spec.add_dependency('aws-sdk-fmu', '~> 1')
  spec.add_dependency('aws-sdk-cds', '~> 1')
  spec.add_dependency('aws-sdk-iotexplorer', '~> 1')
  spec.add_dependency('aws-sdk-tcaplusdb', '~> 1')
  spec.add_dependency('aws-sdk-dcdb', '~> 1')
  spec.add_dependency('aws-sdk-batch', '~> 1')
  spec.add_dependency('aws-sdk-apigateway', '~> 1')
  spec.add_dependency('aws-sdk-yunsou', '~> 1')
  spec.add_dependency('aws-sdk-soe', '~> 1')
  spec.add_dependency('aws-sdk-tcr', '~> 1')
  spec.add_dependency('aws-sdk-tics', '~> 1')
  spec.add_dependency('aws-sdk-postgres', '~> 1')
  spec.add_dependency('aws-sdk-gme', '~> 1')
  spec.add_dependency('aws-sdk-tbaas', '~> 1')
  spec.add_dependency('aws-sdk-drm', '~> 1')
  spec.add_dependency('aws-sdk-bizlive', '~> 1')
  spec.add_dependency('aws-sdk-cdn', '~> 1')
  spec.add_dependency('aws-sdk-asr', '~> 1')
  spec.add_dependency('aws-sdk-solar', '~> 1')
  spec.add_dependency('aws-sdk-tiems', '~> 1')
  spec.add_dependency('aws-sdk-afc', '~> 1')
  spec.add_dependency('aws-sdk-iot', '~> 1')
  spec.add_dependency('aws-sdk-tione', '~> 1')
  spec.add_dependency('aws-sdk-tsf', '~> 1')
  spec.add_dependency('aws-sdk-cbs', '~> 1')
  spec.add_dependency('aws-sdk-yunjing', '~> 1')
  spec.add_dependency('aws-sdk-sms', '~> 1')
  spec.add_dependency('aws-sdk-bda', '~> 1')
  spec.add_dependency('aws-sdk-billing', '~> 1')
  spec.add_dependency('aws-sdk-ie', '~> 1')
  spec.add_dependency('aws-sdk-ecdn', '~> 1')
  spec.add_dependency('aws-sdk-tmt', '~> 1')
  spec.add_dependency('aws-sdk-ticm', '~> 1')
  spec.add_dependency('aws-sdk-wss', '~> 1')
  spec.add_dependency('aws-sdk-bmvpc', '~> 1')
  spec.add_dependency('aws-sdk-trtc', '~> 1')
  spec.add_dependency('aws-sdk-dbbrain', '~> 1')
  spec.add_dependency('aws-sdk-iir', '~> 1')
  spec.add_dependency('aws-sdk-gs', '~> 1')
  spec.add_dependency('aws-sdk-tci', '~> 1')
  spec.add_dependency('aws-sdk-taf', '~> 1')
  spec.add_dependency('aws-sdk-es', '~> 1')
  spec.add_dependency('aws-sdk-bm', '~> 1')
  spec.add_dependency('aws-sdk-cms', '~> 1')
  spec.add_dependency('aws-sdk-npp', '~> 1')
  spec.add_dependency('aws-sdk-mariadb', '~> 1')
  spec.add_dependency('aws-sdk-ds', '~> 1')
  spec.add_dependency('aws-sdk-chdfs', '~> 1')
  spec.add_dependency('aws-sdk-cmq', '~> 1')
  spec.add_dependency('aws-sdk-tcb', '~> 1')
  spec.add_dependency('aws-sdk-captcha', '~> 1')
  spec.add_dependency('aws-sdk-memcached', '~> 1')
  spec.add_dependency('aws-sdk-ms', '~> 1')
  spec.add_dependency('aws-sdk-tia', '~> 1')
  spec.add_dependency('aws-sdk-sqlserver', '~> 1')
  spec.add_dependency('aws-sdk-domain', '~> 1')
  spec.add_dependency('aws-sdk-redis', '~> 1')
  spec.add_dependency('aws-sdk-dts', '~> 1')
  spec.add_dependency('aws-sdk-lp', '~> 1')
  spec.add_dependency('aws-sdk-tkgdq', '~> 1')
  spec.add_dependency('aws-sdk-cam', '~> 1')
  spec.add_dependency('aws-sdk-ecm', '~> 1')
  spec.add_dependency('aws-sdk-sts', '~> 1')
  spec.add_dependency('aws-sdk-msp', '~> 1')
  spec.add_dependency('aws-sdk-tke', '~> 1')
  spec.add_dependency('aws-sdk-facefusion', '~> 1')
  spec.add_dependency('aws-sdk-habo', '~> 1')
  spec.add_dependency('aws-sdk-bmeip', '~> 1')
  spec.add_dependency('aws-sdk-tdmq', '~> 1')
  spec.add_dependency('aws-sdk-iottid', '~> 1')
  spec.add_dependency('aws-sdk-dayu', '~> 1')
  spec.add_dependency('aws-sdk-cvm', '~> 1')
  spec.add_dependency('aws-sdk-cloudaudit', '~> 1')
  spec.add_dependency('aws-sdk-gaap', '~> 1')
  spec.add_dependency('aws-sdk-tbp', '~> 1')
  spec.add_dependency('aws-sdk-tav', '~> 1')
  spec.add_dependency('aws-sdk-gse', '~> 1')
  spec.add_dependency('aws-sdk-live', '~> 1')
  spec.add_dependency('aws-sdk-cfs', '~> 1')
  spec.add_dependency('aws-sdk-cr', '~> 1')
  spec.add_dependency('aws-sdk-af', '~> 1')
  spec.add_dependency('aws-sdk-iotvideo', '~> 1')
  spec.add_dependency('aws-sdk-ic', '~> 1')
  spec.add_dependency('aws-sdk-tts', '~> 1')
  spec.add_dependency('aws-sdk-scf', '~> 1')
  spec.add_dependency('aws-sdk-ckafka', '~> 1')
  spec.add_dependency('aws-sdk-tag', '~> 1')
  spec.add_dependency('aws-sdk-ecc', '~> 1')
  spec.add_dependency('aws-sdk-hcm', '~> 1')
  spec.add_dependency('aws-sdk-monitor', '~> 1')
  spec.add_dependency('aws-sdk-faceid', '~> 1')
  spec.add_dependency('aws-sdk-vpc', '~> 1')
  spec.add_dependency('aws-sdk-emr', '~> 1')
  spec.add_dependency('aws-sdk-tiia', '~> 1')
  spec.add_dependency('aws-sdk-clb', '~> 1')
  spec.add_dependency('aws-sdk-bmlb', '~> 1')
  spec.add_dependency('aws-sdk-cdb', '~> 1')
  spec.add_dependency('aws-sdk-organization', '~> 1')
  spec.add_dependency('aws-sdk-cloudhsm', '~> 1')
  spec.add_dependency('aws-sdk-cws', '~> 1')

  spec.metadata = {
    'source_code_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/tencentcloud-sdk',
    'changelog_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/blob/master/CHANGELOG.md'
  }
end
