resource "aws_s3_bucket" "mi_datos_sensibles" {
  bucket = "mi-bucket-inseguro"
}

resource "aws_s3_bucket_acl" "ejemplo" {
  bucket = aws_s3_bucket.mi_datos_sensibles.id
  acl    = "public-read"
}