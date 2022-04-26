const { execFile } = require('child_process')
const version = process.env.npm_package_version

execFile('./deploy.sh', [version], { shell: true }, (error, stdout) => {
  if(error) {
    throw error
  }
  console.log(stdout)
})
