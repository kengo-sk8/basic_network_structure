# 概要
- `Terraform`を使用して`VPC`、`Subnet`、`Internet Gateway`、`Route Table`を構築
- 本番、ステージング、検証環境で運用出来る様に ディレクトリ構造を設計

# 認証
- AWSへの認証は、`AWS-Vault`を使用して行った
- `AWS-Vault`を使用する場合は、[[公式]AWS Vault](https://github.com/99designs/aws-vault)、[AWS-Vaultの設定方法](https://qiita.com/kengo-sk8/items/875fe7af4b865d69857a)を参考にして設定を行い使える様にする

``` sh
# 構文
aws-vault exec 任意のプロファイル名 -- Terraformコマンド
```

# コマンド
- 確認コマンド
```sh
terraform plan
```

- `AWS`にリソース作成コマンド
```sh
terraform apply
```

- `AWS`に構築した環境を消去
```sh
terraform destroy

```

- フォーマット修正
```sh
# main.tfと同じ階層にあるファイルに対して全て適用
terraform fmt -recursive

# modulesにあるファイルを指定
terraform fmt ../../modules/file_name
```

# 構築の詳細
- [Terraformを使用してVPC、Subnet、Internet Gateway、Route Tableを構築した](https://qiita.com/kengo-sk8/items/a1bdde4fafa71a7c9460)



