function Load_Stage_Json(json_path){
    var json = Json_Load(json_path);
    if (json == undefined) return -1;

    var ds_map = ds_map_create();

    ds_map_add(ds_map, "directory",    json[$ "directory"]    ?? "");
    ds_map_add(ds_map, "defaultZoom",  json[$ "defaultZoom"]  ?? 1);
    ds_map_add(ds_map, "stageUI",      json[$ "stageUI"]      ?? "");
    ds_map_add(ds_map, "boyfriend",    json[$ "boyfriend"]    ?? [0, 0]);
    ds_map_add(ds_map, "girlfriend",   json[$ "girlfriend"]   ?? [0, 0]);
    ds_map_add(ds_map, "opponent",     json[$ "opponent"]     ?? [0, 0]);
    ds_map_add(ds_map, "camera_speed", json[$ "camera_speed"] ?? 1);

    return ds_map;

}