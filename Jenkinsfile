#!groovy

// node {
//     //последний коммит с тегом 
//     env.GIT_TAG_INIT = sh(script: "git rev-list --tags --max-count=1", returnStdout: true)?.trim()
// }

properties([disableConcurrentBuilds()])

pipeline {
    agent any
    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }
    stages {
      //  stage("Init step") {
      //      when {
      //         environment name: 'GIT_TAG_INIT', value: null
       //     }
       //     steps {
       //         sh "git tag -a v0.1 -m \"version 0.1\""
      //          sh "git push origin --tags"
      //         sh "git checkout -b v0.2-rc1"
       //         sh "git push origin v0.2-rc1"
      //      }
     //   }
        stage("Tag step") {
            steps {

                script {
                // определяем версию последнего тега
                env.GIT_TAG_LAST = sh(returnStdout: true, script: 'git describe --tags $(git rev-list --tags --max-count=1) | cut -dv -f 2').trim()
                // новая версия для тега
                NEW_TAG = sh(script: "echo ${GIT_TAG_LAST}+0.1 | bc", returnStdout: true)?.trim()
                // новая версия для ветки
                BRANCH_TAG = sh(script: "echo ${GIT_TAG_LAST}+0.2 | bc", returnStdout: true)?.trim()

                // последний коммит с тегом 
                GIT_TAG_BRANCHE = sh(script: "git rev-list --tags --max-count=1", returnStdout: true)?.trim()
          

                echo " ==  Показать envoroment для отладки =="
                echo sh(script: 'env|sort', returnStdout: true)
                echo GIT_TAG_BRANCHE
                // если коммит не совподает с коммитом с тегом
                    if ( GIT_TAG_BRANCHE != env.GIT_COMMIT )
                    {
                    sh "git tag -a v${NEW_TAG} -m \"version ${NEW_TAG}\""
                    sh "git push origin --tags"
                    sh "git checkout -b v${BRANCH_TAG}-rc1"
                    sh "git push origin v${BRANCH_TAG}-rc1"
                    }
                }
            }
        }
    }
    post { 
    always { 
        cleanWs()
        }
    }
}

