#
# Cookbook Name:: test-class-jenkins
# Recipe:: default
#
# Copyright (C) 2014 Chef Software, Inc.
#
# Licensed under the MIT License, you may not use this file except in
# compliance with the License. You may obtain a copy of the License at
#
#     http://opensource.org/licenses/mit-license.php
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe 'jenkins::java'
include_recipe 'jenkins::master'
