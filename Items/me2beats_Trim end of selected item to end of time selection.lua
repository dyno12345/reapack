-- @description Trim end of selected item to end of time selection
-- @version 1.0
-- @author me2beats
-- @changelog
--  + init

function nothing()
end
reaper.defer(nothing)

it = reaper.GetSelectedMediaItem(0,0)
if it ~= nil then
  ts_start, ts_end = reaper.GetSet_LoopTimeRange(0, 0, 0, 0, 0)
  if ts_end - ts_start > 0 then
    reaper.ApplyNudge(0, 1, 3, 1, ts_end, false, 0)
  end
end
