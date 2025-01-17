---
uid: storageruntime
---

# Storage runtime configuration

The Edge Data Store storage component is install with default configurations that are sufficient for most scenarios; however, the runtime characteristics of the storage component can be configured.  

**Note:** Consult with OSIsoft Support personnel before modifying the default configuration.

To update the storage runtime configuration, follow these steps:

1. Using any text editor, create a JSON file that contains the storage runtime configuration.

  - For the content structure, see [Parameters](#parameters).
          
1. Save the JSON file with the name Storage_Runtime.config.json.

1. From the same directory where the file exists, run the following curl script:

  ```bash
  curl -d "@Storage_Runtime.config.json" -H "Content-Type: application/json" -X PUT http://localhost:5590/api/v1/configuration/storage/Runtime
  ```

  **Note:** The @ symbol is a required prefix for this command.

## Parameters

The following table lists all available runtime parameters for EDS storage configuration.

| Parameter                       | Required | Type     | Description                                        |
|---------------------------------|----------|----------|----------------------------------------------------|
| [IngressDebugExpiration](#ingressdebugexpiration)      | Required | string   | If set, defines how long OMF ingress debug files should be produced. |
| [StreamStorageLimitMb](#streamstoragelimitmb)        | Required | integer  | The maximum size in megabytes that a stream can reach. |
| [StreamStorageTargetMb](#StreamStorageTargetMb)       | Required | integer  | The size in megabytes that a stream will be reduced to after StreamStorageLimitMb size is reached for a single stream. |
| [EnableTransactionLog](#enabletransactionlog)        | No       | Boolean     | Enables or disables the transaction log. The transaction log helps to ensure no data is lost should a device lose power. |
| [TransactionLogLimitMB](#transactionloglimitmb)     | No       | integer  | Maximum size for transaction log file. Transaction log files larger than this size will be deleted, resulting is loss of data should the device lose power. |
| [CheckpointRateInSec](#checkpointrateinsec)         | No       | integer  | How often to flush new data to store.  |

## Examples

The following is a valid runtime configuration example.

```
{
  "streamStorageLimitMb": 2,
  "streamStorageTargetMb": 1,
  "ingressDebugExpiration": "0001-01-01T00:00:00",
  "checkpointRateInSec": 30,
  "transactionLogLimitMB": 250,
  "enableTransactionLog": true
}
```

## IngressDebugExpiration

Use the Ingress Debug Expiration property when debugging OMF to set the date and time when debugging should be disabled. If a future date and time is is specified, incoming OMF messages are logged and HTTP request and response content is stored to disk for review. The debug logging stops at the data and time specified. Set the value to *null* to disable logging.

The following examples are valid strings representing date and time:

  - UTC: "yyyy-mm-ddThh:mm:ssZ"

  - Local: "mm-dd-yyyy hh:mm:ss"

When logging is activated, the content of an incoming OMF message, including the headers, is written to a file in the Logs directory. For an active application, this file can become quite large. As a result, debug information is stored to disk in another format than usual log messages. A single file is written to the usual logs directory for every incoming OMF type, container, and data message.

### IngressDebugExpiration type

`string`

- format: `date-time` date and time (according to [RFC 3339, section 5.6](http://tools.ietf.org/html/rfc3339))

- minimum length: 1 character

## StreamStorageLimitMb

Use the StreamStorageLimitMb property to set the maximum size in megabytes that a stream can reach. When a stream exceeds the size specified, older data is deleted from the file until the stream is at or below the StreamStorageTargetMb value. The target value, set in the StreamStorageTargetMb property, needs to be smaller than the maximum specified in this property.

### StreamStorageLimitMb type

`integer`

- minimum value: `2`
- maximum value: `2147483647`

## StreamStorageTargetMb

Use the StreamStorageTargetMb property to set the size in megabytes that a stream will be reduced to after StreamStorageLimitMb size is reached for a single stream. When a stream exceeds the size specified in the StreamStorageLimitMb property, older data is deleted from the file until the stream is at or below the StreamStorageTargetMb value. The target value needs to be smaller than the maximum specified in the StreamStorageLimitMb property.

### StreamStorageTargetMb type

`integer`

- minimum value: `1`
- maximum value: `2147483647`

## EnableTransactionLog

Use the EnableTransactionLog property to define whether the Storage component maintains a transaction log between checkpoint operations. The transaction log helps the product reduce data loss, should the host device lose power.

### EnableTransactionLog type

`bool`

## TransactionLogLimitMB

Use the TransactionLogLimitMB property to define the maximum size, in MB, of a transaction log. When a transaction log exceeds this size, it is deleted, which reduces the amount of data that can be recovered should the host device lose power.

### TransactionLogLimitMB type

`integer`

- minimum value: `1`
- maximum value: `2147483647`

## CheckpointRateInSec

Use the CheckpointRateInSec property to define, in seconds, how often the storage component ensures recent data and configuration changes are flushed to storage.  

A setting of 0 disables checkpointing. Disabling checkpointing reduces the resiliency of the product and thus data loss can occur if the host device loses power.

### CheckpointRateInSec type

`integer`

- minimum value: `0`
- maximum value: `86400`
