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
  spec.name          = 'tencentcloud-sdk-cloudstudio'
  spec.version       = File.read(File.expand_path('lib/VERSION', __dir__)).strip
  spec.summary       = 'Tencent Cloud SDK for Ruby - CLOUDSTUDIO'
  spec.description   = 'Tencent Cloud Ruby SDK is the official software development kit, which allows Ruby developers to write software that makes use of Tencent Cloud service CLOUDSTUDIO.'
  spec.author        = 'Tencent Cloud'
  spec.homepage      = 'https://github.com/TencentCloud/tencentcloud-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['tencentcloudapi@tencent.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb', 'lib/VERSION']

  spec.metadata = {
    'source_code_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/tencentcloud-sdk-cloudstudio',
    'changelog_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/blob/master/CHANGELOG.md'
  }

  spec.add_dependency('tencentcloud-sdk-common', '~> 1.0')
end
