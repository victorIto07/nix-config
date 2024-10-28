Remove-Item 'C:\Users\victo\Documents\nvim-conf\conf' -Recurse
Copy-Item 'C:\Users\victo\AppData\Local\nvim' 'C:\Users\victo\Documents\nvim-conf\conf\nvim'
Copy-Item 'C:\Users\victo\AppData\Local\nvim-data' 'C:\Users\victo\Documents\nvim-conf\conf\nvim-data'
git add -A
git commit -m "ajuste conf"
git push
