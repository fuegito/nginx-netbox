#/bin/sh

app_root="/opt/app-root/src"
branch="master"
repo_dir="netbox-${branch}"
repo_zip="${repo_dir}.zip"
static_folder="${app_root}/netbox-static"

curl https://codeload.github.com/netbox-community/netbox/zip/master > ${repo_zip} 2>/dev/null
unzip ${repo_zip} >/dev/null 2>&1
cp -a ${repo_dir}/netbox/project-static ${static_folder}
rm -rf ${repo_dir} ${repo_zip}
