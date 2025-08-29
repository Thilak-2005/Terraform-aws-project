#!/bin/bash
apt update
apt install -y apache2


# Install the AWS CLI
apt install -y awscli

# Download the images from S3 bucket
#aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple Website</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>My Simple Website 1 EC2</h1>
    <nav>
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">Contact</a>
    </nav>
  </header>

  <section class="hero">
    <h2>Welcome!</h2>
    <p>This is a clean and simple HTML + CSS demo page.</p>
    <button>Click Me</button>
  </section>

  <footer>
    <p>© 2025 My Website</p>
  </footer>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2