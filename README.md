# Infrastruktur som kode med terraform 

Dagens øving skal gjøres i Cloud 9. Påloggingsinfo blir gitt i klasserom.

## Test S3 eksemplene selv 

* Git Clone følgende repository fra ditt Cloud9 miljø
```
git clone https://github.com/PGR301-2021/06-terraform-intro.git
```

Bucket navn i AWS er globalt unikt så dere kan ikke bruke pgr301-terraform-demobucket som bucket navn.
Endre derfor denne verdien i s3bucket.tf til for eksempel å inkludere navnet ditt. 

feks

```shell
resource "aws_s3_bucket" "mybucket" {
  bucket = "glenn-terraform-demo-bucket"
}
```

## Terraform uten backend 

* Gjør terraform init, plan , apply og destroy i katalogen  ```s3-no-backend``` 
* Kjør terraform show, og se på state fila i Cloud9

## Terraform med backend 

* I katalogen ```s3-with-backend``` -> Endre backend blokken i provider.tf - key må være unikt. Bruk feks ditt eget navn istedet for glenn.

```hcl
 backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "glennbech/06-terraform-intro.state"
    region = "eu-north-1"
  }
```

* Gjør terraform init, plan , apply og destroy i ```s3-with-backend``` mappene og se hva som skjer. Du får ingen state fil!
* Gå il AWS console og se at du har fått en fil i bucket med navn ```pgr301-2021-terraform-state``` 

## Følg Hashicorp sine tutorials 

Disse er godt skrevet. Les teksten, og ta deg god tid! Du gjør disse i ditt Cloud9 miljø

* Du skal IKKE gjøre aws configure  - rettigheter og nøkler er tatt hånd om av Cloud 9

* https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started

Du kan deretter gjøre følgende ;

* https://learn.hashicorp.com/tutorials/terraform/aws-change?in=terraform/aws-get-started
* https://learn.hashicorp.com/tutorials/terraform/aws-destroy?in=terraform/aws-get-started
* https://learn.hashicorp.com/tutorials/terraform/aws-variables?in=terraform/aws-get-started
* https://learn.hashicorp.com/tutorials/terraform/aws-outputs?in=terraform/aws-get-started

## Improviser 

Så på AWS provider dokumentasjonen https://registry.terraform.io/providers/hashicorp/aws/latest/docs 
Forsøk å få deployet en Apprunner tjenest med Terraform. 


