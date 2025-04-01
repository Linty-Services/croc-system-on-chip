docker run \
    --rm \
    --user="$(id -u):$(id -g)" \
    --net=host \
    -e SONAR_HOST_URL="https://oss.linty-services.com" \
    -e SONAR_TOKEN="xxx" \
    -v "${PWD}:/usr/src" \
    -v "/home/racodond/tools/tabby/tabbycad-eval-Linty-2025-12-31.lic:/opt/licenses/yosyshq-license.txt" \
    -v "/home/racodond/tools/linty-cache:/opt/sonar-scanner/.sonar/cache" \
    lintyservices/linty-scanner:4.0.0
