When we need get code from outsourcers to our private Gitlab
Steps:
1. Clone our private repo to instance
```sh
git clone PRIVATE_REPO_PATH
```
2. Add another source for repo and name it **out**
```sh
git remote add out OUTSOURCE_REPO_PATH
``` 
3. Fetch all commits
```sh
git fetch out
```
4. Create develop branch
```sh
git branch develop out/main
```
5. Switch to develop branch
```sh
git checkout develop
```
6. Push commits to private Gitlab
```sh
git push -u origin -o merge_request.create
```

Create CRON job to automate this proccess:

```sh
* * * * * /path/to/script/automerge.sh
```
