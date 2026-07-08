# Claude Code 配置补充

将 `cc switch` 配置如下，修改自己的 API Key，并将 `statusline.ps1` 和 `statusline.sh` 放在 `.claude` 根目录下。

```json
{
  "effortLevel": "xhigh",
  "enableAllProjectMcpServers": true,
  "enabledPlugins": {
    "andrej-karpathy-skills@karpathy-skills": true,
    "ponytail@ponytail": true
  },
  "env": {
    "ANTHROPIC_AUTH_TOKEN": "（YOUR_DEEPSEEK_API_KEY）",
    "ANTHROPIC_BASE_URL": "https://api.deepseek.com/anthropic",
    "ANTHROPIC_DEFAULT_HAIKU_MODEL": "deepseek-v4-flash",
    "ANTHROPIC_DEFAULT_OPUS_MODEL": "deepseek-v4-pro[1M]",
    "ANTHROPIC_DEFAULT_OPUS_MODEL_NAME": "deepseek-v4-pro",
    "ANTHROPIC_DEFAULT_SONNET_MODEL": "deepseek-v4-flash[1M]",
    "ANTHROPIC_DEFAULT_SONNET_MODEL_NAME": "deepseek-v4-flash",
    "ANTHROPIC_MODEL": "deepseek-v4-flash",
    "DEEPSEEK_API_KEY": "（YOUR_DEEPSEEK_API_KEY）"
  },
  "extraKnownMarketplaces": {
    "karpathy-skills": {
      "source": {
        "repo": "forrestchang/andrej-karpathy-skills",
        "source": "github"
      }
    },
    "ponytail": {
      "source": {
        "repo": "DietrichGebert/ponytail",
        "source": "github"
      }
    }
  },
  "includeCoAuthoredBy": false,
  "model": "opus",
  "permissions": {
    "defaultMode": "auto"
  },
  "statusLine": {
    "command": "bash ~/.claude/statusline.sh",
    "type": "command"
  },
  "theme": "dark-ansi"
}
```
