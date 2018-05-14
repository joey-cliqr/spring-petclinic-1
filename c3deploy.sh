#!/bin/bash
curl -k -X POST \
  https://sandbox.cliqr.com/v2/jobs \
  -H 'Accept: application/json' \
  -H 'Authorization: Basic am9tZXJ6X1AyNTo4Mjc2ODQzMThEMEU2RUIz' \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 1e3b1b58-7248-484b-b903-d5afe091a847' \
  -H 'X-CLIQR-API-KEY-AUTH: true' \
  -d '{
        "appId": "12616",
        "appVersion": "1",
        "name": "Pipeline_$job_name",
        "metadatas": [
                {
                        "namespace": "",
                        "name": "Name",
                        "value": "%JOB_NAME%",
                        "editable": false,
                        "required": true
                }
        ],
        "environmentId": "689",
        "tagIds": [
                711
        ],
        "securityProfileIds": [],
        "agingPolicyId": 125,
        "suspensionPolicyId": null,
        "policyIds": null,
        "preventTermination": false,
        "parameters": {
                "appParams": [],
                "cloudParams": {
                        "cloudRegionId": "73",
                        "accountId": "254"
                }
        },
        "jobs": [
                {
                        "tierId": "12617",
                        "policyIds": null,
                        "tagIds": [],
                        "securityProfileIds": [],
                        "parameters": {
                                "appParams": [
                                        {
                                                "name": "referredJob",
                                                "value": ""
                                        }
                                ],
                                "envParams": [],
                                "cloudParams": {
                                        "cloudRegionId": "73",
                                        "accountId": "254",
                                        "volumes": [],
                                        "rootVolumeSize": "0",
                                        "cloudProperties": [
                                                {
                                                        "name": "namespace",
                                                        "value": "default"
                                                }
                                        ],
                                        "nics": [],
                                        "instance": "Small",
                                        "containerVolumes": []
                                }
                        },
                        "numNodesToLaunch": 1
                }
        ],
        "timeZone": "GMT-05:00"
}'
