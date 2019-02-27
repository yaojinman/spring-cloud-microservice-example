workflow "打包测试" {
  on = "push"
  resolves = ["HTTP client"]
}

action "HTTP client" {
  uses = "LucaFeger/action-maven-cli@9d8f23af091bd6f5f0c05c942630939b6e53ce44"
  args = "dependency:resolve dependency:sources"
}
