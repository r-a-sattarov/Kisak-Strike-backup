set(CMAKE_MODULE_PATH ${SRCDIR}/cmake)
include(${CMAKE_MODULE_PATH}/common_functions.cmake)

MacroRequired( SRCDIR )
MacroRequired( SRVSRCDIR )
MacroRequired( GAMENAME )

set(NOSTINKYLINKIES "1")

set(OUTBINNAME "server_client")
set(OUTBINDIR "${SRCDIR}/../game/${GAMENAME}/bin")
set(GENERATED_PROTO_DIR "${SRCDIR}/game/server/generated_proto")

add_definitions(-DGAME_DLL -DVECTOR -DVERSION_SAFE_STEAM_API_INTERFACES -DPROTECTED_THINGS_ENABLE)

include_directories(${SRCDIR}/game/shared)
include_directories(${SRCDIR}/utils/common)

include(${CMAKE_MODULE_PATH}/detect_platform.cmake)
include(${CMAKE_MODULE_PATH}/source_dll_base.cmake)
include(${CMAKE_MODULE_PATH}/protobuf_builder.cmake)

TargetBuildAndAddProto( ${OUTBINNAME} ${SRCDIR}/common/engine_gcmessages.proto ${GENERATED_PROTO_DIR} )
TargetBuildAndAddProto( ${OUTBINNAME} ${SRCDIR}/common/netmessages.proto ${GENERATED_PROTO_DIR} )
TargetBuildAndAddProto( ${OUTBINNAME} ${SRCDIR}/common/network_connection.proto ${GENERATED_PROTO_DIR} )
TargetBuildAndAddProto( ${OUTBINNAME} ${SRCDIR}/gcsdk/steammessages.proto ${GENERATED_PROTO_DIR} )
TargetBuildAndAddProto( ${OUTBINNAME} ${SRCDIR}/game/shared/base_gcmessages.proto ${GENERATED_PROTO_DIR} )

target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/achievement_saverestore.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/achievementmgr.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/achievements_hlx.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/activitylist.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_activity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_agent.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_baseactor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basehumanoid.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_addon.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc_flyer.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc_flyer_new.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc_movement.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc_physicsflyer.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc_schedule.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_basenpc_squad.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_assault.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_fear.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_fightfromcover.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_follow.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_lead.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_rappel.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_behavior_standoff.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_blended_movement.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_concommands.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_condition.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_criteria.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_default.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_dynamiclink.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_event.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_goalentity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_hint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_hull.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_initutils.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/AI_Interest_Target.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_link.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_localnavigator.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_looktarget.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_memory.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_motor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_moveprobe.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_moveshoot.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_movesolver.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_namespaces.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_navigator.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_network.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_networkmanager.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_node.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_pathfinder.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_planesolver.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_playerally.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_responsesystem.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_route.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_saverestore.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_schedule.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_scriptconditions.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_senses.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_sentence.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_speech.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_speechqueue.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_expresserfollowup.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_speechfilter.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_speechconcept.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_squad.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_squadslot.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_tacticalservices.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_task.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_trackpather.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_utils.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ai_waypoint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ambientgeneric.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/ammodef.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/animation.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/base_playeranimstate.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/base_transmit_proxy.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/baseachievement.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/baseanimating.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/BaseAnimatingOverlay.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/basecombatcharacter.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/basecombatcharacter_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/basecombatweapon.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/basecombatweapon_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/baseentity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/baseentity_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/baseflex.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/basegrenade_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/basemultiplayerplayer.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/baseparticleentity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/baseplayer_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/baseviewmodel.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/baseviewmodel_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/beam_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/beamspotlight.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/bitstring.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/bmodels.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/tools/bonelist.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/bone_merge_cache.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/buttons.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/cbase.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/cbaseprojectile.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/client.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/collisionproperty.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/colorcorrection.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/colorcorrectionvolume.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/CommentarySystem.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/controlentities.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/cplane.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/CRagdollMagnet.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/cvisibilitymonitor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/damagemodifier.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/death_pose.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/debugoverlay_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/decals.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/doors.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/dynamiclight.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/effect_dispatch_data.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/effects.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EffectsServer.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/ehandle.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/entityblocker.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EntityDissolve.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EntityFlame.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EntityFreezing.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/entitylist.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/entitylist_base.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EntityParticleTrail.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/EntityParticleTrail_Shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_ambient_light.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_cascade_light.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_debughistory.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/env_detail_controller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_dof_controller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_effectsscript.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_entity_maker.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_instructor_hint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_particlescript.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_player_surface_trigger.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_projectedtexture.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_screenoverlay.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_texturetoggle.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_tonemap_controller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/env_wind_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/env_zoom.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvBeam.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvFade.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvHudHint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvLaser.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvMessage.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/envmicrophone.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvShake.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EnvSpark.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/eventlist.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/EventLog.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/explode.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/filters.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/fire.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/fire_smoke.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/fish.cpp")

target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/flex_expresser.cpp")

target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/fogcontroller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/fogvolume.cpp")

target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/foundryhelpers_server.cpp")

target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/fourwheelvehiclephysics.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_areaportal.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_areaportalbase.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_areaportalwindow.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_break.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_breakablesurf.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_dust.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_instance_io_proxy.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/func_ladder.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_ladder_endpoint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_lod.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_movelinear.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_occluder.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_reflective_glass.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_smokevolume.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/func_tank.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/game.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/game_timescale_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/game_ui.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/gameinterface.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/gamemovement.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/gamerules.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/gamerules_register.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/GameStats.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/gamestringpool.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/gametrace_dll.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/gamevars_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/gameweaponmanager.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/genericactor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/genericmonster.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/gib.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/global_event_log.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/globals.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/globalstate.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/guntarget.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/h_ai.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/hierarchy.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/hltvdirector.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/hintmessage.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/hintsystem.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/igamesystem.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/info_camera_link.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/info_overlay_accessor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/inforemarkable.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/intermission.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/item_world.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/lightglow.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/lights.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logic_eventlistener.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logic_measure_movement.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logic_navigation.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logic_playmovie.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logic_playerproxy.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logic_random_outputs.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logicauto.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logicentities.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/logicrelay.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/mapentities.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/mapentities_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/maprules.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/MaterialModifyControl.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/memorylog.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/message_entity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/modelentities.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/ModelSoundsCache.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/movehelper_server.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/movement.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/movevars_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/movie_display.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/multiplay_gamerules.cpp")

target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ndebugoverlay.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/npc_vehicledriver.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/obstacle_pushaway.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/particle_light.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/particle_parse.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/particle_system.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/particlesystemquery.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/pathcorner.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/pathtrack.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/phys_controller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physconstraint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_bone_follower.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_cannister.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_fx.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_impact_damage.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_main.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/physics_main_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_npc_solver.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_prop_ragdoll.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physics_prop_statue.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/physics_saverestore.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/physics_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/physobj.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/player.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/player_command.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/player_lagcompensation.cpp")
if( (NOT PORTAL2) AND (NOT CSGO) )
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/player_pickup.cpp")# [!$PORTAL2 && !$CSGO])
endif()
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/player_resource.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/playerinfomanager.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/playerlocaldata.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/player_voice_listener.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/plugin_check.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/point_bonusmaps_accessor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/point_camera.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/point_devshot_camera.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/point_entity_finder.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/point_playermoveconstraint.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/point_posecontroller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/point_spotlight.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/point_template.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/pointanglesensor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/PointAngularVelocitySensor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/pointhurt.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/pointteleport.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/postprocesscontroller.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/precache_register.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/predictableid.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/prop_hallucination.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/props.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/props_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/querycache.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ragdoll_manager.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/ragdoll_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/RagdollBoogie.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/recipientfilter.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/replaydirector.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/rope.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/rope_helpers.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/saverestore.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/SceneCache.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/sceneentity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/sceneentity_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/scratchpad_gamedll_helpers.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/scripted.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/scriptedtarget.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/sendproxy.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/sequence_Transitioner.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/server/serverbenchmark_base.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/ServerNetworkProperty.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/shadowcontrol.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/simtimer.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/singleplay_gamerules.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/skyboxswapper.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/SkyCamera.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/slideshow_display.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/sound.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/SoundEmitterSystem.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/soundent.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/soundenvelope.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/SoundParametersInternal.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/soundscape.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/soundscape_system.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/spatialentity.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/spawn_helper.nut")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/spotlightend.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/Sprite.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/sprite_perfmonitor.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/steamworks_gamestats.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/studio_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/subs.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/sun.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/sunlightshadowcontrol.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/takedamageinfo.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/tanktrain.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/team.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/teamplay_gamerules.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/TemplateEntities.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/tempmonster.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/tesla.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/test_ehandle.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/test_proxytoggle.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/test_stressentities.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/testfunctions.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/testtraceline.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/textstatsmgr.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/timedeventmgr.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/trains.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/triggers.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/usercmd.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/util.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/util_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/variant_t.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/coerciblevariant_t.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/vehicle_base.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/vehicle_baseserver.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/vehicle_viewblend_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/vguiscreen.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/vgui_gamedll_int.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/voice_gamemgr.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/vscript_server.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/vscript_server.nut")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/vscript_shared.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/waterbullet.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/WaterLODControl.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/wcedit.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/weapon_parse.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/weapon_proficiency.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/weight_button.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/world.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/mp_shareddefs.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/server/vote_controller.cpp")


target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/closedcaptions.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/common/compiledcaptionswap.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/collisionutils.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/dt_send.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/dt_utlvector_common.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/dt_utlvector_send.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/editor_sendcommand.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/filesystem_helpers.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/gamehandle.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/h_export.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/init_factory.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/interpolatortypes.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/keyframe/keyframe.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/map_utils.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/networkvar.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/common/randoverride.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/registry.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/rope_physics.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/scratchpad3d.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/ScratchPadUtils.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/server_class.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/sheetsimulator.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/simple_physics.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/stringregistry.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/studio.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/public/vgui_controls/vgui_controls.cpp")
target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/GameStats_BasicStatsFunctions.cpp")

target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/common/CegClientWrapper.cpp")

#$Folder	"temporary entities"
#{
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/basetempentity.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/event_tempentity_tester.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/movie_explosion.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/particle_fire.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/particle_smokegrenade.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/plasma.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/smokestack.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/smoke_trail.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRCDIR}/game/shared/SpriteTrail.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/steamjet.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_armorricochet.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_basebeam.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beamentpoint.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beaments.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beamfollow.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beamlaser.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beampoints.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beamring.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beamringpoint.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_beamspline.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_bloodsprite.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_bloodstream.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_breakmodel.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_bspdecal.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_bubbles.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_bubbletrail.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_clientprojectile.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_decal.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_dynamiclight.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_effect_dispatch.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_energysplash.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_explosion.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_fizz.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_footprintdecal.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/hl2/te_gaussexplosion.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_glassshatter.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_glowsprite.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_impact.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_killplayerattachments.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_largefunnel.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_muzzleflash.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_particlesystem.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_physicsprop.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_playerdecal.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_projecteddecal.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_showline.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_smoke.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_sparks.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_sprite.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_spritespray.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/te_worlddecal.cpp")
#}

#$Folder "Nav Mesh"
#{
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_area.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_colors.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_edit.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_entities.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_file.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_generate.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_ladder.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_merge.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_mesh.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_mesh_factory.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_node.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/nav_simplify.cpp")
#}

#$Folder	"Tools Framework"
#{
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/entity_tools_server.cpp")
    target_sources(${OUTBINNAME} PRIVATE "${SRVSRCDIR}/toolframework_server.cpp")
#}


target_link_libraries(${OUTBINNAME} bonesetup_client choreoobjects_client mathlib_client mathlib_extended_client libtier0_client vstdlib_client interfaces_client particles_client)

# we must link in the right order
if( DEDICATED )
	target_link_libraries(${OUTBINNAME} bitmap_client dmxloader_client tier1_client tier2_client tier3_client responserules_runtime_client kisak_gcsdk_client)
else()
	target_link_libraries(${OUTBINNAME} bitmap_client dmxloader_client tier1_client tier2_client tier3_client vgui_controls_client responserules_runtime_client kisak_gcsdk_client)
endif()

#Requires evil proprietary link to libsteam_api
if( MSVC AND CMAKE_SIZEOF_VOID_P EQUAL 4 )
	target_link_libraries(${OUTBINNAME} ${LIBPUBLIC}/steam_api.lib Winmm.lib)
elseif( MSVC AND CMAKE_SIZEOF_VOID_P EQUAL 8 )
	target_link_libraries(${OUTBINNAME} ${LIBPUBLIC}/steam_api64.lib Winmm.lib)
else()
	target_link_libraries(${OUTBINNAME} ${LIBPUBLIC}/libsteam_api.so)
endif()

target_link_libraries(${OUTBINNAME} libprotobuf) #from /thirdparty
