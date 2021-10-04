# Infrastruktur som kode med terraform 

Dagens øving skal gjøres i Cloud 9. Påloggingsinfo blir gitt i klasserom.

## Test S3 eksemplene selv 

* Git Clone følgende repositoru 
```
https://github.com/PGR301-2021/06-terraform-intro.git
```

## Terraform uten backend 

* Gjør terraform init, plan , apply og destroy i  ```s3-no-backend``` 
* Kjør terraform show, og se på state fila i Cloud9

## Terraform med backend 

* Endre backend -blokken i provider.tf - key må være unikt. Bruk feks ditt eget navn istedet for glenn.

```hcl
 backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "glennbech/06-terraform-intro.state"
    region = "eu-north-1"
  }
```

* Gjør terraform init, plan , apply og destroy i ```s3-with-backend``` mappene og se hva som skjer. Du får ingen state fil!
* Gå il AWS console og se at du har fått en fil i ```pgr301-2021-terraform-state``` bucket

## Følg Hashicorp tutorials 

Disse er godt skrevet. Les teksten, og ta deg god tid!

* Du skal IKKE gjøre aws configure  - rettigheter og nøkler er tatt hånd om av Cloud 9

* https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started

Du kan deretter gjøre følgende ;

* https://learn.hashicorp.com/tutorials/terraform/aws-change?in=terraform/aws-get-started
* https://learn.hashicorp.com/tutorials/terraform/aws-destroy?in=terraform/aws-get-started
* https://learn.hashicorp.com/tutorials/terraform/aws-variables?in=terraform/aws-get-started
* https://learn.hashicorp.com/tutorials/terraform/aws-outputs?in=terraform/aws-get-started
