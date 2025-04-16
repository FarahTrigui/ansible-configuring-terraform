# Provisionnement Docker + Configuration Ansible

Ce projet combine **Terraform** et **Ansible** pour créer deux conteneurs Docker Ubuntu avec SSH activé, et les configurer automatiquement avec **Apache** via un playbook Ansible.

## 🔧 Technologies utilisées

- **Terraform** pour le provisionnement des conteneurs Docker
- **Ansible** pour la configuration logicielle (installation d'Apache)
- **Docker** comme environnement de virtualisation légère

---

## 📦 Fonctionnalités

- Création automatique de **2 conteneurs** Ubuntu avec SSH
- Attribution dynamique de **ports SSH (2200, 2201)** et **HTTP (8080, 8081)**
- Installation automatique de **Apache2** via un **playbook Ansible**
- Utilisation d’un fichier **inventory Ansible dynamique**

---

## 📁 Structure du projet

```
.
├── inventory          # Inventaire Ansible
├── main.tf            # Provisionnement des conteneurs Docker
├── output.tf          # Export des ports exposés
├── playbook.yml       # Playbook Ansible
└── README.md          # Documentation
```
## 🚀 Déploiement

### 1. Provisionner les conteneurs

```bash
terraform init
terraform apply
```

### 2. Configurer avec Ansible

```bash
ansible-playbook -i inventory playbook.yml
```

---

## 🌐 Accès Web

- [http://localhost:8080](http://localhost:8080)
- [http://localhost:8081](http://localhost:8081)

---

## 🧹 Nettoyage

```bash
terraform destroy
```

---

## 👩‍💻 Auteur

Farah Trigui – [GitHub](https://github.com/FarahTrigui) | [LinkedIn](https://www.linkedin.com/in/farah-trigui-a4474821a/)
