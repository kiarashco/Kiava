local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['ads'] then
                ads = data[tostring(msg.to.id)]['settings']['ads']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if ads == "yes" then
        delete_msg(msg.id, ok_cb, true)
        chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    end
end
 
return {patterns = {
"[Hh]ttps://(.*)",
"[Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.*)",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.*)",
"[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/(.*)",
"[Hh][Tt][Tt][Pp]://",
"[Ww][Ww][Ww]:",
"@(.*)",
"telegram.me/(.*)",
"TELEGRAM.ME/(.*)",
"Telegram.me/(.*)",
"https://telegram.me/joinchat/(.*)",
"(.*)@",
"(.*) telegram.me/(.*)",
"(.*) https://(.*)",
"(.*) www.(.*)";
"https://(.*)",
"http://(.*)",
"www.(.*)",
"WWW.(.*)",
"(.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) telegram.me/(.*)",
"(.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://telegram.me/(.*)",
"(.*) (.*) www.(.*)",
"(.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*)www.(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) www.(.*)",
"(.*) (.*) https://(.*)",
"(.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) https://(.*)",
"(.*) @",
"(.*) (.*) @(.*)",
"(.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
"(.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) (.*) @(.*)",
  },
  run = run
}
