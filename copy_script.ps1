$items = @("ai-services", "backend", "docs", "google-fit-flow", "infra", "mobile", "src", ".env.example", ".env.local.example", ".gitignore", "DEPLOYMENT.md", "Dockerfile.web", "ENVIRONMENT_VARIABLES.md", "README.md", "WORKFLOW.md", "docker-compose.yml", "index.html", "package.json", "package-lock.json", "railway.json", "tsconfig.json", "vercel.json", "vite.config.ts")
foreach ($item in $items) {
    if (Test-Path $item) {
        Copy-Item -Path $item -Destination "vibe2vision_temp" -Recurse -Force -ErrorAction SilentlyContinue
    }
}
