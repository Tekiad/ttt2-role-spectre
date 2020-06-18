CreateConVar("ttt2_spectre_declare_mode", 2, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_spectre_revive_health", 50, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
-- CreateConVar("ttt2_spectre_smoke_enable", 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

hook.Add("TTTUlxDynamicRCVars", "ttt2_ulx_spectre_dynamic_convars", function(tbl)
  tbl[ROLE_SPECTRE] = tbl[ROLE_SPECTRE] or {}

  -- table.insert(tbl[ROLE_SPECTRE], {
  --   cvar = "ttt2_spectre_smoke_enable",
  --   checkbox = true,
  --   desc = "ttt2_spectre_smoke_enable (def. 1)"
  -- })

  table.insert(tbl[ROLE_SPECTRE], {
    cvar = "ttt2_spectre_revive_health",
    slider = true,
    min = 1,
    max = 100,
    decimal = 0,
    desc = "ttt2_spectre_revive_health (def. 50)"
  })

  table.insert(tbl[ROLE_SPECTRE], {
    cvar = "ttt2_spectre_declare_mode",
    combobox = true,
    desc = "Declare Mode (Def. 2)",
    choices = {
      "0 - Don't declare the Spectre's death.",
      "1 - Declare the Spectre's death to every player.",
      "2 - Declare the Spectre's death to only detectives."
    },
    numStart = 0
  })
end)
