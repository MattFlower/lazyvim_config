return {
  {
    "mfussenegger/nvim-jdtls",
    keys = {
      {
        "<leader>tg",
        function()
          require("jdtls.tests").goto_subjects()
        end,
        desc = "Goto Class/Test",
      },
      {
        "<leader>cj",
        function()
          require("jdtls").jshell()
        end,
        desc = "JShell",
      },
      -- {
      --   "<leader>cJ",
      --   function()
      --     require("jdtls").jol()
      --   end,
      --   desc = "Java Object Layout",
      -- },
    },
    optional = true,
    opts = {
      jol_path = "/Users/mflower/dev/jol/jol-cli-0.17.jar",
      settings = {
        java_executable = "/Users/mflower/.sdkman/candidates/java/21.0.9-zulu/bin/java",
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-11",
                path = "/Users/mflower/.sdkman/candidates/java/11.0.18-zulu/",
              },
              {
                name = "JavaSE-17",
                path = "/Users/mflower/.sdkman/candidates/java/17.0.14-zulu/",
              },
              {
                name = "JavaSE-21",
                path = "/Users/mflower/.sdkman/candidates/java/21.0.9-zulu",
              },
            },
          },
          maven = {
            downloadSources = true,
            downloadJavadocs = true,
          },
          format = {
            enabled = true,
            settings = {
              url = "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml",
              profile = "GoogleStyle",
            },
          },
        },
      },
    },
  },
}
