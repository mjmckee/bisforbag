_addon.name = 'BisForBag'
_addon.author = 'Pesche'
_addon.version = '0.0.0.1'
_addon.command = 'bisforbag'

isVisible = false

load_bisforbag = function(...)
    windower.add_to_chat(160, 'B is for Bag... loaded.')
    create_interface()
end

unload_bisforbag = function(...)
    windower.add_to_chat(160, 'B is for Bag... unloaded.')
end

create_interface = function(...)
    windower.prim.create('bisforbag')
    windower.prim.set_color('bisforbag', 130, 255, 255, 255)
    windower.prim.set_size('bisforbag', 400, 400)
    windower.prim.set_position('bisforbag', 400, 400)
    windower.prim.set_visibility('bisforbag', true)

    windower.text.create('bisforbagtext')
    windower.text.set_color('bisforbagtext', 255, 255, 0, 0)
    windower.text.set_font('bisforbagtext', 'Tahoma')
    windower.text.set_font_size('biforbagtext', 12)
    windower.text.set_location('bisforbagtext', 401, 401)
    windower.text.set_text('bisforbagtext', 'Testing')
    windower.text.set_visibility('bisforbagtext', true)
end

windower.register_event('load', load_bisforbag())
windower.register_event('unload', unload_bisforbag())

--windower.register_event('prerender', renderBags)
--renderBags = function(...)
--   if isVisible = true then      
--    end
--end