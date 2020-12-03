import 'flutter_aws_s3_constants.dart'

const region = SERVER_REGION;
const bucketId = BUCKET_ID;

/**
* Final s3 Client for AWS Service
*/
final AwsS3Client s3 = AwsS3Client(
    region: region,
    host: "s3.$region.amazonaws.com",
    bucketId: bucketId,
    accessKey: ACCESS_KEY,
    secretKey: SECRET_KEY);
