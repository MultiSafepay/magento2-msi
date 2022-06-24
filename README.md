<p align="center">
  <img src="https://camo.githubusercontent.com/517483ae0eaba9884f397e9af1c4adc7bbc231575ac66cc54292e00400edcd10/68747470733a2f2f7777772e6d756c7469736166657061792e636f6d2f66696c6561646d696e2f74656d706c6174652f696d672f6d756c7469736166657061792d6c6f676f2d69636f6e2e737667" width="400px" position="center">
</p>

# MultiSafepay plugin for Magento 2 (MSI-only)

This is the MSI stock handling module of our Magento 2 plugin.
For a complete installation of all our features, please check out our [meta package](https://github.com/MultiSafepay/magento2/).

## Usage
This module is part of the MultiSafepay suite for Magento 2.
It enables stock handling for Magento integrations which use MSI. 
For stock handling without MSI, please install the [Catalog Inventory Module](https://github.com/MultiSafepay/magento2-catalog-inventory) instead.


## Installation

This module can be installed via composer:

```shell
composer require multisafepay/magento2-msi
```

Next, enable the module and its dependant modules:
```bash
bin/magento module:enable MultiSafepay_ConnectCore MultiSafepay_ConnectMSI
```

Next, run the following commands:
```shell
php bin/magento setup:upgrade
php bin/magento setup:di:compile
php bin/magento setup:static-content:deploy
```

**Please keep in mind that after installing this module, you will only have proper stock handling.**

For a quick installation of all the modules, we recommend using [the meta package](https://github.com/MultiSafepay/magento2) instead.

## Support
You can create issues on our repository. If you need any additional help or support, please contact <a href="mailto:integration@multisafepay.com">integration@multisafepay.com</a>

We are also available on our Magento Slack channel [#multisafepay-payments](https://magentocommeng.slack.com/messages/multisafepay-payments/). 
Feel free to start a conversation or provide suggestions as to how we can refine our Magento 2 plugin.

## A gift for your contribution
We look forward to receiving your input. Have you seen an opportunity to change things for better? We would like to invite you to create a pull request on GitHub.
Are you missing something and would like us to fix it? Suggest an improvement by sending us an [email](mailto:integration@multisafepay.com) or by creating an issue.

What will you get in return? A brand new designed MultiSafepay t-shirt which will make you part of the team!

## License
[Open Software License (OSL 3.0)](https://github.com/MultiSafepay/Magento2Msp/blob/master/LICENSE.md)

## Want to be part of the team?
Are you a developer interested in working at MultiSafepay? [View](https://www.multisafepay.com/careers/#jobopenings) our job openings and feel free to get in touch with us.
