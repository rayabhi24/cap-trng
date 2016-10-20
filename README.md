

- Sample app
  - https://github.com/mohitsethi/maven-sample-app


Code Propagation - pattern:

Product1
  - branch
    - master
      - NO dev check-ins code here directly
      - Environments/Stack: Prod (jenkins deployment)

    - develop
      - dev check-ins code here
      - one commit for 1 feature
      - Jenkins validates pull-request(code proposal),
      - If Test == OK, Jenkins merges to develop
      - Environments/Stack: Stage (jenkins deployment)
      - Release: tags, provide description {JIRA tickest}
      ?? How propagation from develop -> master
        - Open PR from develop -> master, when: git-tag is created.

    



### Install Jenkins plugins offline
  - install_jenkins_plugins.sh
