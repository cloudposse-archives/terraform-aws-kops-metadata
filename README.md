# terraform-aws-kops-metadata [![Build Status](https://travis-ci.org/cloudposse/terraform-aws-kops-metadata.svg?branch=master)](https://travis-ci.org/cloudposse/terraform-aws-kops-metadata)

Terraform module to lookup resources within a [Kops](https://github.com/kubernetes/kops) cluster


## Usage

```hcl
module "kops_metadata" {
  source       = "git::https://github.com/cloudposse/terraform-aws-kops-metadata.git?ref=master"
  dns_zone     = "cluster.domain.com"
  bastion_name = "bastion"
  masters_name = "masters"
  nodes_name   = "nodes"
}
```


## Variables

|  Name            |  Default             |  Description                                                                     | Required |
|:-----------------|:---------------------|:---------------------------------------------------------------------------------|:--------:|
| `dns_zone`       | ``                   | Name of the Kops DNS zone                                                        | Yes      |
| `enabled`        | `true`               | Set to `false` to prevent the module from creating or accessing any resources    | No       |
| `bastion_name`   | `bastion`            | Bastion server subdomain name in the Kops DNS zone                               | No       |
| `masters_name`   | `masters`            | K8s masters subdomain name in the Kops DNS zone                                  | No       |
| `nodes_name`     | `nodes`              | K8s nodes subdomain name in the Kops DNS zone                                    | No       |


## Outputs

| Name                            | Description                            |
|:--------------------------------|:---------------------------------------|
| `vpc_id`                        | Kops VPC ID                            |
| `private_subnet_ids`            | Private subnets IDs in the VPC         |
| `utility_subnet_ids`            | Utility submets IDs in the VPC         |
| `bastion_security_group_arn`    | Bastion server Security Group ARN      |
| `bastion_security_group_id`     | Bastion server Security Group ID       |
| `masters_security_group_arn`    | K8s masters Security Group ARN         |
| `masters_security_group_id`     | K8s masters Security Group ID          |
| `nodes_security_group_arn`      | K8s nodes Security Group ARN           |
| `nodes_security_group_id`       | K8s nodes Security Group ID            |


## Credits

Thanks to [Gladly.com](https://www.gladly.com/) for the inspiration with this wonderful module:

https://github.com/sagansystems/terraform-aws-vpc-kops


## Help

**Got a question?**

File a GitHub [issue](https://github.com/cloudposse/terraform-aws-kops-metadata/issues), send us an [email](mailto:hello@cloudposse.com) or reach out to us on [Gitter](https://gitter.im/cloudposse/).


## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudposse/terraform-aws-kops-metadata/issues) to report any bugs or file feature requests.

### Developing

If you are interested in being a contributor and want to get involved in developing `terraform-aws-kops-metadata`, we would love to hear from you! Shoot us an [email](mailto:hello@cloudposse.com).

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

**NOTE:** Be sure to merge the latest from "upstream" before making a pull request!


## License

[APACHE 2.0](LICENSE) © 2018 [Cloud Posse, LLC](https://cloudposse.com)

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.


## About

`terraform-aws-kops-metadata` is maintained and funded by [Cloud Posse, LLC][website].

![Cloud Posse](https://cloudposse.com/logo-300x69.png)


Like it? Please let us know at <hello@cloudposse.com>

We love [Open Source Software](https://github.com/cloudposse/)!

See [our other projects][community]
or [hire us][hire] to help build your next cloud platform.

  [website]: https://cloudposse.com/
  [community]: https://github.com/cloudposse/
  [hire]: https://cloudposse.com/contact/


## Contributors

| [![Erik Osterman][erik_img]][erik_web]<br/>[Erik Osterman][erik_web] | [![Andriy Knysh][andriy_img]][andriy_web]<br/>[Andriy Knysh][andriy_web] |
|-------------------------------------------------------|------------------------------------------------------------------|

  [erik_img]: http://s.gravatar.com/avatar/88c480d4f73b813904e00a5695a454cb?s=144
  [erik_web]: https://github.com/osterman/
  [andriy_img]: https://avatars0.githubusercontent.com/u/7356997?v=4&u=ed9ce1c9151d552d985bdf5546772e14ef7ab617&s=144
  [andriy_web]: https://github.com/aknysh/
