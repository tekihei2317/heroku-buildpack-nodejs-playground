# heroku-buildpack-nodejs-playground

This sample is a monorepo of Next.js and Express.

## Slug size

- yarn-classic: 138.6MiB(node_modules for all workspaces)
- yarn-berry-nodemodules-nonzero: 45.1MiB(node_modules for the server workspace)
- yarn-berry-nodemodules-zero: 113.MiB(node_modules for a server workspace and yarn cache)

If you use both zero install and node_modules(case 3), you may be able to reduce the slug size by deleting the yarn cache at the end.
