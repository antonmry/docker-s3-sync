# docker-s3-sync

Very simple image to sync volumes and S3 buckets.

## Expected Environment Variables
1. ```ACCESS_KEY``` - AWS Access Key
2. ```SECRET_KEY``` - AWS Secret Access Key
3. ```SOURCE_PATH``` - Source files to be synced, example: ```/var/www/uploads```
4. ```DESTINATION_PATH``` - Destination of where to sync files to, example: ```s3://my-bucket/site-uploads```
5. ```BUCKET_LOCATION``` - AWS Region for bucket, ex: ```eu-west-1```

## Docker-compose

Edit docker-compose.yml with your configuration and execute:

```
docker-compose up
```

## Kubernetes

Edit kubernetes.yml with your configuration and execute:

```
kubectl apply -f kubernetes.yml
```

You could use [CronJobs](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/) to execute it periodically.


## Docker Hub
