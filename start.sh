sleep 20
#!/bin/bash
set -e

cd /blog
rm -rf tmp/pids/server.pid

rails db:drop

rails db:create

rails db:migrate

rails server -b 0.0.0.0