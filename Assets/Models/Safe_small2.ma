//Maya ASCII 2014 scene
//Name: Safe_small2.ma
//Last modified: Tue, Apr 22, 2014 06:37:11 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4433597814784311 1.3784898700479462 0.73926004488550145 ;
	setAttr ".r" -type "double3" -40.538352729903359 72.200000000000728 -1.0404329506622621e-014 ;
	setAttr ".rp" -type "double3" 7.105427357601002e-017 -7.105427357601002e-017 -1.4210854715202004e-016 ;
	setAttr ".rpt" -type "double3" 9.0564327854960537e-015 1.3944029232897505e-015 2.7119136796697344e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.7875517247781856;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 22.340412110090256 27.33922278881073 25.925240218639374 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.26529404813544866 1.05158949205299 0.51465395473397191 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.15830860799890506;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.22340412775278298 0.27339221696830401 1.0719559007165358 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.7175504296326416;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.1262305253801732 0.27945605353132136 0.50928376407242537 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.20527535999665031;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".rp" -type "double3" 0.00036029927303651735 0.020307451154616737 0.00013039742513655029 ;
	setAttr ".sp" -type "double3" 0.00036029927303651735 0.020307451154616737 0.00013039742513655029 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[3]" -type "float3" 0 0.013748398 0.020929679 ;
	setAttr ".pt[10]" -type "float3" 0 0.013748398 0.020929679 ;
	setAttr ".pt[138]" -type "float3" 0 0.013748398 0 ;
	setAttr ".pt[139]" -type "float3" 0 0.013748398 0 ;
createNode mesh -n "polySurfaceShape2" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 10 "f[0:20]" "f[25:28]" "f[33:38]" "f[40]" "f[43:49]" "f[53:58]" "f[60]" "f[63:68]" "f[70:74]" "f[83:98]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 13 "f[21:24]" "f[29]" "f[31:32]" "f[39]" "f[41:42]" "f[51:52]" "f[59]" "f[61:62]" "f[69]" "f[99]" "f[102:103]" "f[107:109]" "f[115:126]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 5 "f[30]" "f[50]" "f[75:82]" "f[104:106]" "f[112:114]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 2 "f[100:101]" "f[110:111]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.625 0 0.625 0.25
		 0.625 0.5 0.375 0.75 0.625 0.75 0.625 1 0.875 0 0.875 0.25 0.625 0.23696621 0.375
		 0.51303381 0.625 0.51303381 0.875 0.23696621 0.39118159 0.5 0.39118159 0.51303381
		 0.39118159 0.75 0.39118159 0 0.375 0.74148399 0.39118159 0.74148399 0.625 0.74148399
		 0.875 0.0085160406 0.39118162 1 0.38654414 1 0.375 0.98951668 0.375 0.26047969 0.375
		 0.5 0.125 0 0.36451671 0 0.125 0.0085160406 0.36451674 0.0085160369 0.38654411 0.25
		 0.39118159 0.25 0.125 0.23696621 0.36451671 0.23696621 0.36451671 0.25 0.125 0.25
		 0.375 0 0.38654411 -5.0759535e-010 0.38654411 0.0085160369 0.375 0.0085160369 0.38654414
		 0.23696619 0.375 0.25 0.375 0.23696621 0.625 0.0085160378 0.39118159 0.23696621 0.39118159
		 0.0085160369 0.39118159 0.0085160378 0.39695367 0.23696621 0.62499994 0.0085160369
		 0.62499994 0.23696621 0.39695367 0.0085160369 0.39118159 0.23696621 0.62499994 0.20879634
		 0.39695367 0.20879634 0.39118159 0.20879634 0.39118159 0.20879634 0.38654414 0.20879632
		 0.36451671 0.20879634 0.375 0.20879634 0.125 0.20879634 0.375 0.54120368 0.39118159
		 0.54120368 0.625 0.54120368 0.875 0.20879634 0.625 0.20879634 0.62499994 0.03398893
		 0.39695367 0.033988923 0.39118159 0.03398893 0.39118159 0.03398893 0.38654411 0.033988919
		 0.36451676 0.03398893 0.37500003 0.03398893 0.125 0.033988927 0.375 0.71601111 0.39118159
		 0.71601111 0.625 0.71601111 0.875 0.033988927 0.625 0.03398893 0.62499994 0.02049415
		 0.39695367 0.020494144 0.39118159 0.020494152 0.39118159 0.02049415 0.38654411 0.020494143
		 0.36451676 0.02049415 0.37500003 0.02049415 0.125 0.020494148 0.375 0.7295059 0.39118159
		 0.7295059 0.625 0.7295059 0.875 0.020494148 0.625 0.020494152 0.625 0.22028276 0.39695367
		 0.22028275 0.39118159 0.22028276 0.39118159 0.22028276 0.38654414 0.22028273 0.36451674
		 0.22028276 0.375 0.22028276 0.125 0.22028275 0.375 0.52971727 0.39118159 0.52971727
		 0.625 0.52971727 0.875 0.22028275 0.625 0.22028276 0.56155258 0.23696621 0.56155264
		 0.22028275 0.56155258 0.20879634 0.56155258 0.033988927 0.56155258 0.020494148 0.56155258
		 0.0085160369 0.56155264 0.22028275 0.56155258 0.20879634 0.62499994 0.20879634 0.625
		 0.22028276 0.56155258 0.033988927 0.56155258 0.020494148 0.62499994 0.02049415 0.62499994
		 0.03398893 0.625 0 0.875 0 0.875 0.0085160406 0.625 0.0085160378 0.875 0.23696621
		 0.875 0.25 0.625 0.25 0.625 0.23696621 0.875 0.020494148 0.625 0.020494152 0.875
		 0.20879634 0.875 0.22028275 0.625 0.22028276 0.625 0.20879634 0.875 0.033988927 0.625
		 0.03398893 0.625 0.0085160378 0.625 0.020494152 0.62499994 0.02049415 0.62499994
		 0.0085160369 0.62499994 0.20879634 0.625 0.20879634 0.625 0.22028276 0.625 0.03398893
		 0.62499994 0.03398893 0.625 0.23696621 0.62499994 0.23696621 0.625 0.22028276 0.625
		 0.22028276 0.62499994 0.20879634 0.62499994 0.03398893 0.62499994 0.02049415 0.625
		 0.0085160378 0.625 0.020494152 0.62499994 0.02049415 0.62499994 0.0085160369 0.62499994
		 0.20879634 0.625 0.20879634 0.625 0.22028276 0.625 0.22028276 0.625 0.03398893 0.62499994
		 0.03398893 0.625 0.23696621 0.62499994 0.23696621 0.625 0.22028276;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 132 ".vt[0:131]"  0.42712048 -0.0017572618 0.47962371 0.42712048 0.54854172 0.47962371
		 -0.0059561925 0.54854172 0.0027196251 0.42712048 0.54854172 0.0027196251 -0.0059561925 -0.0017572618 0.0027196251
		 0.42712048 -0.0017572618 0.0027196251 0.42712048 0.51985186 0.47962371 -0.0059561925 0.51985186 0.0027196251
		 0.42712048 0.51985186 0.0027196251 0.022075273 0.54854172 0.47962371 0.022075273 0.54854172 0.0027196251
		 0.022075273 0.51985186 0.0027196251 0.022075273 -0.0017572618 0.0027196251 0.022075273 -0.0017572618 0.47962371
		 0.022075268 0.51985186 0.47962371 0.42712048 0.016988199 0.47962371 0.022075273 0.016988199 0.47962371
		 -0.0059561925 0.016988207 0.0027196251 0.022075271 0.016988207 0.0027196251 0.42712048 0.016988207 0.0027196251
		 0.42712048 0.016988199 0.50474894 0.42712048 0.51985186 0.50474894 -0.0059561925 -0.0017572618 0.45962566
		 0.0140418 -0.0017572618 0.47962371 -0.0059561925 0.016988199 0.45962566 0.0140418 0.016988199 0.47962371
		 0.0140418 0.54854172 0.47962371 -0.0059561925 0.54854172 0.45962566 0.0140418 0.51985186 0.47962371
		 -0.0059561925 0.51985186 0.45962566 0.032074284 0.016988199 0.50474894 0.022075273 0.016988199 0.49474975
		 0.032074284 0.51985186 0.50474894 0.022075268 0.51985186 0.49474975 0.42712048 0.45784444 0.50474894
		 0.032074284 0.45784444 0.50474894 0.022075269 0.45784444 0.49474975 0.022075269 0.45784444 0.47962371
		 0.0140418 0.45784444 0.47962371 -0.0059561925 0.45784444 0.45962569 -0.0059561925 0.45784444 0.0027196251
		 0.022075273 0.45784444 0.0027196251 0.42712048 0.45784444 0.0027196251 0.42712048 0.45784444 0.47962371
		 0.42712048 0.073059037 0.50474894 0.032074284 0.073059008 0.50474894 0.022075273 0.073059037 0.49474975
		 0.022075273 0.073059037 0.47962376 0.0140418 0.073059008 0.47962371 -0.0059561925 0.073059037 0.45962569
		 -0.0059561925 0.073059008 0.0027196251 0.022075273 0.073059008 0.0027196251 0.42712048 0.073059008 0.0027196251
		 0.42712048 0.073059037 0.47962376 0.42712048 0.043354377 0.50474894 0.032074284 0.04335437 0.50474894
		 0.022075273 0.043354377 0.49474975 0.022075273 0.043354377 0.47962376 0.0140418 0.04335437 0.47962371
		 -0.0059561925 0.043354377 0.45962569 -0.0059561925 0.04335437 0.0027196251 0.022075273 0.04335437 0.0027196251
		 0.42712048 0.04335437 0.0027196251 0.42712048 0.043354377 0.47962376 0.42712048 0.48312828 0.50474894
		 0.032074284 0.48312825 0.50474894 0.022075269 0.48312828 0.49474975 0.022075269 0.48312828 0.47962376
		 0.0140418 0.48312825 0.47962371 -0.0059561925 0.48312828 0.45962569 -0.0059561925 0.48312825 0.0027196251
		 0.022075273 0.48312825 0.0027196251 0.42712048 0.48312825 0.0027196251 0.42712048 0.48312828 0.47962376
		 0.31721017 0.51985186 0.50474894 0.31721017 0.48312828 0.50474894 0.31721017 0.45784444 0.50474894
		 0.31721017 0.073059008 0.50474894 0.31721017 0.04335437 0.50474894 0.31721017 0.016988199 0.50474894
		 0.34411967 0.48312828 0.51578516 0.34411967 0.45784444 0.51578516 0.42238253 0.45784444 0.51578516
		 0.42238253 0.48312828 0.51578516 0.34411967 0.073059008 0.51578516 0.34411967 0.04335437 0.51578516
		 0.42238253 0.043354377 0.51578516 0.42238253 0.073059037 0.51578516 0.44612983 -0.0017572618 0.0027196251
		 0.44612983 -0.0017572618 0.45719853 0.44612983 0.016988207 0.0027196251 0.44612983 0.016988199 0.45719853
		 0.44612983 0.51985186 0.0027196251 0.44612983 0.51985186 0.45719853 0.44612983 0.54854172 0.0027196251
		 0.44612983 0.54854172 0.45719853 0.44612983 0.04335437 0.0027196251 0.44612983 0.043354381 0.45719856
		 0.44612983 0.45784444 0.0027196251 0.44612983 0.45784444 0.45719853 0.44612983 0.48312825 0.0027196251
		 0.44612983 0.48312828 0.45719856 0.44612983 0.073059008 0.0027196251 0.44612983 0.073059037 0.45719856
		 0.44354725 0.016988199 0.47683012 0.44354725 0.043354377 0.47683018 0.44354725 0.043354377 0.50474894
		 0.44354725 0.016988199 0.50474894 0.44354725 0.073059037 0.47683018 0.44354725 0.073059037 0.50474894
		 0.43880931 0.073059037 0.51578516 0.43880931 0.043354377 0.51578516 0.44354725 0.45784444 0.47683012
		 0.44354725 0.45784444 0.50474894 0.44354725 0.48312828 0.47683018 0.44354725 0.48312828 0.50474894
		 0.44354725 0.51985186 0.47683012 0.44354725 0.51985186 0.50474894 0.43880931 0.48312828 0.51578516
		 0.43880931 0.45784444 0.51578516 0.45276442 0.016988212 0.47758538 0.45276442 0.043354381 0.47758538
		 0.45276442 0.043354381 0.49673134 0.45276442 0.016988212 0.49673134 0.45276442 0.073059037 0.47758538
		 0.45276442 0.073059037 0.49673134 0.45276442 0.45784444 0.47758538 0.45276442 0.45784444 0.49673134
		 0.45276442 0.48312828 0.47758538 0.45276442 0.48312828 0.49673134 0.45276442 0.51985186 0.47758538
		 0.45276442 0.51985186 0.49673134;
	setAttr -s 257 ".ed";
	setAttr ".ed[0:165]"  2 10 0 4 12 0 0 15 1 1 3 1 2 7 0 3 8 1 4 22 0 5 0 1
		 6 1 1 6 14 0 7 70 0 8 72 1 7 11 1 9 1 0 10 3 0 9 10 1 11 8 1 10 11 1 12 5 0 11 71 1
		 13 0 0 12 13 1 14 28 1 13 16 1 14 9 1 15 63 0 16 57 0 15 16 0 16 25 1 17 4 0 18 12 1
		 17 18 1 19 5 1 18 19 1 16 31 0 14 33 0 15 20 1 20 79 0 6 21 1 20 54 1 21 74 0 23 13 0
		 23 22 0 24 17 1 26 9 0 27 2 0 26 27 0 29 7 1 22 24 0 25 23 0 24 59 0 26 28 0 28 68 0
		 29 27 0 25 24 1 28 29 1 30 31 0 33 32 0 31 56 0 32 65 0 35 45 0 34 76 0 36 66 0 35 36 1
		 37 67 0 36 37 1 38 48 0 37 38 1 39 69 0 38 39 1 40 50 0 39 40 1 41 51 1 40 41 1 42 52 1
		 41 42 1 43 73 0 43 34 0 44 34 0 45 55 0 44 77 0 46 36 0 45 46 1 47 37 0 46 47 1 48 58 0
		 47 48 1 49 39 0 48 49 1 50 60 0 49 50 1 51 61 1 50 51 1 52 62 1 51 52 1 53 43 0 53 44 0
		 55 30 0 54 78 0 56 46 0 55 56 1 57 47 0 56 57 1 58 25 0 57 58 1 59 49 0 58 59 1 60 17 0
		 59 60 1 61 18 1 60 61 1 62 19 1 61 62 1 63 53 0 64 21 1 65 35 0 64 75 0 66 33 0 65 66 1
		 67 14 0 66 67 1 68 38 0 67 68 1 69 29 0 68 69 1 70 40 0 69 70 1 71 41 1 70 71 1 72 42 1
		 71 72 1 73 6 0 74 32 0 75 65 1 74 75 1 76 35 1 75 76 0 77 45 1 76 77 1 78 55 1 77 78 0
		 79 30 0 78 79 1 75 80 0 76 81 0 80 81 0 34 82 1 82 81 0 64 83 1 82 83 1 83 80 0 77 84 0
		 78 85 0 84 85 0 54 86 1 86 85 0 44 87 1 86 87 1 87 84 0 5 88 0 0 89 0 88 89 0 19 90 1
		 90 88 0 15 91 1 90 91 1;
	setAttr ".ed[166:256]" 89 91 0 8 92 1 6 93 1 92 93 1 3 94 0 94 92 0 1 95 0
		 95 94 0 93 95 0 62 96 1 96 90 0 63 97 1 96 97 1 91 97 0 42 98 1 43 99 1 98 99 1 72 100 1
		 100 98 0 73 101 1 100 101 1 99 101 0 52 102 1 53 103 1 102 103 1 98 102 0 103 99 0
		 102 96 0 97 103 0 92 100 0 101 93 0 15 104 0 63 105 1 104 105 1 54 106 0 20 107 0
		 107 106 1 104 107 1 53 108 0 105 108 1 44 109 1 108 109 1 106 109 0 87 110 0 109 110 0
		 86 111 0 111 110 0 106 111 0 43 112 0 34 113 1 112 113 1 73 114 1 112 114 1 64 115 0
		 113 115 0 6 116 0 114 116 1 21 117 0 116 117 1 115 117 1 83 118 0 115 118 0 82 119 0
		 119 118 0 113 119 0 104 120 0 105 121 1 120 121 0 106 122 1 121 122 1 107 123 0 123 122 0
		 120 123 0 108 124 0 121 124 0 109 125 0 124 125 0 122 125 0 112 126 0 113 127 0 126 127 0
		 114 128 1 126 128 0 115 129 1 128 129 1 127 129 0 116 130 0 128 130 0 117 131 0 130 131 0
		 129 131 0;
	setAttr -s 127 -ch 514 ".fc[0:126]" -type "polyFaces" 
		f 4 49 41 23 28
		mu 0 4 37 36 15 44
		f 4 31 30 -2 -30
		mu 0 4 16 17 14 3
		f 5 1 21 -42 42 -7
		mu 0 5 3 14 20 21 22
		f 4 -162 -164 165 -167
		mu 0 4 117 118 119 120
		f 4 6 48 43 29
		mu 0 4 25 26 28 27
		f 4 51 -23 24 -45
		mu 0 4 29 39 43 30
		f 4 -48 53 45 4
		mu 0 4 31 32 33 34
		f 4 0 17 -13 -5
		mu 0 4 24 12 13 9
		f 4 -170 -172 -174 -175
		mu 0 4 124 121 122 123
		f 4 13 3 -15 -16
		mu 0 4 30 1 2 12
		f 4 -18 14 5 -17
		mu 0 4 13 12 2 10
		f 4 -31 33 32 -19
		mu 0 4 14 17 18 4
		f 4 -22 18 7 -21
		mu 0 4 20 14 4 5
		f 4 -24 20 2 27
		mu 0 4 44 15 0 42
		f 4 -25 -10 8 -14
		mu 0 4 30 43 8 1
		f 4 142 -38 39 98
		mu 0 4 107 108 47 77
		f 4 103 -29 26 104
		mu 0 4 81 37 44 80
		f 4 -44 50 108 107
		mu 0 4 27 28 82 84
		f 4 110 109 -32 -108
		mu 0 4 85 86 17 16
		f 4 -34 -110 112 111
		mu 0 4 18 17 86 87
		f 4 -166 -177 178 -180
		mu 0 4 120 119 125 126
		f 4 -27 34 58 102
		mu 0 4 80 44 45 79
		f 6 -28 36 37 141 56 -35
		mu 0 6 44 42 47 108 49 45
		f 4 233 235 -238 -239
		mu 0 4 149 150 151 152
		f 6 9 35 57 -133 -41 -39
		mu 0 6 8 43 50 46 103 48
		f 5 -47 44 15 -1 -46
		mu 0 5 23 29 30 12 24
		f 4 -43 -50 54 -49
		mu 0 4 35 36 37 38
		f 4 -55 -104 106 -51
		mu 0 4 38 37 81 83
		f 4 46 -54 -56 -52
		mu 0 4 29 40 41 39
		f 4 -57 -98 100 -59
		mu 0 4 45 49 78 79
		f 4 145 -148 149 150
		mu 0 4 109 110 111 112
		f 4 -64 -116 118 -63
		mu 0 4 53 52 91 92
		f 4 -65 -66 62 120
		mu 0 4 93 54 53 92
		f 4 121 -68 64 122
		mu 0 4 94 55 54 93
		f 4 -70 -122 124 -69
		mu 0 4 57 55 94 96
		f 4 -72 68 126 125
		mu 0 4 58 56 95 97
		f 4 128 127 -74 -126
		mu 0 4 98 99 60 59
		f 4 -76 -128 130 129
		mu 0 4 61 60 99 100
		f 4 -183 -185 186 -188
		mu 0 4 130 127 128 129
		f 4 -247 248 250 -252
		mu 0 4 153 154 155 156
		f 4 138 -81 78 61
		mu 0 4 105 106 64 51
		f 4 -83 -61 63 -82
		mu 0 4 66 65 52 53
		f 4 -84 -85 81 65
		mu 0 4 54 67 66 53
		f 4 66 -87 83 67
		mu 0 4 55 68 67 54
		f 4 -89 -67 69 -88
		mu 0 4 70 68 55 57
		f 4 -91 87 71 70
		mu 0 4 71 69 56 58
		f 4 73 72 -93 -71
		mu 0 4 59 60 73 72
		f 4 -95 -73 75 74
		mu 0 4 74 73 60 61
		f 4 -191 -192 182 -193
		mu 0 4 132 131 127 130
		f 4 -97 95 77 -79
		mu 0 4 64 76 63 51
		f 4 153 -156 157 158
		mu 0 4 113 114 115 116
		f 4 -101 -80 82 -100
		mu 0 4 79 78 65 66
		f 4 -102 -103 99 84
		mu 0 4 67 80 79 66
		f 4 85 -105 101 86
		mu 0 4 68 81 80 67
		f 4 -107 -86 88 -106
		mu 0 4 83 81 68 70
		f 4 -109 105 90 89
		mu 0 4 84 82 69 71
		f 4 92 91 -111 -90
		mu 0 4 72 73 86 85
		f 4 -113 -92 94 93
		mu 0 4 87 86 73 74
		f 4 -179 -194 190 -195
		mu 0 4 126 125 131 132
		f 4 -236 240 242 -244
		mu 0 4 151 150 157 158
		f 4 134 -117 114 40
		mu 0 4 103 104 90 48
		f 4 -119 -60 -58 -118
		mu 0 4 92 91 46 50
		f 4 -120 -121 117 -36
		mu 0 4 43 93 92 50
		f 4 52 -123 119 22
		mu 0 4 39 94 93 43
		f 4 -125 -53 55 -124
		mu 0 4 96 94 39 41
		f 4 -127 123 47 10
		mu 0 4 97 95 32 31
		f 4 12 19 -129 -11
		mu 0 4 9 13 99 98
		f 4 -131 -20 16 11
		mu 0 4 100 99 13 10
		f 4 -187 -196 169 -197
		mu 0 4 129 128 121 124
		f 4 -251 253 255 -257
		mu 0 4 161 155 159 160
		f 4 59 -134 -135 132
		mu 0 4 46 91 104 103
		f 4 115 -136 -137 133
		mu 0 4 91 52 105 104
		f 4 60 -138 -139 135
		mu 0 4 52 65 106 105
		f 4 79 -140 -141 137
		mu 0 4 65 78 107 106
		f 4 97 -142 -143 139
		mu 0 4 78 49 108 107
		f 4 136 144 -146 -144
		mu 0 4 104 105 110 109
		f 4 -62 146 147 -145
		mu 0 4 105 51 111 110
		f 4 220 227 -230 -231
		mu 0 4 137 144 145 146
		f 4 116 143 -151 -149
		mu 0 4 90 104 109 112
		f 4 140 152 -154 -152
		mu 0 4 106 107 114 113
		f 4 -99 154 155 -153
		mu 0 4 107 77 115 114
		f 4 208 210 -213 -214
		mu 0 4 135 141 147 148
		f 4 80 151 -159 -157
		mu 0 4 64 106 113 116
		f 4 -8 159 161 -161
		mu 0 4 0 6 118 117
		f 4 -33 162 163 -160
		mu 0 4 6 19 119 118
		f 4 -3 160 166 -165
		mu 0 4 42 0 117 120
		f 4 -6 170 171 -168
		mu 0 4 11 7 122 121
		f 4 -4 172 173 -171
		mu 0 4 7 1 123 122
		f 4 -9 168 174 -173
		mu 0 4 1 8 124 123
		f 4 -112 175 176 -163
		mu 0 4 19 88 125 119
		f 4 -26 164 179 -178
		mu 0 4 89 42 120 126
		f 4 -130 183 184 -181
		mu 0 4 62 101 128 127
		f 4 -77 181 187 -186
		mu 0 4 102 63 130 129
		f 4 -75 180 191 -189
		mu 0 4 75 62 127 131
		f 4 -96 189 192 -182
		mu 0 4 63 76 132 130
		f 4 -94 188 193 -176
		mu 0 4 88 75 131 125
		f 4 -114 177 194 -190
		mu 0 4 76 89 126 132
		f 4 -12 167 195 -184
		mu 0 4 101 11 121 128
		f 4 -132 185 196 -169
		mu 0 4 8 102 129 124
		f 4 25 198 -200 -198
		mu 0 4 42 89 134 133
		f 4 -40 201 202 -201
		mu 0 4 77 47 136 135
		f 4 -37 197 203 -202
		mu 0 4 47 42 133 136
		f 4 113 204 -206 -199
		mu 0 4 51 63 138 137
		f 4 96 206 -208 -205
		mu 0 4 63 102 139 138
		f 4 156 209 -211 -207
		mu 0 4 89 76 140 134
		f 4 -158 211 212 -210
		mu 0 4 76 64 141 140
		f 4 -155 200 213 -212
		mu 0 4 102 8 142 139
		f 4 -78 214 216 -216
		mu 0 4 8 48 143 142
		f 4 76 217 -219 -215
		mu 0 4 48 90 144 143
		f 4 131 221 -223 -218
		mu 0 4 90 112 145 144
		f 4 38 223 -225 -222
		mu 0 4 112 111 146 145
		f 4 -115 219 225 -224
		mu 0 4 111 51 137 146
		f 4 148 226 -228 -220
		mu 0 4 64 116 147 141
		f 4 -150 228 229 -227
		mu 0 4 116 115 148 147
		f 4 -147 215 230 -229
		mu 0 4 115 77 135 148
		f 4 199 232 -234 -232
		mu 0 4 133 134 150 149
		f 4 -203 236 237 -235
		mu 0 4 135 136 152 151
		f 4 -204 231 238 -237
		mu 0 4 136 133 149 152
		f 4 205 239 -241 -233
		mu 0 4 137 138 154 153
		f 4 207 241 -243 -240
		mu 0 4 138 139 155 154
		f 4 -209 234 243 -242
		mu 0 4 90 137 153 156
		f 4 -217 244 246 -246
		mu 0 4 134 140 157 150
		f 4 218 247 -249 -245
		mu 0 4 140 141 158 157
		f 4 -221 245 251 -250
		mu 0 4 141 135 151 158
		f 4 222 252 -254 -248
		mu 0 4 139 142 159 155
		f 4 224 254 -256 -253
		mu 0 4 142 143 160 159
		f 4 -226 249 256 -255
		mu 0 4 143 144 161 160;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0.15849432151839341 0.29401916137641848 0.57130315492268935 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1 0.3351467360647003 1 ;
createNode transform -n "transform3" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 88 ".uvst[0].uvsp[0:87]" -type "float2" 0.421875 0.020933568
		 0.35317305 0.10280937 0.35317305 0.20969065 0.421875 0.29156646 0.43055558 0.3125
		 0.45833337 0.3125 0.48611116 0.3125 0.51388896 0.3125 0.43055558 0.68843985 0.45833337
		 0.68843985 0.48611116 0.68843985 0.51388896 0.68843985 0.421875 0.70843357 0.35317305
		 0.79030937 0.35317305 0.89719063 0.421875 0.97906649 0.5 0.15000001 0.5 0.83749998
		 0.43055558 0.3125 0.45833337 0.3125 0.45833337 0.68843985 0.43055558 0.68843985 0.48611116
		 0.3125 0.48611116 0.68843985 0.51388896 0.3125 0.51388896 0.68843985 0.43055558 0.3125
		 0.45833337 0.3125 0.45833337 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116
		 0.68843985 0.51388896 0.3125 0.51388896 0.68843985 0.43055558 0.3125 0.45833337 0.3125
		 0.45833337 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116 0.68843985
		 0.51388896 0.3125 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.3125 0.43055558
		 0.3125 0.43055558 0.68843985 0.51388896 0.3125 0.51388896 0.68843985 0.51388896 0.68843985
		 0.51388896 0.3125 0.5 0.83749998 0.421875 0.97906649 0.421875 0.70843357 0.43055558
		 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985 0.43055558
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.45833337 0.68843985 0.48611116
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.5
		 0.83749998 0.421875 0.97906649 0.421875 0.97906649 0.421875 0.70843357 0.421875 0.70843357
		 0.43055558 0.68843985 0.45833337 0.68843985 0.48611116 0.68843985 0.51388896 0.68843985
		 0.43055558 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985
		 0.51388896 0.68843985 0.51388896 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 74 ".pt";
	setAttr ".pt[0]" -type "float3" 0.0053345705 4.2188474e-016 0.009276703 ;
	setAttr ".pt[3]" -type "float3" 0.0053345705 4.2188474e-016 -0.009276703 ;
	setAttr ".pt[4]" -type "float3" 0.0053345705 4.2188474e-016 0.0092767039 ;
	setAttr ".pt[5]" -type "float3" 0.0053345705 4.2188474e-016 -0.0092767039 ;
	setAttr ".pt[7]" -type "float3" 0.0053345705 4.2188474e-016 3.1554436e-032 ;
	setAttr ".pt[8]" -type "float3" -0.0037443682 0 0.0063421223 ;
	setAttr ".pt[9]" -type "float3" -0.0040265713 0 0.0023198472 ;
	setAttr ".pt[10]" -type "float3" -0.0037443682 0 0.0063421223 ;
	setAttr ".pt[11]" -type "float3" -0.0040265713 0 -0.0023198472 ;
	setAttr ".pt[12]" -type "float3" -0.0037442783 0 -0.0063421223 ;
	setAttr ".pt[13]" -type "float3" -0.0037442783 0 -0.0063421223 ;
	setAttr ".pt[14]" -type "float3" -0.0095168361 0 0.0032608244 ;
	setAttr ".pt[15]" -type "float3" -0.0097990362 0 0.0010121759 ;
	setAttr ".pt[16]" -type "float3" -0.0095168361 0 0.0032608244 ;
	setAttr ".pt[17]" -type "float3" -0.0097990362 0 -0.0010121759 ;
	setAttr ".pt[18]" -type "float3" -0.009516743 0 -0.0032608244 ;
	setAttr ".pt[19]" -type "float3" -0.009516743 0 -0.0032608244 ;
	setAttr ".pt[20]" -type "float3" -0.0098106731 -2.1094237e-016 0.0019331187 ;
	setAttr ".pt[21]" -type "float3" -0.0098117981 -2.1094237e-016 0.00076344749 ;
	setAttr ".pt[22]" -type "float3" -0.0098117981 -0.026528111 0.00076344749 ;
	setAttr ".pt[23]" -type "float3" -0.0098106731 -0.026528111 0.0019331187 ;
	setAttr ".pt[24]" -type "float3" -0.0098117981 -2.1094237e-016 -0.00076344749 ;
	setAttr ".pt[25]" -type "float3" -0.0098117981 -0.026528111 -0.00076344749 ;
	setAttr ".pt[26]" -type "float3" -0.0098105781 -2.1094237e-016 -0.0019331187 ;
	setAttr ".pt[27]" -type "float3" -0.0098105781 -0.026528111 -0.0019331187 ;
	setAttr ".pt[28]" -type "float3" -0.01021474 0 0.0050487281 ;
	setAttr ".pt[29]" -type "float3" -0.01021474 -0.016645126 0.0050487281 ;
	setAttr ".pt[30]" -type "float3" -0.0097314036 -2.1094237e-016 0.0023697163 ;
	setAttr ".pt[31]" -type "float3" -0.0097314036 -0.026528111 0.0023697163 ;
	setAttr ".pt[32]" -type "float3" -0.010214649 0 -0.0050487281 ;
	setAttr ".pt[33]" -type "float3" -0.010214649 -0.016645126 -0.0050487281 ;
	setAttr ".pt[34]" -type "float3" -0.0097313104 -0.026528111 -0.0023697163 ;
	setAttr ".pt[35]" -type "float3" -0.0097313104 -2.1094237e-016 -0.0023697163 ;
	setAttr ".pt[36]" -type "float3" 0.0053345705 4.2188474e-016 0.007534577 ;
	setAttr ".pt[37]" -type "float3" 0.0053345705 4.2188474e-016 -0.0075345696 ;
	setAttr ".pt[38]" -type "float3" -0.0037749205 0 0.0056100674 ;
	setAttr ".pt[39]" -type "float3" -0.0037748581 0 -0.0056100618 ;
	setAttr ".pt[40]" -type "float3" -0.0093772775 0 0.0030597011 ;
	setAttr ".pt[41]" -type "float3" -0.0093771936 0 -0.0030596957 ;
	setAttr ".pt[42]" -type "float3" 0.0053345705 4.2632563e-016 0.010328804 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.0017754192 ;
	setAttr ".pt[45]" -type "float3" 0 0 -0.0017754171 ;
	setAttr ".pt[46]" -type "float3" 0.0053345705 4.2632563e-016 -0.010328795 ;
	setAttr ".pt[47]" -type "float3" -0.0037749205 0 0.007406591 ;
	setAttr ".pt[48]" -type "float3" -0.0040265713 0 0.003062739 ;
	setAttr ".pt[49]" -type "float3" -0.0040265713 0 -0.003062739 ;
	setAttr ".pt[50]" -type "float3" -0.0037748581 0 -0.0074065877 ;
	setAttr ".pt[51]" -type "float3" -0.0093772775 0 0.0042291135 ;
	setAttr ".pt[52]" -type "float3" -0.0097990362 0.0020419958 0.0013990286 ;
	setAttr ".pt[53]" -type "float3" -0.0097990362 0.0020419958 -0.0013990286 ;
	setAttr ".pt[54]" -type "float3" -0.0093771936 0 -0.0042291079 ;
	setAttr ".pt[55]" -type "float3" -0.010857651 -0.0093942704 0.0025470711 ;
	setAttr ".pt[56]" -type "float3" -0.010869639 -0.0093942704 0.00099146715 ;
	setAttr ".pt[57]" -type "float3" -0.010869628 -0.0093942704 -0.00099146715 ;
	setAttr ".pt[58]" -type "float3" -0.010857564 -0.0093942704 -0.0025470711 ;
	setAttr ".pt[59]" -type "float3" -0.01063888 -0.0058809607 0.0044489861 ;
	setAttr ".pt[60]" -type "float3" -0.010834729 -0.010989876 0.0031315794 ;
	setAttr ".pt[61]" -type "float3" -0.010834639 -0.010989876 -0.003131574 ;
	setAttr ".pt[62]" -type "float3" -0.010638791 -0.0058809607 -0.0044489861 ;
	setAttr ".pt[63]" -type "float3" 0.0089857122 4.2632563e-016 0.015719173 ;
	setAttr ".pt[65]" -type "float3" 0.0089857103 4.2632563e-016 -0.015719173 ;
	setAttr ".pt[66]" -type "float3" -0.0098106731 -0.013387711 0.0019331187 ;
	setAttr ".pt[67]" -type "float3" -0.0098117981 -0.013387711 0.00076344749 ;
	setAttr ".pt[68]" -type "float3" -0.0098117981 -0.013387711 -0.00076344749 ;
	setAttr ".pt[69]" -type "float3" -0.0098105781 -0.013387711 -0.0019331187 ;
	setAttr ".pt[70]" -type "float3" -0.0095168361 0 0.0032608244 ;
	setAttr ".pt[71]" -type "float3" -0.01021474 -0.016645126 0.0050487281 ;
	setAttr ".pt[72]" -type "float3" -0.0097314036 -0.013387711 0.0023697163 ;
	setAttr ".pt[73]" -type "float3" -0.0097313104 -0.013387711 -0.0023697163 ;
	setAttr ".pt[74]" -type "float3" -0.010214649 -0.016645126 -0.0050487281 ;
	setAttr ".pt[75]" -type "float3" -0.0095167411 0 -0.0032608244 ;
	setAttr -s 76 ".vt[0:75]"  -0.022817697 -0.017428588 -0.039521407 -0.042883255 -0.017428588 -0.015608234
		 -0.042883255 -0.017428588 0.015608216 -0.022817707 -0.017428588 0.039521407 -0.022817697 0.017428435 -0.039521407
		 -0.022817707 0.017428435 0.039521407 0 -0.017428588 0 0 0.017428435 0 -0.055920027 -0.017428588 -0.024196854
		 -0.057771109 -0.017428588 -0.0088508222 -0.055920027 0.017428435 -0.024196854 -0.057771109 -0.017428588 0.0088508222
		 -0.055919439 -0.017428588 0.024196854 -0.055919439 0.017428435 0.024196854 -0.08595939 -0.017428588 -0.014217262
		 -0.087810457 -0.017428588 -0.0044131088 -0.08595939 0.017428435 -0.014217262 -0.087810457 -0.017428588 0.0044131088
		 -0.085958786 -0.017428588 0.014217262 -0.085958786 0.017428435 0.014217262 -0.10733928 -0.017428588 -0.0084284404
		 -0.10734668 -0.017428588 -0.0033286477 -0.10734668 0.017428435 -0.0033286477 -0.10733928 0.017428435 -0.0084284404
		 -0.10734668 -0.017428588 0.0033286477 -0.10734668 0.017428435 0.0033286477 -0.10733866 -0.017428588 0.0084284404
		 -0.10733866 0.017428435 0.0084284404 -0.09053722 -0.017428588 -0.017428245 -0.09053722 0.017428435 -0.017428245
		 -0.10681933 -0.017428588 -0.010332013 -0.10681933 0.017428435 -0.010332013 -0.090536624 -0.017428588 0.017428245
		 -0.090536624 0.017428435 0.017428245 -0.10681871 0.017428435 0.010332013 -0.10681871 -0.017428588 0.010332013
		 -0.026521625 0.017428435 -0.032099456 -0.026521616 0.017428435 0.032099418 -0.056120433 0.017428435 -0.021403866
		 -0.056120023 0.017428435 0.021403847 -0.085043967 0.017428435 -0.013340359 -0.08504343 0.017428435 0.01334034
		 -0.026521625 0.024161225 -0.032099456 -0.042883255 0.024161225 -0.015608234 -0.0090801427 0.024161225 0
		 -0.042883255 0.024161225 0.015608216 -0.026521616 0.024161225 0.032099418 -0.056120433 0.024161225 -0.021403866
		 -0.057771109 0.024161225 -0.0088508222 -0.057771109 0.024161225 0.0088508222 -0.056120023 0.024161225 0.021403847
		 -0.085043967 0.024161225 -0.013340359 -0.087810457 0.024161225 -0.0044131088 -0.087810457 0.024161225 0.0044131088
		 -0.085043423 0.024161225 0.01334034 -0.10257881 0.024161225 -0.0092623523 -0.10265745 0.024161225 -0.0036054421
		 -0.10265738 0.024161225 0.0036054421 -0.10257826 0.024161225 0.0092623523 -0.093319327 0.024161225 -0.015357933
		 -0.10242847 0.024161225 -0.011387901 -0.10242787 0.024161225 0.011387882 -0.093318738 0.024161225 0.015357933
		 -0.022817697 0.024161225 -0.039521407 0 0.024161225 0 -0.022817707 0.024161225 0.039521407
		 -0.10733928 0.024161225 -0.0084284404 -0.10734668 0.024161225 -0.0033286477 -0.10734668 0.024161225 0.0033286477
		 -0.10733866 0.024161225 0.0084284404 -0.085959397 0.024161225 -0.014217262 -0.09053722 0.024161225 -0.017428245
		 -0.10681932 0.024161225 -0.010332013 -0.10681871 0.024161225 0.010332013 -0.090536617 0.024161225 0.017428245
		 -0.085958764 0.024161225 0.014217262;
	setAttr -s 150 ".ed[0:149]"  0 1 0 1 2 0 2 3 0 0 4 0 3 5 0 6 0 0 6 1 1
		 6 2 1 6 3 0 4 7 0 5 7 0 0 8 0 1 9 0 8 9 0 4 10 0 8 10 0 2 11 0 9 11 0 3 12 0 11 12 0
		 5 13 0 12 13 0 8 14 0 9 15 0 14 15 0 10 16 0 14 16 0 11 17 0 15 17 0 12 18 0 17 18 0
		 13 19 0 18 19 0 14 20 0 15 21 0 20 21 0 21 22 0 23 22 1 20 23 0 17 24 0 21 24 0 24 25 0
		 22 25 1 18 26 0 24 26 0 26 27 0 25 27 1 14 28 0 16 29 1 28 29 0 20 30 0 28 30 0 23 31 1
		 30 31 0 29 31 1 18 32 0 19 33 1 32 33 0 27 34 1 33 34 1 26 35 0 35 34 0 32 35 0 4 36 0
		 5 37 0 10 38 1 36 38 0 13 39 1 37 39 0 16 40 0 38 40 0 19 41 0 39 41 0 36 42 0 42 43 0
		 43 44 1 42 44 1 43 45 0 45 44 1 37 46 0 45 46 0 46 44 1 38 47 1 42 47 0 47 48 0 43 48 0
		 48 49 0 45 49 0 39 50 1 49 50 0 46 50 0 40 51 0 47 51 0 51 52 0 48 52 0 52 53 0 49 53 0
		 41 54 0 53 54 0 50 54 0 51 55 0 55 56 1 52 56 0 56 57 1 53 57 0 57 58 1 54 58 0 51 59 1
		 59 60 1 55 60 1 58 61 1 62 61 1 54 62 1 4 63 0 7 64 0 63 64 0 63 42 0 64 44 1 5 65 0
		 65 64 0 65 46 0 23 66 1 22 67 1 66 67 0 67 56 1 66 55 1 25 68 1 67 68 0 68 57 1 27 69 1
		 68 69 0 69 58 1 16 70 1 29 71 0 70 71 0 71 59 1 70 51 0 31 72 0 71 72 0 72 60 1 66 72 0
		 34 73 0 69 73 0 73 61 1 33 74 0 74 73 0 74 62 1 19 75 1 75 74 0 75 54 0;
	setAttr -s 75 -ch 294 ".fc[0:74]" -type "polyFaces" 
		f 4 35 36 -38 -39
		mu 0 4 34 35 36 37
		f 4 40 41 -43 -37
		mu 0 4 35 38 39 36
		f 4 44 45 -47 -42
		mu 0 4 38 40 41 39
		f 3 -1 -6 6
		mu 0 3 1 0 16
		f 3 -2 -7 7
		mu 0 3 2 1 16
		f 3 -3 -8 8
		mu 0 3 3 2 16
		f 3 74 75 -77
		mu 0 3 51 14 50
		f 3 77 78 -76
		mu 0 3 14 13 50
		f 3 80 81 -79
		mu 0 3 13 52 50
		f 4 0 12 -14 -12
		mu 0 4 4 5 19 18
		f 4 -75 83 84 -86
		mu 0 4 9 67 68 20
		f 4 -4 11 15 -15
		mu 0 4 8 4 18 21
		f 4 1 16 -18 -13
		mu 0 4 5 6 22 19
		f 4 -78 85 86 -88
		mu 0 4 10 9 20 23
		f 4 2 18 -20 -17
		mu 0 4 6 7 24 22
		f 4 4 20 -22 -19
		mu 0 4 7 11 25 24
		f 4 -81 87 89 -91
		mu 0 4 70 10 23 69
		f 4 13 23 -25 -23
		mu 0 4 18 19 27 26
		f 4 -85 92 93 -95
		mu 0 4 20 68 71 28
		f 4 -16 22 26 -26
		mu 0 4 21 18 26 29
		f 4 17 27 -29 -24
		mu 0 4 19 22 30 27
		f 4 -87 94 95 -97
		mu 0 4 23 20 28 31
		f 4 19 29 -31 -28
		mu 0 4 22 24 32 30
		f 4 21 31 -33 -30
		mu 0 4 24 25 33 32
		f 4 -90 96 98 -100
		mu 0 4 69 23 31 72
		f 4 24 34 -36 -34
		mu 0 4 26 27 35 34
		f 4 -94 100 101 -103
		mu 0 4 28 71 59 60
		f 4 -50 51 53 -55
		mu 0 4 42 43 44 45
		f 4 28 39 -41 -35
		mu 0 4 27 30 38 35
		f 4 -96 102 103 -105
		mu 0 4 31 28 60 61
		f 4 30 43 -45 -40
		mu 0 4 30 32 40 38
		f 4 57 59 -62 -63
		mu 0 4 46 47 48 49
		f 4 -99 104 105 -107
		mu 0 4 72 31 61 62
		f 4 -27 47 49 -49
		mu 0 4 29 26 43 42
		f 4 33 50 -52 -48
		mu 0 4 26 34 44 43
		f 4 38 52 -54 -51
		mu 0 4 34 37 45 44
		f 4 -101 107 108 -110
		mu 0 4 59 71 63 64
		f 4 32 56 -58 -56
		mu 0 4 32 33 47 46
		f 4 106 110 -112 -113
		mu 0 4 72 62 65 66
		f 4 -46 60 61 -59
		mu 0 4 41 40 49 48
		f 4 -44 55 62 -61
		mu 0 4 40 32 46 49
		f 4 -116 116 76 -118
		mu 0 4 73 74 75 50
		f 4 119 117 -82 -121
		mu 0 4 76 73 50 77
		f 4 14 65 -67 -64
		mu 0 4 8 21 54 53
		f 4 -21 64 68 -68
		mu 0 4 25 11 56 55
		f 4 25 69 -71 -66
		mu 0 4 21 29 57 54
		f 4 -32 67 72 -72
		mu 0 4 33 25 55 58
		f 4 123 124 -102 -126
		mu 0 4 78 79 60 59
		f 4 127 128 -104 -125
		mu 0 4 79 80 61 60
		f 4 130 131 -106 -129
		mu 0 4 80 81 62 61
		f 4 134 135 -108 -137
		mu 0 4 82 83 63 71
		f 4 138 139 -109 -136
		mu 0 4 83 84 64 63
		f 4 -141 125 109 -140
		mu 0 4 84 78 59 64
		f 4 142 143 -111 -132
		mu 0 4 81 85 65 62
		f 4 -146 146 111 -144
		mu 0 4 85 86 66 65
		f 4 -149 149 112 -147
		mu 0 4 86 87 72 66
		f 4 66 82 -84 -74
		mu 0 4 53 54 68 67
		f 4 -69 79 90 -89
		mu 0 4 55 56 70 69
		f 4 70 91 -93 -83
		mu 0 4 54 57 71 68
		f 4 -73 88 99 -98
		mu 0 4 58 55 69 72
		f 4 -10 113 115 -115
		mu 0 4 17 15 74 73
		f 4 63 73 -117 -114
		mu 0 4 15 51 75 74
		f 4 10 114 -120 -119
		mu 0 4 12 17 73 76
		f 4 -65 118 120 -80
		mu 0 4 52 12 76 77
		f 4 37 122 -124 -122
		mu 0 4 37 36 79 78
		f 4 42 126 -128 -123
		mu 0 4 36 39 80 79
		f 4 46 129 -131 -127
		mu 0 4 39 41 81 80
		f 4 48 133 -135 -133
		mu 0 4 29 42 83 82
		f 4 -70 132 136 -92
		mu 0 4 57 29 82 71
		f 4 54 137 -139 -134
		mu 0 4 42 45 84 83
		f 4 -53 121 140 -138
		mu 0 4 45 37 78 84
		f 4 58 141 -143 -130
		mu 0 4 41 48 85 81
		f 4 -60 144 145 -142
		mu 0 4 48 47 86 85
		f 4 -57 147 148 -145
		mu 0 4 47 33 87 86
		f 4 71 97 -150 -148
		mu 0 4 33 58 72 87;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" 0.15849432151839335 0.29401916137641843 0.57130315492268946 ;
	setAttr ".r" -type "double3" 89.999999999999986 -3.180554681463516e-015 -120.00000000000001 ;
	setAttr ".s" -type "double3" 1 0.33514673606470036 1.0000000000000004 ;
createNode transform -n "transform2" -p "pCylinder3";
	setAttr ".v" no;
createNode transform -n "polySurface1";
	setAttr ".rp" -type "double3" 0.099475600503316608 0.2789315536927206 0.52478551923843308 ;
	setAttr ".sp" -type "double3" 0.099475600503316608 0.2789315536927206 0.52478551923843308 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[0:2]" "f[6:77]" "f[81:152]" "f[156:233]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 4 "f[3:5]" "f[78:80]" "f[153:155]" "f[234:242]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 288 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.421875 0.020933568 0.35317305
		 0.10280937 0.35317305 0.20969065 0.421875 0.29156646 0.43055558 0.3125 0.45833337
		 0.3125 0.48611116 0.3125 0.51388896 0.3125 0.43055558 0.68843985 0.45833337 0.68843985
		 0.48611116 0.68843985 0.51388896 0.68843985 0.421875 0.70843357 0.35317305 0.79030937
		 0.35317305 0.89719063 0.421875 0.97906649 0.5 0.15000001 0.5 0.83749998 0.43055558
		 0.3125 0.45833337 0.3125 0.45833337 0.68843985 0.43055558 0.68843985 0.48611116 0.3125
		 0.48611116 0.68843985 0.51388896 0.3125 0.51388896 0.68843985 0.43055558 0.3125 0.45833337
		 0.3125 0.45833337 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116 0.68843985
		 0.51388896 0.3125 0.51388896 0.68843985 0.43055558 0.3125 0.45833337 0.3125 0.45833337
		 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116 0.68843985 0.51388896
		 0.3125 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.3125 0.43055558 0.3125
		 0.43055558 0.68843985 0.51388896 0.3125 0.51388896 0.68843985 0.51388896 0.68843985
		 0.51388896 0.3125 0.5 0.83749998 0.421875 0.97906649 0.421875 0.70843357 0.43055558
		 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985 0.43055558
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.45833337 0.68843985 0.48611116
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896
		 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.5
		 0.83749998 0.421875 0.97906649 0.421875 0.97906649 0.421875 0.70843357 0.421875 0.70843357
		 0.43055558 0.68843985 0.45833337 0.68843985 0.48611116 0.68843985 0.51388896 0.68843985
		 0.43055558 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985
		 0.51388896 0.68843985 0.51388896 0.68843985 0.43055558 0.3125 0.45833337 0.3125 0.45833337
		 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116 0.68843985 0.51388896
		 0.3125 0.51388896 0.68843985 0.35317305 0.10280937 0.421875 0.020933568 0.5 0.15000001
		 0.35317305 0.20969065 0.421875 0.29156646 0.421875 0.97906649 0.35317305 0.89719063
		 0.5 0.83749998 0.35317305 0.79030937 0.421875 0.70843357 0.43055558 0.3125 0.45833337
		 0.3125 0.45833337 0.3125 0.43055558 0.3125 0.45833337 0.68843985 0.43055558 0.68843985
		 0.43055558 0.68843985 0.45833337 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985
		 0.48611116 0.3125 0.48611116 0.3125 0.48611116 0.68843985 0.48611116 0.68843985 0.51388896
		 0.3125 0.51388896 0.3125 0.51388896 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985
		 0.51388896 0.68843985 0.45833337 0.3125 0.43055558 0.3125 0.43055558 0.68843985 0.45833337
		 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116 0.68843985 0.51388896
		 0.3125 0.51388896 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.45833337
		 0.68843985 0.43055558 0.68843985 0.43055558 0.3125 0.43055558 0.3125 0.43055558 0.68843985
		 0.48611116 0.68843985 0.51388896 0.3125 0.51388896 0.68843985 0.51388896 0.68843985
		 0.51388896 0.3125 0.51388896 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985
		 0.51388896 0.68843985 0.51388896 0.68843985 0.5 0.83749998 0.421875 0.97906649 0.421875
		 0.97906649 0.421875 0.70843357 0.421875 0.70843357 0.43055558 0.68843985 0.43055558
		 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985 0.51388896
		 0.68843985 0.43055558 0.68843985 0.45833337 0.68843985 0.48611116 0.68843985 0.51388896
		 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896
		 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985 0.5 0.83749998 0.421875 0.97906649
		 0.421875 0.70843357 0.43055558 0.3125 0.45833337 0.3125 0.45833337 0.68843985 0.43055558
		 0.68843985 0.48611116 0.3125 0.48611116 0.68843985 0.51388896 0.3125 0.51388896 0.68843985
		 0.35317305 0.10280937 0.421875 0.020933568 0.5 0.15000001 0.35317305 0.20969065 0.421875
		 0.29156646 0.421875 0.97906649 0.35317305 0.89719063 0.5 0.83749998 0.35317305 0.79030937
		 0.421875 0.70843357 0.43055558 0.3125 0.45833337 0.3125 0.45833337 0.3125 0.43055558
		 0.3125 0.45833337 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.45833337
		 0.68843985 0.43055558 0.68843985 0.43055558 0.68843985 0.48611116 0.3125 0.48611116
		 0.3125 0.48611116 0.68843985 0.48611116 0.68843985 0.51388896 0.3125 0.51388896 0.3125
		 0.51388896 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985
		 0.45833337 0.3125 0.43055558 0.3125 0.43055558 0.68843985 0.45833337 0.68843985 0.43055558
		 0.68843985 0.48611116 0.3125 0.48611116 0.68843985 0.51388896 0.3125 0.51388896 0.68843985
		 0.51388896 0.68843985 0.43055558 0.68843985 0.45833337 0.68843985 0.43055558 0.68843985
		 0.43055558 0.3125 0.43055558 0.3125 0.43055558 0.68843985 0.48611116 0.68843985 0.51388896
		 0.3125 0.51388896 0.68843985 0.51388896 0.68843985 0.51388896 0.3125 0.51388896 0.68843985
		 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985
		 0.5 0.83749998 0.421875 0.97906649 0.421875 0.97906649 0.421875 0.70843357 0.421875
		 0.70843357 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.51388896
		 0.68843985 0.43055558 0.68843985;
	setAttr ".uvst[0].uvsp[250:287]" 0.51388896 0.68843985 0.43055558 0.68843985
		 0.45833337 0.68843985 0.48611116 0.68843985 0.51388896 0.68843985 0.43055558 0.68843985
		 0.43055558 0.68843985 0.43055558 0.68843985 0.51388896 0.68843985 0.51388896 0.68843985
		 0.51388896 0.68843985 0.5 0.83749998 0.421875 0.97906649 0.421875 0.70843357 0.35317305
		 0.10280937 0.421875 0.020933568 0.35317305 0.20969065 0.421875 0.29156646 0.35317305
		 0.10280937 0.421875 0.020933568 0.35317305 0.20969065 0.421875 0.29156646 0.35317305
		 0.10280937 0.421875 0.020933568 0.35317305 0.20969065 0.421875 0.29156646 0.35317305
		 0.10280937 0.421875 0.020933568 0.35317305 0.20969065 0.421875 0.29156646 0.35317305
		 0.10280937 0.421875 0.020933568 0.35317305 0.20969065 0.421875 0.29156646 0.35317305
		 0.10280937 0.421875 0.020933568 0.35317305 0.20969065 0.421875 0.29156646;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 233 ".vt";
	setAttr ".vt[0:165]"  0.093237616 0.30292642 0.51901859 0.081761748 0.28283608 0.51901859
		 0.094188683 0.26158041 0.51901859 0.11732516 0.26172581 0.51901859 0.093237616 0.30292642 0.52823293
		 0.11732516 0.26172581 0.52823293 0.12080735 0.29140323 0.52823293 0.069440939 0.27768537 0.51901859
		 0.072496235 0.26912564 0.51901859 0.069440939 0.27768537 0.52823293 0.077696055 0.26023158 0.51901859
		 0.083656959 0.25337061 0.51901859 0.083656959 0.25337061 0.52823293 0.047802348 0.25873193 0.51901859
		 0.049357545 0.25273806 0.51901859 0.047802348 0.25873193 0.52823293 0.052065302 0.24810657 0.51901859
		 0.05652611 0.24381146 0.51901859 0.05652611 0.24381146 0.52823293 0.034820355 0.24706621 0.51901859
		 0.036379099 0.24438675 0.51901859 0.036379099 0.24438675 0.52122033 0.034820355 0.24706621 0.52122033
		 0.038421448 0.24089341 0.51901859 0.038421448 0.24089341 0.52122033 0.039992284 0.23822099 0.51901859
		 0.039992284 0.23822099 0.52122033 0.04364353 0.25760069 0.51901859 0.04364353 0.25760069 0.52383286
		 0.034644384 0.24830364 0.51901859 0.034644384 0.24830364 0.52122033 0.053500298 0.24074225 0.51901859
		 0.053500298 0.24074225 0.52383286 0.040984277 0.23746067 0.52122033 0.040984277 0.23746067 0.51901859
		 0.092969425 0.29757178 0.52823293 0.11252746 0.26411876 0.52823293 0.070104122 0.2761901 0.52823293
		 0.082679123 0.25468192 0.52823293 0.048789721 0.25869176 0.52823293 0.056975376 0.24469155 0.52823293
		 0.094081774 0.29566917 0.53001273 0.082468532 0.28162721 0.53001273 0.11099219 0.28566492 0.53001273
		 0.093481913 0.26278934 0.53001273 0.1114151 0.26602137 0.53001273 0.070819303 0.27496681 0.53001273
		 0.072791979 0.26861981 0.53001273 0.077400319 0.26073745 0.53001273 0.081963941 0.25590518 0.53001273
		 0.049255256 0.2578955 0.53001273 0.049511552 0.25247467 0.53055251 0.051911302 0.24836998 0.53055251
		 0.056509856 0.24548782 0.53001273 0.037261363 0.24869429 0.52752936 0.038832329 0.24586557 0.52752936
		 0.040913582 0.24230583 0.52752936 0.042608347 0.2395495 0.52752936 0.042045776 0.25532302 0.52845806
		 0.036765862 0.24981259 0.52710754 0.043339834 0.23856919 0.52710754 0.050731696 0.24046719 0.52845806
		 0.098311558 0.30003375 0.53001273 0.11717498 0.28927961 0.53001273 0.11729332 0.26756632 0.53001273
		 0.034820355 0.24706621 0.52647376 0.036379099 0.24438675 0.52647376 0.038421448 0.24089341 0.52647376
		 0.039992284 0.23822099 0.52647376 0.04780234 0.25873193 0.53001273 0.04364353 0.25760069 0.52561259
		 0.034644384 0.24830364 0.52647376 0.040984277 0.23746067 0.52647376 0.053500306 0.24074225 0.52561259
		 0.056526121 0.24381146 0.53001273 0.14096217 0.30318654 0.51901859 0.12930132 0.32317013 0.51901859
		 0.10467992 0.32303593 0.51901859 0.14096217 0.30318654 0.52823293 0.1171979 0.28507206 0.52823293
		 0.13100109 0.33641565 0.51901859 0.1220605 0.3380495 0.51901859 0.13100109 0.33641565 0.52823293
		 0.11175813 0.33799335 0.51901859 0.10283587 0.33626157 0.51901859 0.10283587 0.33626157 0.52823293
		 0.12540622 0.36463189 0.51901859 0.11943779 0.36628202 0.51901859 0.12540622 0.36463189 0.52823293
		 0.11407293 0.36625275 0.51901859 0.10812283 0.36453712 0.51901859 0.10812283 0.36453712 0.52823293
		 0.12179442 0.38170749 0.51901859 0.11869457 0.38169736 0.51901859 0.11869457 0.38169736 0.52122033
		 0.12179442 0.38170749 0.52122033 0.11464804 0.38167527 0.51901859 0.11464804 0.38167527 0.52122033
		 0.11154829 0.38165107 0.51901859 0.11154829 0.38165107 0.52122033 0.12650597 0.36879918 0.51901859
		 0.12650597 0.36879918 0.52383286 0.12295406 0.38124114 0.51901859 0.12295406 0.38124114 0.52122033
		 0.10697772 0.36869216 0.51901859 0.10697772 0.36869216 0.52383286 0.11039381 0.38117215 0.52122033
		 0.11039381 0.38117215 0.51901859 0.13645901 0.30609611 0.52823293 0.097708806 0.30588493 0.52823293
		 0.12937456 0.33658889 0.52823293 0.10446042 0.33645275 0.52823293 0.12487775 0.36379689 0.52823293
		 0.10866039 0.36370799 0.52823293 0.13425511 0.3060841 0.53001273 0.12790102 0.32316247 0.53001273
		 0.11713594 0.29644141 0.53001273 0.10608025 0.32304356 0.53001273 0.099912703 0.30589691 0.53001273
		 0.1279576 0.3365812 0.53001273 0.12147456 0.33804631 0.53001273 0.11234406 0.33799657 0.53001273
		 0.10587738 0.3364605 0.53001273 0.12395539 0.36379185 0.53001273 0.11913266 0.36628032 0.53055251
		 0.11437805 0.36625442 0.53055251 0.10958275 0.36371303 0.53001273 0.12198388 0.3787795 0.52752936
		 0.11874866 0.37883332 0.52752936 0.11462519 0.37881076 0.52752936 0.11139075 0.37872124 0.52752936
		 0.12533231 0.37132168 0.52845806 0.1232001 0.37864944 0.52710754 0.11017606 0.37857792 0.52710754
		 0.10812384 0.37122735 0.52845806 0.13592006 0.30023873 0.53001273 0.12179442 0.38170749 0.52647376
		 0.11869457 0.38169736 0.52647376 0.11464804 0.38167527 0.52647376 0.11154829 0.38165107 0.52647376
		 0.12540624 0.36463192 0.53001273 0.12650597 0.36879918 0.52561259 0.12295406 0.38124114 0.52647376
		 0.11039381 0.38117215 0.52647376 0.10697772 0.36869216 0.52561259 0.10812283 0.36453712 0.53001273
		 0.14046183 0.26183262 0.51901859 0.15265633 0.2832225 0.51901859 0.11351967 0.29136351 0.52823293
		 0.1510829 0.25373784 0.51901859 0.15696819 0.26066366 0.51901859 0.1510829 0.25373784 0.52823293
		 0.16207075 0.26961386 0.51901859 0.16503209 0.27820665 0.51901859 0.16503209 0.27820665 0.52823293
		 0.17831637 0.24447498 0.51901859 0.1827296 0.24881878 0.51901859 0.17831637 0.24447498 0.52823293
		 0.1853867 0.25347948 0.51901859 0.186876 0.25949022 0.51901859 0.186876 0.25949022 0.52823293
		 0.19491014 0.23906511 0.51901859 0.19645126 0.24175473 0.51901859 0.19645126 0.24175473 0.52122033
		 0.19491014 0.23906511 0.52122033 0.19845542 0.24527013 0.51901859;
	setAttr ".vt[166:232]" 0.19845542 0.24527013 0.52122033 0.19998436 0.24796672 0.51901859
		 0.19998436 0.24796672 0.52122033 0.18137543 0.24143894 0.51901859 0.18137543 0.24143894 0.52383286
		 0.19392648 0.23829399 0.51901859 0.19392648 0.23829399 0.52122033 0.19104691 0.25840437 0.51901859
		 0.19104691 0.25840437 0.52383286 0.20014682 0.24920601 0.52122033 0.20014682 0.24920601 0.51901859
		 0.12209649 0.26417089 0.52823293 0.1412887 0.29783517 0.52823293 0.15204625 0.25505981 0.52823293
		 0.16438538 0.27670419 0.52823293 0.17785744 0.24535015 0.52823293 0.18588917 0.25943926 0.52823293
		 0.12318804 0.26608551 0.53001273 0.14115539 0.26304916 0.53001273 0.12339681 0.28573251 0.53001273
		 0.15196277 0.28200594 0.53001273 0.14019713 0.29592049 0.53001273 0.15274805 0.25629079 0.53001273
		 0.15725839 0.26117271 0.53001273 0.16178055 0.26910484 0.53001273 0.16368359 0.27547315 0.53001273
		 0.17831428 0.24615145 0.53001273 0.18288073 0.24908382 0.53055251 0.18523556 0.25321442 0.53055251
		 0.18543231 0.25863796 0.53001273 0.19227968 0.24036503 0.52752936 0.19394393 0.24313989 0.52752936
		 0.19598614 0.24672218 0.52752936 0.19752583 0.24956806 0.52752936 0.18414687 0.24119411 0.52845806
		 0.19155897 0.23937677 0.52710754 0.19800906 0.25069171 0.52710754 0.19266941 0.25614426 0.52845806
		 0.19491014 0.23906511 0.52647376 0.19645126 0.24175473 0.52647376 0.19845542 0.24527013 0.52647376
		 0.19998436 0.24796672 0.52647376 0.17831637 0.24447498 0.53001273 0.18137543 0.24143894 0.52561259
		 0.19392648 0.23829399 0.52647376 0.20014682 0.24920601 0.52647376 0.19104691 0.2584044 0.52561259
		 0.186876 0.25949022 0.53001273 0.098205976 0.30009395 0.51901859 0.091232337 0.28396037 0.51901859
		 0.099814035 0.26928177 0.51901859 0.11729398 0.26744479 0.51901859 0.13602498 0.30030009 0.51901859
		 0.12553972 0.31440619 0.51901859 0.10853685 0.31431353 0.51901859 0.13475288 0.26947224 0.51901859
		 0.14317405 0.28424346 0.51901859 0.098205976 0.30009395 0.50218767 0.091232337 0.28396037 0.50218767
		 0.11717498 0.28927961 0.50218767 0.099814035 0.26928177 0.50218767 0.11729398 0.26744479 0.50218767
		 0.13602498 0.30030009 0.50218767 0.12553972 0.31440619 0.50218767 0.10853685 0.31431353 0.50218767
		 0.13475288 0.26947224 0.50218767 0.14317405 0.28424346 0.50218767;
	setAttr -s 474 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 0 4 0 3 5 0 4 6 0 5 6 0 0 7 0 1 8 0
		 7 8 0 4 9 0 7 9 0 2 10 0 8 10 0 3 11 0 10 11 0 5 12 0 11 12 0 7 13 0 8 14 0 13 14 0
		 9 15 0 13 15 0 10 16 0 14 16 0 11 17 0 16 17 0 12 18 0 17 18 0 13 19 0 14 20 0 19 20 0
		 20 21 0 22 21 1 19 22 0 16 23 0 20 23 0 23 24 0 21 24 1 17 25 0 23 25 0 25 26 0 24 26 1
		 13 27 0 15 28 1 27 28 0 19 29 0 27 29 0 22 30 1 29 30 0 28 30 1 17 31 0 18 32 1 31 32 0
		 26 33 1 32 33 1 25 34 0 34 33 0 31 34 0 4 35 0 5 36 0 9 37 1 35 37 0 12 38 1 36 38 0
		 15 39 0 37 39 0 18 40 0 38 40 0 35 41 0 41 42 0 42 43 1 41 43 1 42 44 0 44 43 1 36 45 0
		 44 45 0 45 43 1 37 46 1 41 46 0 46 47 0 42 47 0 47 48 0 44 48 0 38 49 1 48 49 0 45 49 0
		 39 50 0 46 50 0 50 51 0 47 51 0 51 52 0 48 52 0 40 53 0 52 53 0 49 53 0 50 54 0 54 55 1
		 51 55 0 55 56 1 52 56 0 56 57 1 53 57 0 50 58 1 58 59 1 54 59 1 57 60 1 61 60 1 53 61 1
		 4 62 0 6 63 0 62 63 0 62 41 0 63 43 1 5 64 0 64 63 0 64 45 0 22 65 1 21 66 1 65 66 0
		 66 55 1 65 54 1 24 67 1 66 67 0 67 56 1 26 68 1 67 68 0 68 57 1 15 69 1 28 70 0 69 70 0
		 70 58 1 69 50 0 30 71 0 70 71 0 71 59 1 65 71 0 33 72 0 68 72 0 72 60 1 32 73 0 73 72 0
		 73 61 1 18 74 1 74 73 0 74 53 0 75 76 1 76 77 1 77 0 1 75 78 0 78 79 0 4 79 0 75 80 0
		 76 81 0 80 81 0 78 82 0 80 82 0 77 83 0 81 83 0 0 84 0 83 84 0 4 85 0 84 85 0 80 86 0
		 81 87 0 86 87 0;
	setAttr ".ed[166:331]" 82 88 0 86 88 0 83 89 0 87 89 0 84 90 0 89 90 0 85 91 0
		 90 91 0 86 92 0 87 93 0 92 93 0 93 94 0 95 94 1 92 95 0 89 96 0 93 96 0 96 97 0 94 97 1
		 90 98 0 96 98 0 98 99 0 97 99 1 86 100 0 88 101 1 100 101 0 92 102 0 100 102 0 95 103 1
		 102 103 0 101 103 1 90 104 0 91 105 1 104 105 0 99 106 1 105 106 1 98 107 0 107 106 0
		 104 107 0 78 108 0 4 109 0 82 110 1 108 110 0 85 111 1 109 111 0 88 112 0 110 112 0
		 91 113 0 111 113 0 108 114 0 114 115 0 115 116 1 114 116 1 115 117 0 117 116 1 109 118 0
		 117 118 0 118 116 1 110 119 1 114 119 0 119 120 0 115 120 0 120 121 0 117 121 0 111 122 1
		 121 122 0 118 122 0 112 123 0 119 123 0 123 124 0 120 124 0 124 125 0 121 125 0 113 126 0
		 125 126 0 122 126 0 123 127 0 127 128 1 124 128 0 128 129 1 125 129 0 129 130 1 126 130 0
		 123 131 1 131 132 1 127 132 1 130 133 1 134 133 1 126 134 1 78 135 0 79 63 0 135 63 0
		 135 114 0 63 116 1 62 118 0 95 136 1 94 137 1 136 137 0 137 128 1 136 127 1 97 138 1
		 137 138 0 138 129 1 99 139 1 138 139 0 139 130 1 88 140 1 101 141 0 140 141 0 141 131 1
		 140 123 0 103 142 0 141 142 0 142 132 1 136 142 0 106 143 0 139 143 0 143 133 1 105 144 0
		 144 143 0 144 134 1 91 145 1 145 144 0 145 126 0 3 146 1 146 147 1 147 75 1 5 148 0
		 78 148 0 3 149 0 146 150 0 149 150 0 5 151 0 149 151 0 147 152 0 150 152 0 75 153 0
		 152 153 0 78 154 0 153 154 0 149 155 0 150 156 0 155 156 0 151 157 0 155 157 0 152 158 0
		 156 158 0 153 159 0 158 159 0 154 160 0 159 160 0 155 161 0 156 162 0 161 162 0 162 163 0
		 164 163 1 161 164 0 158 165 0 162 165 0 165 166 0 163 166 1 159 167 0 165 167 0 167 168 0
		 166 168 1 155 169 0 157 170 1;
	setAttr ".ed[332:473]" 169 170 0 161 171 0 169 171 0 164 172 1 171 172 0 170 172 1
		 159 173 0 160 174 1 173 174 0 168 175 1 174 175 1 167 176 0 176 175 0 173 176 0 5 177 0
		 78 178 0 151 179 1 177 179 0 154 180 1 178 180 0 157 181 0 179 181 0 160 182 0 180 182 0
		 177 183 0 183 184 0 184 185 1 183 185 1 184 186 0 186 185 1 178 187 0 186 187 0 187 185 1
		 179 188 1 183 188 0 188 189 0 184 189 0 189 190 0 186 190 0 180 191 1 190 191 0 187 191 0
		 181 192 0 188 192 0 192 193 0 189 193 0 193 194 0 190 194 0 182 195 0 194 195 0 191 195 0
		 192 196 0 196 197 1 193 197 0 197 198 1 194 198 0 198 199 1 195 199 0 192 200 1 200 201 1
		 196 201 1 199 202 1 203 202 1 195 203 1 148 63 0 64 183 0 63 185 1 135 187 0 164 204 1
		 163 205 1 204 205 0 205 197 1 204 196 1 166 206 1 205 206 0 206 198 1 168 207 1 206 207 0
		 207 199 1 157 208 1 170 209 0 208 209 0 209 200 1 208 192 0 172 210 0 209 210 0 210 201 1
		 204 210 0 175 211 0 207 211 0 211 202 1 174 212 0 212 211 0 212 203 1 160 213 1 213 212 0
		 213 195 0 0 214 1 1 215 1 214 215 0 2 216 1 215 216 0 3 217 1 216 217 0 75 218 1
		 76 219 1 218 219 0 77 220 1 219 220 0 220 214 0 146 221 1 217 221 0 147 222 1 221 222 0
		 222 218 0 214 223 0 215 224 0 223 224 0 225 223 0 225 224 1 216 226 0 224 226 0 225 226 1
		 217 227 0 226 227 0 225 227 0 218 228 0 219 229 0 228 229 0 225 228 0 225 229 1 220 230 0
		 229 230 0 225 230 1 230 223 0 221 231 0 227 231 0 225 231 1 222 232 0 231 232 0 225 232 1
		 232 228 0;
	setAttr -s 243 -ch 954 ".fc[0:242]" -type "polyFaces" 
		f 4 31 32 -34 -35
		mu 0 4 34 35 36 37
		f 4 36 37 -39 -33
		mu 0 4 35 38 39 36
		f 4 40 41 -43 -38
		mu 0 4 38 40 41 39
		f 3 -450 -451 451
		mu 0 3 276 277 16
		f 3 -454 -452 454
		mu 0 3 278 276 16
		f 3 -457 -455 457
		mu 0 3 279 278 16
		f 3 70 71 -73
		mu 0 3 51 14 50
		f 3 73 74 -72
		mu 0 3 14 13 50
		f 3 76 77 -75
		mu 0 3 13 52 50
		f 4 0 8 -10 -8
		mu 0 4 4 5 19 18
		f 4 -71 79 80 -82
		mu 0 4 9 67 68 20
		f 4 -4 7 11 -11
		mu 0 4 8 4 18 21
		f 4 1 12 -14 -9
		mu 0 4 5 6 22 19
		f 4 -74 81 82 -84
		mu 0 4 10 9 20 23
		f 4 2 14 -16 -13
		mu 0 4 6 7 24 22
		f 4 4 16 -18 -15
		mu 0 4 7 11 25 24
		f 4 -77 83 85 -87
		mu 0 4 70 10 23 69
		f 4 9 19 -21 -19
		mu 0 4 18 19 27 26
		f 4 -81 88 89 -91
		mu 0 4 20 68 71 28
		f 4 -12 18 22 -22
		mu 0 4 21 18 26 29
		f 4 13 23 -25 -20
		mu 0 4 19 22 30 27
		f 4 -83 90 91 -93
		mu 0 4 23 20 28 31
		f 4 15 25 -27 -24
		mu 0 4 22 24 32 30
		f 4 17 27 -29 -26
		mu 0 4 24 25 33 32
		f 4 -86 92 94 -96
		mu 0 4 69 23 31 72
		f 4 20 30 -32 -30
		mu 0 4 26 27 35 34
		f 4 -90 96 97 -99
		mu 0 4 28 71 59 60
		f 4 -46 47 49 -51
		mu 0 4 42 43 44 45
		f 4 24 35 -37 -31
		mu 0 4 27 30 38 35
		f 4 -92 98 99 -101
		mu 0 4 31 28 60 61
		f 4 26 39 -41 -36
		mu 0 4 30 32 40 38
		f 4 53 55 -58 -59
		mu 0 4 46 47 48 49
		f 4 -95 100 101 -103
		mu 0 4 72 31 61 62
		f 4 -23 43 45 -45
		mu 0 4 29 26 43 42
		f 4 29 46 -48 -44
		mu 0 4 26 34 44 43
		f 4 34 48 -50 -47
		mu 0 4 34 37 45 44
		f 4 -97 103 104 -106
		mu 0 4 59 71 63 64
		f 4 28 52 -54 -52
		mu 0 4 32 33 47 46
		f 4 102 106 -108 -109
		mu 0 4 72 62 65 66
		f 4 -42 56 57 -55
		mu 0 4 41 40 49 48
		f 4 -40 51 58 -57
		mu 0 4 40 32 46 49
		f 4 -112 112 72 -114
		mu 0 4 73 74 75 50
		f 4 115 113 -78 -117
		mu 0 4 76 73 50 77
		f 4 10 61 -63 -60
		mu 0 4 8 21 54 53
		f 4 -17 60 64 -64
		mu 0 4 25 11 56 55
		f 4 21 65 -67 -62
		mu 0 4 21 29 57 54
		f 4 -28 63 68 -68
		mu 0 4 33 25 55 58
		f 4 119 120 -98 -122
		mu 0 4 78 79 60 59
		f 4 123 124 -100 -121
		mu 0 4 79 80 61 60
		f 4 126 127 -102 -125
		mu 0 4 80 81 62 61
		f 4 130 131 -104 -133
		mu 0 4 82 83 63 71
		f 4 134 135 -105 -132
		mu 0 4 83 84 64 63
		f 4 -137 121 105 -136
		mu 0 4 84 78 59 64
		f 4 138 139 -107 -128
		mu 0 4 81 85 65 62
		f 4 -142 142 107 -140
		mu 0 4 85 86 66 65
		f 4 -145 145 108 -143
		mu 0 4 86 87 72 66
		f 4 62 78 -80 -70
		mu 0 4 53 54 68 67
		f 4 -65 75 86 -85
		mu 0 4 55 56 70 69
		f 4 66 87 -89 -79
		mu 0 4 54 57 71 68
		f 4 -69 84 95 -94
		mu 0 4 58 55 69 72
		f 4 -6 109 111 -111
		mu 0 4 17 15 74 73
		f 4 59 69 -113 -110
		mu 0 4 15 51 75 74
		f 4 6 110 -116 -115
		mu 0 4 12 17 73 76
		f 4 -61 114 116 -76
		mu 0 4 52 12 76 77
		f 4 33 118 -120 -118
		mu 0 4 37 36 79 78
		f 4 38 122 -124 -119
		mu 0 4 36 39 80 79
		f 4 42 125 -127 -123
		mu 0 4 39 41 81 80
		f 4 44 129 -131 -129
		mu 0 4 29 42 83 82
		f 4 -66 128 132 -88
		mu 0 4 57 29 82 71
		f 4 50 133 -135 -130
		mu 0 4 42 45 84 83
		f 4 -49 117 136 -134
		mu 0 4 45 37 78 84
		f 4 54 137 -139 -126
		mu 0 4 41 48 85 81
		f 4 -56 140 141 -138
		mu 0 4 48 47 86 85
		f 4 -53 143 144 -141
		mu 0 4 47 33 87 86
		f 4 67 93 -146 -144
		mu 0 4 33 58 72 87
		f 4 176 177 -179 -180
		mu 0 4 88 89 90 91
		f 4 181 182 -184 -178
		mu 0 4 89 92 93 90
		f 4 185 186 -188 -183
		mu 0 4 92 94 95 93
		f 3 -461 -462 462
		mu 0 3 280 281 98
		f 3 -465 -463 465
		mu 0 3 282 280 98
		f 3 -467 -466 450
		mu 0 3 283 282 98
		f 3 215 216 -218
		mu 0 3 101 102 103
		f 3 218 219 -217
		mu 0 3 102 104 103
		f 3 221 222 -220
		mu 0 3 104 105 103
		f 4 146 153 -155 -153
		mu 0 4 106 107 108 109
		f 4 -216 224 225 -227
		mu 0 4 110 111 112 113
		f 4 -150 152 156 -156
		mu 0 4 114 106 109 115
		f 4 147 157 -159 -154
		mu 0 4 107 116 117 108
		f 4 -219 226 227 -229
		mu 0 4 118 110 113 119
		f 4 148 159 -161 -158
		mu 0 4 116 120 121 117
		f 4 3 161 -163 -160
		mu 0 4 120 122 123 121
		f 4 -222 228 230 -232
		mu 0 4 124 118 119 125
		f 4 154 164 -166 -164
		mu 0 4 109 108 126 127
		f 4 -226 233 234 -236
		mu 0 4 113 112 128 129
		f 4 -157 163 167 -167
		mu 0 4 115 109 127 130
		f 4 158 168 -170 -165
		mu 0 4 108 117 131 126
		f 4 -228 235 236 -238
		mu 0 4 119 113 129 132
		f 4 160 170 -172 -169
		mu 0 4 117 121 133 131
		f 4 162 172 -174 -171
		mu 0 4 121 123 134 133
		f 4 -231 237 239 -241
		mu 0 4 125 119 132 135
		f 4 165 175 -177 -175
		mu 0 4 127 126 89 88
		f 4 -235 241 242 -244
		mu 0 4 129 128 136 137
		f 4 -191 192 194 -196
		mu 0 4 138 139 140 141
		f 4 169 180 -182 -176
		mu 0 4 126 131 92 89
		f 4 -237 243 244 -246
		mu 0 4 132 129 137 142
		f 4 171 184 -186 -181
		mu 0 4 131 133 94 92
		f 4 198 200 -203 -204
		mu 0 4 143 144 145 146
		f 4 -240 245 246 -248
		mu 0 4 135 132 142 147
		f 4 -168 188 190 -190
		mu 0 4 130 127 139 138
		f 4 174 191 -193 -189
		mu 0 4 127 88 140 139
		f 4 179 193 -195 -192
		mu 0 4 88 91 141 140
		f 4 -242 248 249 -251
		mu 0 4 136 128 148 149
		f 4 173 197 -199 -197
		mu 0 4 133 134 144 143
		f 4 247 251 -253 -254
		mu 0 4 135 147 150 151
		f 4 -187 201 202 -200
		mu 0 4 95 94 146 145
		f 4 -185 196 203 -202
		mu 0 4 94 133 143 146
		f 4 -257 257 217 -259
		mu 0 4 152 153 154 103
		f 4 111 258 -223 -260
		mu 0 4 155 152 103 156
		f 4 155 206 -208 -205
		mu 0 4 114 115 157 158
		f 4 -162 205 209 -209
		mu 0 4 123 122 159 160
		f 4 166 210 -212 -207
		mu 0 4 115 130 161 157
		f 4 -173 208 213 -213
		mu 0 4 134 123 160 162
		f 4 262 263 -243 -265
		mu 0 4 163 164 137 136
		f 4 266 267 -245 -264
		mu 0 4 164 165 142 137
		f 4 269 270 -247 -268
		mu 0 4 165 166 147 142
		f 4 273 274 -249 -276
		mu 0 4 167 168 148 128
		f 4 277 278 -250 -275
		mu 0 4 168 169 149 148
		f 4 -280 264 250 -279
		mu 0 4 169 163 136 149
		f 4 281 282 -252 -271
		mu 0 4 166 170 150 147
		f 4 -285 285 252 -283
		mu 0 4 170 171 151 150
		f 4 -288 288 253 -286
		mu 0 4 171 172 135 151
		f 4 207 223 -225 -215
		mu 0 4 158 157 112 111
		f 4 -210 220 231 -230
		mu 0 4 160 159 124 125
		f 4 211 232 -234 -224
		mu 0 4 157 161 128 112
		f 4 -214 229 240 -239
		mu 0 4 162 160 125 135
		f 4 -151 254 256 -256
		mu 0 4 173 174 153 152
		f 4 204 214 -258 -255
		mu 0 4 174 101 154 153
		f 4 151 255 -112 -110
		mu 0 4 175 173 152 155
		f 4 -206 109 259 -221
		mu 0 4 105 175 155 156
		f 4 178 261 -263 -261
		mu 0 4 91 90 164 163
		f 4 183 265 -267 -262
		mu 0 4 90 93 165 164
		f 4 187 268 -270 -266
		mu 0 4 93 95 166 165
		f 4 189 272 -274 -272
		mu 0 4 130 138 168 167
		f 4 -211 271 275 -233
		mu 0 4 161 130 167 128
		f 4 195 276 -278 -273
		mu 0 4 138 141 169 168
		f 4 -194 260 279 -277
		mu 0 4 141 91 163 169
		f 4 199 280 -282 -269
		mu 0 4 95 145 170 166
		f 4 -201 283 284 -281
		mu 0 4 145 144 171 170
		f 4 -198 286 287 -284
		mu 0 4 144 134 172 171
		f 4 212 238 -289 -287
		mu 0 4 134 162 135 172
		f 4 318 319 -321 -322
		mu 0 4 176 177 178 179
		f 4 323 324 -326 -320
		mu 0 4 177 180 181 178
		f 4 327 328 -330 -325
		mu 0 4 180 182 183 181
		f 3 -469 -458 469
		mu 0 3 284 285 186
		f 3 -472 -470 472
		mu 0 3 286 284 186
		f 3 -474 -473 461
		mu 0 3 287 286 186
		f 3 357 358 -360
		mu 0 3 189 190 191
		f 3 360 361 -359
		mu 0 3 190 192 191
		f 3 363 364 -362
		mu 0 3 192 193 191
		f 4 289 295 -297 -295
		mu 0 4 194 195 196 197
		f 4 -358 366 367 -369
		mu 0 4 198 199 200 201
		f 4 -5 294 298 -298
		mu 0 4 202 194 197 203
		f 4 290 299 -301 -296
		mu 0 4 195 204 205 196
		f 4 -361 368 369 -371
		mu 0 4 206 198 201 207
		f 4 291 301 -303 -300
		mu 0 4 204 208 209 205
		f 4 149 303 -305 -302
		mu 0 4 208 210 211 209
		f 4 -364 370 372 -374
		mu 0 4 212 206 207 213
		f 4 296 306 -308 -306
		mu 0 4 197 196 214 215
		f 4 -368 375 376 -378
		mu 0 4 201 200 216 217
		f 4 -299 305 309 -309
		mu 0 4 203 197 215 218
		f 4 300 310 -312 -307
		mu 0 4 196 205 219 214
		f 4 -370 377 378 -380
		mu 0 4 207 201 217 220
		f 4 302 312 -314 -311
		mu 0 4 205 209 221 219
		f 4 304 314 -316 -313
		mu 0 4 209 211 222 221
		f 4 -373 379 381 -383
		mu 0 4 213 207 220 223
		f 4 307 317 -319 -317
		mu 0 4 215 214 177 176
		f 4 -377 383 384 -386
		mu 0 4 217 216 224 225
		f 4 -333 334 336 -338
		mu 0 4 226 227 228 229
		f 4 311 322 -324 -318
		mu 0 4 214 219 180 177
		f 4 -379 385 386 -388
		mu 0 4 220 217 225 230
		f 4 313 326 -328 -323
		mu 0 4 219 221 182 180
		f 4 340 342 -345 -346
		mu 0 4 231 232 233 234
		f 4 -382 387 388 -390
		mu 0 4 223 220 230 235
		f 4 -310 330 332 -332
		mu 0 4 218 215 227 226
		f 4 316 333 -335 -331
		mu 0 4 215 176 228 227
		f 4 321 335 -337 -334
		mu 0 4 176 179 229 228
		f 4 -384 390 391 -393
		mu 0 4 224 216 236 237
		f 4 315 339 -341 -339
		mu 0 4 221 222 232 231
		f 4 389 393 -395 -396
		mu 0 4 223 235 238 239
		f 4 -329 343 344 -342
		mu 0 4 183 182 234 233
		f 4 -327 338 345 -344
		mu 0 4 182 221 231 234
		f 4 -116 397 359 -399
		mu 0 4 240 241 242 191
		f 4 256 398 -365 -400
		mu 0 4 243 240 191 244
		f 4 297 348 -350 -347
		mu 0 4 202 203 245 246
		f 4 -304 347 351 -351
		mu 0 4 211 210 247 248
		f 4 308 352 -354 -349
		mu 0 4 203 218 249 245
		f 4 -315 350 355 -355
		mu 0 4 222 211 248 250
		f 4 402 403 -385 -405
		mu 0 4 251 252 225 224
		f 4 406 407 -387 -404
		mu 0 4 252 253 230 225
		f 4 409 410 -389 -408
		mu 0 4 253 254 235 230
		f 4 413 414 -391 -416
		mu 0 4 255 256 236 216
		f 4 417 418 -392 -415
		mu 0 4 256 257 237 236
		f 4 -420 404 392 -419
		mu 0 4 257 251 224 237
		f 4 421 422 -394 -411
		mu 0 4 254 258 238 235
		f 4 -425 425 394 -423
		mu 0 4 258 259 239 238
		f 4 -428 428 395 -426
		mu 0 4 259 260 223 239
		f 4 349 365 -367 -357
		mu 0 4 246 245 200 199
		f 4 -352 362 373 -372
		mu 0 4 248 247 212 213
		f 4 353 374 -376 -366
		mu 0 4 245 249 216 200
		f 4 -356 371 382 -381
		mu 0 4 250 248 213 223
		f 4 -293 114 115 -397
		mu 0 4 261 262 241 240
		f 4 346 356 -398 -115
		mu 0 4 262 189 242 241
		f 4 293 396 -257 -255
		mu 0 4 263 261 240 243
		f 4 -348 254 399 -363
		mu 0 4 193 263 243 244
		f 4 320 401 -403 -401
		mu 0 4 179 178 252 251
		f 4 325 405 -407 -402
		mu 0 4 178 181 253 252
		f 4 329 408 -410 -406
		mu 0 4 181 183 254 253
		f 4 331 412 -414 -412
		mu 0 4 218 226 256 255
		f 4 -353 411 415 -375
		mu 0 4 249 218 255 216
		f 4 337 416 -418 -413
		mu 0 4 226 229 257 256
		f 4 -336 400 419 -417
		mu 0 4 229 179 251 257
		f 4 341 420 -422 -409
		mu 0 4 183 233 258 254
		f 4 -343 423 424 -421
		mu 0 4 233 232 259 258
		f 4 -340 426 427 -424
		mu 0 4 232 222 260 259
		f 4 354 380 -429 -427
		mu 0 4 222 250 223 260
		f 4 -1 429 431 -431
		mu 0 4 1 0 265 264
		f 4 -2 430 433 -433
		mu 0 4 2 1 264 266
		f 4 -3 432 435 -435
		mu 0 4 3 2 266 267
		f 4 -147 436 438 -438
		mu 0 4 96 97 269 268
		f 4 -148 437 440 -440
		mu 0 4 99 96 268 270
		f 4 -149 439 441 -430
		mu 0 4 100 99 270 271
		f 4 -290 434 443 -443
		mu 0 4 184 185 273 272
		f 4 -291 442 445 -445
		mu 0 4 187 184 272 274
		f 4 -292 444 446 -437
		mu 0 4 188 187 274 275
		f 4 -432 447 449 -449
		mu 0 4 264 265 277 276
		f 4 -434 448 453 -453
		mu 0 4 266 264 276 278
		f 4 -436 452 456 -456
		mu 0 4 267 266 278 279
		f 4 -439 458 460 -460
		mu 0 4 268 269 281 280
		f 4 -441 459 464 -464
		mu 0 4 270 268 280 282
		f 4 -442 463 466 -448
		mu 0 4 271 270 282 283
		f 4 -444 455 468 -468
		mu 0 4 272 273 285 284
		f 4 -446 467 471 -471
		mu 0 4 274 272 284 286
		f 4 -447 470 473 -459
		mu 0 4 275 274 286 287;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	setAttr ".rp" -type "double3" 0.27500052840031719 0.24941792184754788 0.50742107191515373 ;
	setAttr ".sp" -type "double3" 0.27500052840031719 0.24941792184754788 0.50742107191515373 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[6:8]" "f[11:13]" "f[16:18]" "f[70:105]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 5 "f[0:5]" "f[9:10]" "f[14:15]" "f[19:69]" "f[106:145]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 166 ".uvst[0].uvsp[0:165]" -type "float2" 0.375 0 0.42500001
		 0 0.47500002 0 0.52500004 0 0.57500005 0 0.62500006 0 0.375 0.050000001 0.42500001
		 0.050000001 0.47500002 0.050000001 0.52500004 0.050000001 0.57500005 0.050000001
		 0.62500006 0.050000001 0.375 0.1 0.42500001 0.1 0.47500002 0.1 0.52500004 0.1 0.57500005
		 0.1 0.62500006 0.1 0.375 0.15000001 0.42500001 0.15000001 0.47500002 0.15000001 0.52500004
		 0.15000001 0.57500005 0.15000001 0.62500006 0.15000001 0.375 0.2 0.42500001 0.2 0.47500002
		 0.2 0.52500004 0.2 0.57500005 0.2 0.62500006 0.2 0.375 0.25 0.42500001 0.25 0.47500002
		 0.25 0.52500004 0.25 0.57500005 0.25 0.62500006 0.25 0.375 0.5 0.42500001 0.5 0.47500002
		 0.5 0.52500004 0.5 0.57500005 0.5 0.62500006 0.5 0.375 0.55000001 0.42500001 0.55000001
		 0.47500002 0.55000001 0.52500004 0.55000001 0.57500005 0.55000001 0.62500006 0.55000001
		 0.375 0.60000002 0.42500001 0.60000002 0.47500002 0.60000002 0.52500004 0.60000002
		 0.57500005 0.60000002 0.62500006 0.60000002 0.375 0.65000004 0.42500001 0.65000004
		 0.47500002 0.65000004 0.52500004 0.65000004 0.57500005 0.65000004 0.62500006 0.65000004
		 0.375 0.70000005 0.42500001 0.70000005 0.47500002 0.70000005 0.52500004 0.70000005
		 0.57500005 0.70000005 0.62500006 0.70000005 0.375 0.75000006 0.42500001 0.75000006
		 0.47500002 0.75000006 0.52500004 0.75000006 0.57500005 0.75000006 0.62500006 0.75000006
		 0.375 1 0.42500001 1 0.47500002 1 0.52500004 1 0.57500005 1 0.62500006 1 0.875 0
		 0.875 0.050000001 0.875 0.1 0.875 0.15000001 0.875 0.2 0.875 0.25 0.125 0 0.125 0.050000001
		 0.125 0.1 0.125 0.15000001 0.125 0.2 0.125 0.25 0.42500001 0.050000001 0.47500002
		 0.050000001 0.47500002 0.1 0.42500001 0.1 0.47500002 0.050000001 0.52500004 0.050000001
		 0.52500004 0.1 0.47500002 0.1 0.52500004 0.050000001 0.57500005 0.050000001 0.57500005
		 0.1 0.52500004 0.1 0.42500001 0.1 0.47500002 0.1 0.47500002 0.15000001 0.42500001
		 0.15000001 0.47500002 0.1 0.52500004 0.1 0.52500004 0.15000001 0.47500002 0.15000001
		 0.52500004 0.1 0.57500005 0.1 0.57500005 0.15000001 0.52500004 0.15000001 0.42500001
		 0.15000001 0.47500002 0.15000001 0.47500002 0.2 0.42500001 0.2 0.47500002 0.15000001
		 0.52500004 0.15000001 0.52500004 0.2 0.47500002 0.2 0.52500004 0.15000001 0.57500005
		 0.15000001 0.57500005 0.2 0.52500004 0.2 0.375 0.25 0.42500001 0.25 0.42500001 0.5
		 0.375 0.5 0.42500001 0.25 0.47500002 0.25 0.47500002 0.5 0.42500001 0.5 0.47500002
		 0.25 0.52500004 0.25 0.52500004 0.5 0.47500002 0.5 0.52500004 0.25 0.57500005 0.25
		 0.57500005 0.5 0.52500004 0.5 0.57500005 0.25 0.62500006 0.25 0.62500006 0.5 0.57500005
		 0.5 0.375 0.25 0.42500001 0.25 0.42500001 0.25 0.375 0.25 0.42500001 0.25 0.47500002
		 0.25 0.47500002 0.25 0.42500001 0.25 0.47500002 0.25 0.52500004 0.25 0.52500004 0.25
		 0.47500002 0.25 0.52500004 0.25 0.57500005 0.25 0.57500005 0.25 0.52500004 0.25 0.57500005
		 0.25 0.62500006 0.25 0.62500006 0.25 0.57500005 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 148 ".vt[0:147]"  0.23215266 0.20725837 0.51270443 0.24929182 0.20725837 0.51270443
		 0.26643094 0.20725837 0.51270443 0.28357011 0.20725837 0.51270443 0.30070925 0.20725837 0.51270443
		 0.31784841 0.20725837 0.51270443 0.23215266 0.2241222 0.51270443 0.23731531 0.21176735 0.51270443
		 0.26233602 0.21176735 0.51270443 0.28735673 0.21176735 0.51270443 0.31237742 0.21176735 0.51270443
		 0.31784841 0.2241222 0.51270443 0.23215266 0.240986 0.51270443 0.23731531 0.23638611 0.51270443
		 0.26233602 0.23638611 0.51270443 0.28735673 0.23638611 0.51270443 0.31237742 0.23638611 0.51270443
		 0.31784841 0.240986 0.51270443 0.23215266 0.25784981 0.51270443 0.23731531 0.26100487 0.51270443
		 0.26233602 0.26100487 0.51270443 0.28735673 0.26100487 0.51270443 0.31237742 0.26100487 0.51270443
		 0.31784841 0.25784981 0.51270443 0.23215266 0.27471364 0.51270443 0.23731531 0.28562364 0.51270443
		 0.26233602 0.28562364 0.51270443 0.28735673 0.28562364 0.51270443 0.31237742 0.28562364 0.51270443
		 0.31784841 0.27471364 0.51270443 0.23215266 0.28840736 0.51270443 0.24929182 0.28840736 0.51533312
		 0.26643094 0.28840736 0.51533312 0.28357011 0.28840736 0.51533312 0.30070925 0.28840736 0.51533312
		 0.31784841 0.28840736 0.51270443 0.23215266 0.28840736 0.50213772 0.24929182 0.29157746 0.50213772
		 0.26643094 0.29157746 0.50213772 0.28357011 0.29157746 0.50213772 0.30070925 0.29157746 0.50213772
		 0.31784841 0.28840736 0.50213772 0.23215266 0.27471364 0.50213772 0.24929182 0.27471364 0.50213772
		 0.26643094 0.27471364 0.50213772 0.28357011 0.27471364 0.50213772 0.30070925 0.27471364 0.50213772
		 0.31784841 0.27471364 0.50213772 0.23215266 0.25784981 0.50213772 0.24929182 0.25784981 0.50213772
		 0.26643094 0.25784981 0.50213772 0.28357011 0.25784981 0.50213772 0.30070925 0.25784981 0.50213772
		 0.31784841 0.25784981 0.50213772 0.23215266 0.240986 0.50213772 0.24929182 0.240986 0.50213772
		 0.26643094 0.240986 0.50213772 0.28357011 0.240986 0.50213772 0.30070925 0.240986 0.50213772
		 0.31784841 0.240986 0.50213772 0.23215266 0.22412218 0.50213772 0.24929182 0.22412218 0.50213772
		 0.26643094 0.22412218 0.50213772 0.28357011 0.22412218 0.50213772 0.30070925 0.22412218 0.50213772
		 0.31784841 0.22412218 0.50213772 0.23215266 0.20725837 0.50213772 0.24929182 0.20725837 0.50213772
		 0.26643094 0.20725837 0.50213772 0.28357011 0.20725837 0.50213772 0.30070925 0.20725837 0.50213772
		 0.31784841 0.20725837 0.50213772 0.24045214 0.21485378 0.51866698 0.2591992 0.21485378 0.51866698
		 0.2591992 0.23329967 0.51866698 0.24045214 0.23329967 0.51866698 0.26547286 0.21485378 0.51866698
		 0.28421992 0.21485378 0.51866698 0.28421992 0.23329967 0.51866698 0.26547286 0.23329967 0.51866698
		 0.29049358 0.21485378 0.51866698 0.30924061 0.21485378 0.51866698 0.30924061 0.23329967 0.51866698
		 0.29049358 0.23329967 0.51866698 0.24045214 0.23947254 0.51866698 0.2591992 0.23947254 0.51866698
		 0.2591992 0.25791845 0.51866698 0.24045214 0.25791845 0.51866698 0.26547286 0.23947254 0.51866698
		 0.28421992 0.23947254 0.51866698 0.28421992 0.25791845 0.51866698 0.26547286 0.25791845 0.51866698
		 0.29049358 0.23947254 0.51866698 0.30924061 0.23947254 0.51866698 0.30924061 0.25791845 0.51866698
		 0.29049358 0.25791845 0.51866698 0.24045214 0.26409131 0.51866698 0.2591992 0.26409131 0.51866698
		 0.2591992 0.28253719 0.51866698 0.24045214 0.28253719 0.51866698 0.26547286 0.26409131 0.51866698
		 0.28421992 0.26409131 0.51866698 0.28421992 0.28253719 0.51866698 0.26547286 0.28253719 0.51866698
		 0.29049358 0.26409131 0.51866698 0.30924061 0.26409131 0.51866698 0.30924061 0.28253719 0.51866698
		 0.29049358 0.28253719 0.51866698 0.23215266 0.30703494 0.51270443 0.24929182 0.30703494 0.51270443
		 0.24929182 0.30703494 0.50213772 0.23215266 0.30703494 0.50213772 0.24929182 0.30703494 0.51270443
		 0.26643094 0.30703494 0.51270443 0.26643094 0.30703494 0.50213772 0.24929182 0.30703494 0.50213772
		 0.26643094 0.30703494 0.51270443 0.28357011 0.30703494 0.51270443 0.28357011 0.30703494 0.50213772
		 0.26643094 0.30703494 0.50213772 0.28357011 0.30703494 0.51270443 0.30070925 0.30703494 0.51270443
		 0.30070925 0.30703494 0.50213772 0.28357011 0.30703494 0.50213772 0.30070925 0.30703494 0.51270443
		 0.31784841 0.30703494 0.51270443 0.31784841 0.30703494 0.50213772 0.30070925 0.30703494 0.50213772
		 0.23215266 0.29291075 0.52077579 0.24929182 0.29291075 0.52077579 0.24929182 0.30703494 0.52077579
		 0.23215266 0.30703494 0.52077579 0.24929182 0.29291075 0.52077579 0.26643094 0.29291075 0.52077579
		 0.26643094 0.30703494 0.52077579 0.24929182 0.30703494 0.52077579 0.26643094 0.29291075 0.52077579
		 0.28357011 0.29291075 0.52077579 0.28357011 0.30703494 0.52077579 0.26643094 0.30703494 0.52077579
		 0.28357011 0.29291075 0.52077579 0.30070925 0.29291075 0.52077579 0.30070925 0.30703494 0.52077579
		 0.28357011 0.30703494 0.52077579 0.30070925 0.29291075 0.52077579 0.31784841 0.29291075 0.52077579
		 0.31784841 0.30703494 0.52077579 0.30070925 0.30703494 0.52077579;
	setAttr -s 292 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 6 7 1 7 8 0 8 9 0 9 10 0
		 10 11 1 12 13 1 13 14 0 14 15 0 15 16 0 16 17 1 18 19 1 19 20 0 20 21 0 21 22 0 22 23 1
		 24 25 1 25 26 0 26 27 0 27 28 0 28 29 1 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 36 37 1
		 37 38 1 38 39 1 39 40 1 40 41 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 48 49 1 49 50 1
		 50 51 1 51 52 1 52 53 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 60 61 1 61 62 1 62 63 1
		 63 64 1 64 65 1 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 0 6 0 1 7 1 2 8 1 3 9 1 4 10 1
		 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0 12 18 0 13 19 0 14 20 0 15 21 0
		 16 22 0 17 23 0 18 24 0 19 25 0 20 26 0 21 27 0 22 28 0 23 29 0 24 30 0 25 31 1 26 32 1
		 27 33 1 28 34 1 29 35 0 30 36 1 31 37 0 32 38 0 33 39 0 34 40 0 35 41 1 36 42 0 37 43 1
		 38 44 1 39 45 1 40 46 1 41 47 0 42 48 0 43 49 1 44 50 1 45 51 1 46 52 1 47 53 0 48 54 0
		 49 55 1 50 56 1 51 57 1 52 58 1 53 59 0 54 60 0 55 61 1 56 62 1 57 63 1 58 64 1 59 65 0
		 60 66 0 61 67 1 62 68 1 63 69 1 64 70 1 65 71 0 66 0 0 67 1 1 68 2 1 69 3 1 70 4 1
		 71 5 0 65 11 1 59 17 1 53 23 1 47 29 1 60 6 1 54 12 1 48 18 1 42 24 1 7 72 0 8 73 0
		 72 73 0 14 74 0 73 74 0 13 75 0 75 74 0 72 75 0 8 76 0 9 77 0 76 77 0 15 78 0 77 78 0
		 14 79 0 79 78 0 76 79 0 9 80 0 10 81 0 80 81 0 16 82 0 81 82 0 15 83 0 83 82 0 80 83 0
		 13 84 0 14 85 0;
	setAttr ".ed[166:291]" 84 85 0 20 86 0 85 86 0 19 87 0 87 86 0 84 87 0 14 88 0
		 15 89 0 88 89 0 21 90 0 89 90 0 20 91 0 91 90 0 88 91 0 15 92 0 16 93 0 92 93 0 22 94 0
		 93 94 0 21 95 0 95 94 0 92 95 0 19 96 0 20 97 0 96 97 0 26 98 0 97 98 0 25 99 0 99 98 0
		 96 99 0 20 100 0 21 101 0 100 101 0 27 102 0 101 102 0 26 103 0 103 102 0 100 103 0
		 21 104 0 22 105 0 104 105 0 28 106 0 105 106 0 27 107 0 107 106 0 104 107 0 30 108 1
		 31 109 1 108 109 1 37 110 0 109 110 0 36 111 0 111 110 0 108 111 0 31 112 1 32 113 1
		 112 113 1 38 114 0 113 114 0 37 115 0 115 114 0 112 115 0 32 116 1 33 117 1 116 117 1
		 39 118 0 117 118 0 38 119 0 119 118 0 116 119 0 33 120 1 34 121 1 120 121 1 40 122 0
		 121 122 0 39 123 0 123 122 0 120 123 0 34 124 1 35 125 1 124 125 1 41 126 0 125 126 0
		 40 127 0 127 126 0 124 127 0 30 128 0 31 129 0 128 129 0 109 130 0 129 130 0 108 131 0
		 131 130 0 128 131 0 31 132 0 32 133 0 132 133 0 113 134 0 133 134 0 112 135 0 135 134 0
		 132 135 0 32 136 0 33 137 0 136 137 0 117 138 0 137 138 0 116 139 0 139 138 0 136 139 0
		 33 140 0 34 141 0 140 141 0 121 142 0 141 142 0 120 143 0 143 142 0 140 143 0 34 144 0
		 35 145 0 144 145 0 125 146 0 145 146 0 124 147 0 147 146 0 144 147 0;
	setAttr -s 146 -ch 584 ".fc[0:145]" -type "polyFaces" 
		f 4 0 61 -6 -61
		mu 0 4 0 1 7 6
		f 4 1 62 -7 -62
		mu 0 4 1 2 8 7
		f 4 2 63 -8 -63
		mu 0 4 2 3 9 8
		f 4 3 64 -9 -64
		mu 0 4 3 4 10 9
		f 4 4 65 -10 -65
		mu 0 4 4 5 11 10
		f 4 5 67 -11 -67
		mu 0 4 6 7 13 12
		f 4 142 144 -147 -148
		mu 0 4 90 91 92 93
		f 4 150 152 -155 -156
		mu 0 4 94 95 96 97
		f 4 158 160 -163 -164
		mu 0 4 98 99 100 101
		f 4 9 71 -15 -71
		mu 0 4 10 11 17 16
		f 4 10 73 -16 -73
		mu 0 4 12 13 19 18
		f 4 166 168 -171 -172
		mu 0 4 102 103 104 105
		f 4 174 176 -179 -180
		mu 0 4 106 107 108 109
		f 4 182 184 -187 -188
		mu 0 4 110 111 112 113
		f 4 14 77 -20 -77
		mu 0 4 16 17 23 22
		f 4 15 79 -21 -79
		mu 0 4 18 19 25 24
		f 4 190 192 -195 -196
		mu 0 4 114 115 116 117
		f 4 198 200 -203 -204
		mu 0 4 118 119 120 121
		f 4 206 208 -211 -212
		mu 0 4 122 123 124 125
		f 4 19 83 -25 -83
		mu 0 4 22 23 29 28
		f 4 20 85 -26 -85
		mu 0 4 24 25 31 30
		f 4 21 86 -27 -86
		mu 0 4 25 26 32 31
		f 4 22 87 -28 -87
		mu 0 4 26 27 33 32
		f 4 23 88 -29 -88
		mu 0 4 27 28 34 33
		f 4 24 89 -30 -89
		mu 0 4 28 29 35 34
		f 4 214 216 -219 -220
		mu 0 4 126 127 128 129
		f 4 222 224 -227 -228
		mu 0 4 130 131 132 133
		f 4 230 232 -235 -236
		mu 0 4 134 135 136 137
		f 4 238 240 -243 -244
		mu 0 4 138 139 140 141
		f 4 246 248 -251 -252
		mu 0 4 142 143 144 145
		f 4 30 97 -36 -97
		mu 0 4 36 37 43 42
		f 4 31 98 -37 -98
		mu 0 4 37 38 44 43
		f 4 32 99 -38 -99
		mu 0 4 38 39 45 44
		f 4 33 100 -39 -100
		mu 0 4 39 40 46 45
		f 4 34 101 -40 -101
		mu 0 4 40 41 47 46
		f 4 35 103 -41 -103
		mu 0 4 42 43 49 48
		f 4 36 104 -42 -104
		mu 0 4 43 44 50 49
		f 4 37 105 -43 -105
		mu 0 4 44 45 51 50
		f 4 38 106 -44 -106
		mu 0 4 45 46 52 51
		f 4 39 107 -45 -107
		mu 0 4 46 47 53 52
		f 4 40 109 -46 -109
		mu 0 4 48 49 55 54
		f 4 41 110 -47 -110
		mu 0 4 49 50 56 55
		f 4 42 111 -48 -111
		mu 0 4 50 51 57 56
		f 4 43 112 -49 -112
		mu 0 4 51 52 58 57
		f 4 44 113 -50 -113
		mu 0 4 52 53 59 58
		f 4 45 115 -51 -115
		mu 0 4 54 55 61 60
		f 4 46 116 -52 -116
		mu 0 4 55 56 62 61
		f 4 47 117 -53 -117
		mu 0 4 56 57 63 62
		f 4 48 118 -54 -118
		mu 0 4 57 58 64 63
		f 4 49 119 -55 -119
		mu 0 4 58 59 65 64
		f 4 50 121 -56 -121
		mu 0 4 60 61 67 66
		f 4 51 122 -57 -122
		mu 0 4 61 62 68 67
		f 4 52 123 -58 -123
		mu 0 4 62 63 69 68
		f 4 53 124 -59 -124
		mu 0 4 63 64 70 69
		f 4 54 125 -60 -125
		mu 0 4 64 65 71 70
		f 4 55 127 -1 -127
		mu 0 4 66 67 73 72
		f 4 56 128 -2 -128
		mu 0 4 67 68 74 73
		f 4 57 129 -3 -129
		mu 0 4 68 69 75 74
		f 4 58 130 -4 -130
		mu 0 4 69 70 76 75
		f 4 59 131 -5 -131
		mu 0 4 70 71 77 76
		f 4 -132 -126 132 -66
		mu 0 4 5 78 79 11
		f 4 -133 -120 133 -72
		mu 0 4 11 79 80 17
		f 4 -134 -114 134 -78
		mu 0 4 17 80 81 23
		f 4 -135 -108 135 -84
		mu 0 4 23 81 82 29
		f 4 -136 -102 -96 -90
		mu 0 4 29 82 83 35
		f 4 126 60 -137 120
		mu 0 4 84 0 6 85
		f 4 136 66 -138 114
		mu 0 4 85 6 12 86
		f 4 137 72 -139 108
		mu 0 4 86 12 18 87
		f 4 138 78 -140 102
		mu 0 4 87 18 24 88
		f 4 139 84 90 96
		mu 0 4 88 24 30 89
		f 4 6 141 -143 -141
		mu 0 4 7 8 91 90
		f 4 68 143 -145 -142
		mu 0 4 8 14 92 91
		f 4 -12 145 146 -144
		mu 0 4 14 13 93 92
		f 4 -68 140 147 -146
		mu 0 4 13 7 90 93
		f 4 7 149 -151 -149
		mu 0 4 8 9 95 94
		f 4 69 151 -153 -150
		mu 0 4 9 15 96 95
		f 4 -13 153 154 -152
		mu 0 4 15 14 97 96
		f 4 -69 148 155 -154
		mu 0 4 14 8 94 97
		f 4 8 157 -159 -157
		mu 0 4 9 10 99 98
		f 4 70 159 -161 -158
		mu 0 4 10 16 100 99
		f 4 -14 161 162 -160
		mu 0 4 16 15 101 100
		f 4 -70 156 163 -162
		mu 0 4 15 9 98 101
		f 4 11 165 -167 -165
		mu 0 4 13 14 103 102
		f 4 74 167 -169 -166
		mu 0 4 14 20 104 103
		f 4 -17 169 170 -168
		mu 0 4 20 19 105 104
		f 4 -74 164 171 -170
		mu 0 4 19 13 102 105
		f 4 12 173 -175 -173
		mu 0 4 14 15 107 106
		f 4 75 175 -177 -174
		mu 0 4 15 21 108 107
		f 4 -18 177 178 -176
		mu 0 4 21 20 109 108
		f 4 -75 172 179 -178
		mu 0 4 20 14 106 109
		f 4 13 181 -183 -181
		mu 0 4 15 16 111 110
		f 4 76 183 -185 -182
		mu 0 4 16 22 112 111
		f 4 -19 185 186 -184
		mu 0 4 22 21 113 112
		f 4 -76 180 187 -186
		mu 0 4 21 15 110 113
		f 4 16 189 -191 -189
		mu 0 4 19 20 115 114
		f 4 80 191 -193 -190
		mu 0 4 20 26 116 115
		f 4 -22 193 194 -192
		mu 0 4 26 25 117 116
		f 4 -80 188 195 -194
		mu 0 4 25 19 114 117
		f 4 17 197 -199 -197
		mu 0 4 20 21 119 118
		f 4 81 199 -201 -198
		mu 0 4 21 27 120 119
		f 4 -23 201 202 -200
		mu 0 4 27 26 121 120
		f 4 -81 196 203 -202
		mu 0 4 26 20 118 121
		f 4 18 205 -207 -205
		mu 0 4 21 22 123 122
		f 4 82 207 -209 -206
		mu 0 4 22 28 124 123
		f 4 -24 209 210 -208
		mu 0 4 28 27 125 124
		f 4 -82 204 211 -210
		mu 0 4 27 21 122 125
		f 4 254 256 -259 -260
		mu 0 4 146 147 148 149
		f 4 91 215 -217 -214
		mu 0 4 31 37 128 127
		f 4 -31 217 218 -216
		mu 0 4 37 36 129 128
		f 4 -91 212 219 -218
		mu 0 4 36 30 126 129
		f 4 262 264 -267 -268
		mu 0 4 150 151 152 153
		f 4 92 223 -225 -222
		mu 0 4 32 38 132 131
		f 4 -32 225 226 -224
		mu 0 4 38 37 133 132
		f 4 -92 220 227 -226
		mu 0 4 37 31 130 133
		f 4 270 272 -275 -276
		mu 0 4 154 155 156 157
		f 4 93 231 -233 -230
		mu 0 4 33 39 136 135
		f 4 -33 233 234 -232
		mu 0 4 39 38 137 136
		f 4 -93 228 235 -234
		mu 0 4 38 32 134 137
		f 4 278 280 -283 -284
		mu 0 4 158 159 160 161
		f 4 94 239 -241 -238
		mu 0 4 34 40 140 139
		f 4 -34 241 242 -240
		mu 0 4 40 39 141 140
		f 4 -94 236 243 -242
		mu 0 4 39 33 138 141
		f 4 286 288 -291 -292
		mu 0 4 162 163 164 165
		f 4 95 247 -249 -246
		mu 0 4 35 41 144 143
		f 4 -35 249 250 -248
		mu 0 4 41 40 145 144
		f 4 -95 244 251 -250
		mu 0 4 40 34 142 145
		f 4 25 253 -255 -253
		mu 0 4 30 31 147 146
		f 4 213 255 -257 -254
		mu 0 4 31 127 148 147
		f 4 -215 257 258 -256
		mu 0 4 127 126 149 148
		f 4 -213 252 259 -258
		mu 0 4 126 30 146 149
		f 4 26 261 -263 -261
		mu 0 4 31 32 151 150
		f 4 221 263 -265 -262
		mu 0 4 32 131 152 151
		f 4 -223 265 266 -264
		mu 0 4 131 130 153 152
		f 4 -221 260 267 -266
		mu 0 4 130 31 150 153
		f 4 27 269 -271 -269
		mu 0 4 32 33 155 154
		f 4 229 271 -273 -270
		mu 0 4 33 135 156 155
		f 4 -231 273 274 -272
		mu 0 4 135 134 157 156
		f 4 -229 268 275 -274
		mu 0 4 134 32 154 157
		f 4 28 277 -279 -277
		mu 0 4 33 34 159 158
		f 4 237 279 -281 -278
		mu 0 4 34 139 160 159
		f 4 -239 281 282 -280
		mu 0 4 139 138 161 160
		f 4 -237 276 283 -282
		mu 0 4 138 33 158 161
		f 4 29 285 -287 -285
		mu 0 4 34 35 163 162
		f 4 245 287 -289 -286
		mu 0 4 35 143 164 163
		f 4 -247 289 290 -288
		mu 0 4 143 142 165 164
		f 4 -245 284 291 -290
		mu 0 4 142 34 162 165;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "directionalLight1";
	setAttr ".t" -type "double3" 0 0.14337385585722659 1.0003719256357768 ;
	setAttr ".s" -type "double3" 10.498605034530073 10.498605034530073 10.498605034530073 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	setAttr -k off ".v";
parent -s -nc -r -add "|pCylinder1|transform3|pCylinderShape1" "transform2" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode lambert -n "Main";
	setAttr ".dc" 0.77777779102325439;
	setAttr ".c" -type "float3" 0.15686275 0.15686275 0.15686275 ;
	setAttr ".ic" -type "float3" 0.051285572 0.051285572 0.051285572 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode blinn -n "blinn1";
	setAttr ".dc" 0.58119660615921021;
	setAttr ".c" -type "float3" 0.83700001 0.83700001 0.83700001 ;
	setAttr ".ambc" -type "float3" 0.23076218 0.23076218 0.23076218 ;
	setAttr ".ic" -type "float3" 0.094010837 0.094010837 0.094010837 ;
	setAttr ".rfl" 0.57264959812164307;
	setAttr ".ec" 0.28202307224273682;
	setAttr ".sro" 0.64102566242218018;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
createNode phong -n "phong1";
	setAttr ".c" -type "float3" 0.146 0.146 0.146 ;
	setAttr ".tcf" 0.45299145579338074;
	setAttr ".trsd" 0.98290598392486572;
	setAttr ".sc" -type "float3" 0.50428015 0.50428015 0.50428015 ;
	setAttr ".rfl" 0.52136754989624023;
	setAttr ".cp" 27.128204345703125;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit1";
	setAttr -s 7 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 21;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0 0.01 ;
	setAttr ".sps[0].sp[1].f" 22;
	setAttr ".sps[0].sp[1].t" 2;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.0063058090209960936 0.0036941912770271303 
		-2.9802322387695313e-010 ;
	setAttr ".sps[0].sp[2].f" 22;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 1.9027235964585996e-009 0.0033714511990547182 
		0.0066285467147827147 ;
	setAttr ".sps[0].sp[3].f" 22;
	setAttr ".sps[0].sp[3].t" 3;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.003238033354282379 0.006761966347694397 
		5.9604644775390626e-010 ;
	setAttr ".sps[0].sp[4].f" 101;
	setAttr ".sps[0].sp[4].t" 1;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.006782368421554566 0.0032176312804222109 
		2.9802322387695313e-010 ;
	setAttr ".sps[0].sp[5].f" 101;
	setAttr ".sps[0].sp[5].t" 1;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0.0071130448579788206 0 0.0028869551420211792 ;
	setAttr ".sps[0].sp[6].f" 23;
	setAttr ".sps[0].sp[6].t" 1;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.01 0 0 ;
	setAttr ".c2v" yes;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "f[0:20]" "f[25:28]" "f[33:38]" "f[40]" "f[43:49]" "f[53:58]" "f[60]" "f[63:68]" "f[70:74]" "f[83:98]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 13 "f[21:24]" "f[29]" "f[31:32]" "f[39]" "f[41:42]" "f[51:52]" "f[59]" "f[61:62]" "f[69]" "f[99]" "f[102:103]" "f[107:109]" "f[115:126]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[30]" "f[50]" "f[75:82]" "f[104:106]" "f[112:114]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[100:101]" "f[110:111]";
createNode polySplit -n "polySplit2";
	setAttr -s 7 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 49;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.01 0 0 ;
	setAttr ".sps[0].sp[1].f" 17;
	setAttr ".sps[0].sp[1].t" 2;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.0036358076333999636 0 0.0063641923666000371 ;
	setAttr ".sps[0].sp[2].f" 17;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0.0034974372386932374 0.0065025627613067632 ;
	setAttr ".sps[0].sp[3].f" 92;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.0067619818449020383 0 0.0032380181550979614 ;
	setAttr ".sps[0].sp[4].f" 92;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0 0.0067823696136474609 0.0032176303863525393 ;
	setAttr ".sps[0].sp[5].f" 102;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0.0071130496263504027 0 0.002886950373649597 ;
	setAttr ".sps[0].sp[6].f" 57;
	setAttr ".sps[0].sp[6].t" 1;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.01 0 0 ;
	setAttr ".c2v" yes;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 16 "f[27]" "f[69:70]" "f[74:75]" "f[79:80]" "f[87:89]" "f[92]" "f[96]" "f[99:104]" "f[106]" "f[110]" "f[112]" "f[114]" "f[117]" "f[122]" "f[125:130]" "f[132]";
	setAttr ".irc" -type "componentList" 6 "f[28]" "f[85:86]" "f[90]" "f[109]" "f[111]" "f[115]";
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[28]" "f[85:86]" "f[90]" "f[109]" "f[111]" "f[115]";
createNode polySplit -n "polySplit3";
	setAttr -s 8 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 4;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.0013756956160068511 0 0.0086243045330047612 ;
	setAttr ".sps[0].sp[1].f" 15;
	setAttr ".sps[0].sp[1].t" 2;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.0086234688758850108 0.0013765306770801545 
		4.4703483581542967e-010 ;
	setAttr ".sps[0].sp[2].f" 15;
	setAttr ".sps[0].sp[2].bc" -type "double3" 2.0791279808918262e-010 0.001741771399974823 
		0.0082582283020019541 ;
	setAttr ".sps[0].sp[3].f" 15;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.0082568544149398803 0.0017431455850601197 
		0 ;
	setAttr ".sps[0].sp[4].f" 7;
	setAttr ".sps[0].sp[4].t" 1;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.001811845749616623 0.0081881541013717647 
		0 ;
	setAttr ".sps[0].sp[5].f" 7;
	setAttr ".sps[0].sp[5].t" 1;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0 0.008172951936721802 0.0018270480632781982 ;
	setAttr ".sps[0].sp[6].f" 60;
	setAttr ".sps[0].sp[6].t" 1;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.0014273180067539215 0.0085726821422576899 
		0 ;
	setAttr ".sps[0].sp[7].f" 60;
	setAttr ".sps[0].sp[7].t" 1;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0 0.0085720950365066537 0.0014279049634933472 ;
	setAttr ".c2v" yes;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :lightList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId15.id" "pCubeShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupId16.id" "pCubeShape1.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupId17.id" "pCubeShape1.iog.og[2].gid";
connectAttr "phong1SG.mwc" "pCubeShape1.iog.og[2].gco";
connectAttr "groupId18.id" "pCubeShape1.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "pCubeShape1.iog.og[3].gco";
connectAttr "polySplit3.out" "pCubeShape1.i";
connectAttr "groupId19.id" "polySurfaceShape1.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "polySurfaceShape1.iog.og[1].gco";
connectAttr "groupId21.id" "polySurfaceShape1.iog.og[2].gid";
connectAttr "phong1SG.mwc" "polySurfaceShape1.iog.og[2].gco";
connectAttr "groupId20.id" "polySurfaceShape1.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pCubeShape2.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape2.iog.og[1].gid";
connectAttr "phong1SG.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "groupId13.id" "pCubeShape2.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "Main.oc" "lambert2SG.ss";
connectAttr "pCubeShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape1.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "groupId15.msg" "lambert2SG.gn" -na;
connectAttr "groupId18.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Main.msg" "materialInfo1.m";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "pCubeShape2.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "pCubeShape1.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "polySurfaceShape1.ciog.cog[0]" "blinn1SG.dsm" -na;
connectAttr "groupId16.msg" "blinn1SG.gn" -na;
connectAttr "groupId19.msg" "blinn1SG.gn" -na;
connectAttr "groupId20.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "groupId14.msg" "phong1SG.gn" -na;
connectAttr "groupId17.msg" "phong1SG.gn" -na;
connectAttr "groupId21.msg" "phong1SG.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "phong1SG.dsm" -na;
connectAttr "pCubeShape1.iog.og[2]" "phong1SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[2]" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo3.sg";
connectAttr "phong1.msg" "materialInfo3.m";
connectAttr "groupParts4.og" "polySplit1.ip";
connectAttr "polySurfaceShape2.o" "groupParts1.ig";
connectAttr "groupId15.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId16.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId17.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId18.id" "groupParts4.gi";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "groupParts5.ig";
connectAttr "groupId16.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId15.id" "groupParts6.gi";
connectAttr "groupParts6.og" "polySplit3.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "Main.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
// End of Safe_small2.ma
