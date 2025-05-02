
echo "Starting tests..."

if ! curl --fail http://localhost:80; then
  echo "Test failed: Unable to reach localhost:80"
  exit 1
fi

if [ -f /usr/share/nginx/html/index.html ]; then
  echo "Tests passed!"
  exit 0
else
  echo "Tests failed."
  exit 1
fi
