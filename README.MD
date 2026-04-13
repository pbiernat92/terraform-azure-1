🚀 Terraform Azure Project

Projekt demonstracyjny pokazujący użycie Infrastructure as Code (IaC) z wykorzystaniem Terraform oraz Microsoft Azure.

📌 Opis projektu

Celem projektu jest stworzenie i zarządzanie infrastrukturą w Azure za pomocą Terraform, zamiast ręcznego klikania w portalu.

Projekt obejmuje:

Resource Group
Storage Account
Storage Container
Virtual Network (VNet)
Subnet
🧱 Użyte technologie
Terraform
Azure CLI
Git
GitHub
�� Struktura projektu
.
├── main.tf
├── .gitignore
├── .terraform.lock.hcl
└── README.md
⚙️ Jak uruchomić projekt
1. Logowanie do Azure
az login
2. Inicjalizacja Terraform
terraform init
3. Sprawdzenie planu
terraform plan
4. Wdrożenie infrastruktury
terraform apply
🔁 Git Workflow (codzienna praca)
Start pracy
git switch main
git pull
Nowa zmiana
git switch -c feature/nazwa-zmiany
Commit
git add .
git commit -m "opis zmiany"
Push
git push
🔒 Bezpieczeństwo

Do repozytorium NIE są dodawane:

pliki terraform.tfstate
dane wrażliwe
klucze i sekrety

Dzięki .gitignore projekt jest bezpieczny do publikacji.

📚 Czego się nauczyłem
Podstaw Terraform (init, plan, apply)
Tworzenia zasobów w Azure jako kod
Zarządzania stanem (state)
Podstaw Git (commit, branch, push)
Workflow developerskiego
🚀 Możliwe rozszerzenia
Dodanie Virtual Machine
Użycie variables (variables.tf)
Podział na moduły
Remote state (Azure Storage)
CI/CD (GitHub Actions)
👨‍💻 Autor

Projekt edukacyjny w ramach nauki DevOps i chmury Azure.
