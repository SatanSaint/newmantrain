rm -r ./allure-results
mockoon-cli start --data ./FileMockoon/testmockdata.json
newman run ./file_json/testmockdata.postman_collection.json -r allure
allure generate --clean ./allure-results
mockoon-cli stop all
git add .
git commit -m "update report"
git push origin master
