-- Helper: get string from metadata or kwargs
local function get_string(value)
  if value then
    return pandoc.utils.stringify(value)
  end
  return nil
end

-- Helper: get boolean from kwargs
local function get_boolean(value)
  if value == nil then return nil end
  local str = get_string(value):lower()
  if str == "true" or str == "1" or str == "yes" then
    return true
  elseif str == "false" or str == "0" or str == "no" then
    return false
  end
  return nil
end

-- Helper: get DOI from document metadata
local function get_doi(meta)
  if meta.doi then
    return get_string(meta.doi)
  end
  return nil
end

return {
  ['altmetrics'] = function(args, kwargs, meta)
    local doi = get_doi(meta)
    if not doi then
      return pandoc.Para({ pandoc.Str("**Error:** No DOI found in document metadata.") })
    end

    -- Get parameters
    local details_bool = get_boolean(kwargs.details)
    local type_str = get_string(kwargs.type)

    -- Build attribute list
    local attrs = { 'class="altmetric-embed"', 'data-doi="' .. doi .. '"' }

    -- Add data-badge-type only if type is provided and not "default"
    if type_str and type_str ~= "default" then
      table.insert(attrs, 'data-badge-type="' .. type_str .. '"')
    end

    -- Add details attribute if true
    if details_bool == true then
      table.insert(attrs, 'data-badge-details="right"')
    end

    local badge = '<div ' .. table.concat(attrs, ' ') .. '></div>'
    local script = '<script type="text/javascript" src="https://embed.altmetric.com/assets/embed.js" defer></script>'

    return {
      pandoc.RawBlock('html', script),
      pandoc.RawBlock('html', badge)
    }
  end
}