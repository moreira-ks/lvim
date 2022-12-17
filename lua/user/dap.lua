 local status_ok, dap = pcall(require, "dap")
  if not status_ok then
    return
  end
-- java config
dap.configurations.java = {
    {
      name = "Debug (Attach) - Remote",
      type = "java",
      request = "attach",
      hostName = "127.0.0.1",
      port = 5005,
    },
    {
      name = "Debug Non-Project class",
      type = "java",
      request = "launch",
      program = "${file}",
    },
  }

-- js/ts config
local firefoxExecutable = "/usr/bin/firefox"
dap.configurations.typescript = {
    {
      type = "node2",
      name = "node attach",
      request = "attach",
      program = "${file}",
      cwd = vim.fn.getcwd(),
      sourceMaps = true,
      protocol = "inspector",
    },
    {
      name = "Debug with Firefox",
      type = "firefox",
      request = "launch",
      reAttach = true,
      sourceMaps = true,
      url = "http://localhost:6969",
      webRoot = "${workspaceFolder}",
      firefoxExecutable = firefoxExecutable,
    },
    {
      name = "Launch",
      type = "pwa-node",
      request = "launch",
      program = "${file}",
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      skipFiles = { "<node_internals>/**" },
      protocol = "inspector",
      console = "integratedTerminal",
    },
    {
      name = "Attach to node process",
      type = "pwa-node",
      request = "attach",
      rootPath = "${workspaceFolder}",
      processId = require("dap.utils").pick_process,
    },
    {
      name = "Debug Main Process (Electron)",
      type = "pwa-node",
      request = "launch",
      program = "${workspaceFolder}/node_modules/.bin/electron",
      args = {
        "${workspaceFolder}/dist/index.js",
      },
      outFiles = {
        "${workspaceFolder}/dist/*.js",
      },
      resolveSourceMapLocations = {
        "${workspaceFolder}/dist/**/*.js",
        "${workspaceFolder}/dist/*.js",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      skipFiles = { "<node_internals>/**" },
      protocol = "inspector",
      console = "integratedTerminal",
    },
    {
      name = "Compile & Debug Main Process (Electron)",
      type = custom_adapter,
      request = "launch",
      preLaunchTask = "npm run build-ts",
      program = "${workspaceFolder}/node_modules/.bin/electron",
      args = {
        "${workspaceFolder}/dist/index.js",
      },
      outFiles = {
        "${workspaceFolder}/dist/*.js",
      },
      resolveSourceMapLocations = {
        "${workspaceFolder}/dist/**/*.js",
        "${workspaceFolder}/dist/*.js",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      sourceMaps = true,
      skipFiles = { "<node_internals>/**" },
      protocol = "inspector",
      console = "integratedTerminal",
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
  }

  dap.configurations.typescriptreact = dap.configurations.typescript
  dap.configurations.javascript = dap.configurations.typescript
  dap.configurations.javascriptreact = dap.configurations.typescript
