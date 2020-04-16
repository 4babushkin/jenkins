# terraform_do

Создаем дроплет в digitalocean
```
cd terraform_do
terraform init 
terraform apply
```

# ansible
Тут устанавливается докер, посредством ansible
```
cd ansible
ansible-playbook -i inventory playbooks/all.yml -vvv
```
Логинимся на машину и ставим jenkins
```
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts 

docker logs --tail=100 -f jenkins
```
## Установка без Docker
```
apt install default-jre
java --version

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
Плагины

Git Parameter Plugin
Git Tag Message Plugin


git tag -a v0.1 -m "version 0.1"
git checkout -b v0.2-rc1
git push origin v0.2-rc1
git push origin --tags


def tag = sh(script: 'git describe --tags $(git rev-list --tags --max-count=1) | cut -c2-4', returnStdout: true).trim()



git describe --tags $(git rev-list --tags --max-count=1) | cut -dv -f 2

https://www.sourcefield.nl/post/jenkins-pipeline-tutorial/


echo "git@github.com:project/access-server-pd.git" | sed 's#.*/\([^.]*\).*#\1#'
