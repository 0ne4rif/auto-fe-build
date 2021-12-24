SET "WorkingDir=C:\Users\{YOUR_PC_USER}"
SET "BaseURL=https://{REPO_SITE}"
SET "BranchName=main"

cd "%WorkingDir%\Documents"
git clone "%BaseURL%/{REPO}/_git/{REPO}"
cd "{REPO}\{REPO}\ClientApp"
git checkout "%BranchName%"
npm install && npm run build
pause
