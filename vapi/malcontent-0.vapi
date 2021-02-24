/* malcontent-0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Mct", gir_namespace = "Malcontent", gir_version = "0", lower_case_cprefix = "mct__")]
namespace Mct {
	[CCode (cheader_filename = "libmalcontent/malcontent.h", ref_function = "mct_app_filter_ref", type_id = "mct_app_filter_get_type ()", unref_function = "mct_app_filter_unref")]
	[Compact]
	[Version (since = "0.2.0")]
	public class AppFilter {
		public bool allow_system_installation;
		public bool allow_user_installation;
		public weak string app_list;
		public Mct.AppFilterListType app_list_type;
		public weak GLib.Variant oars_ratings;
		public int ref_count;
		public uint user_id;
		[CCode (cname = "mct_app_filter_equal")]
		[Version (since = "0.10.0")]
		public bool equal (Mct.AppFilter b);
		[CCode (array_length = false, array_null_terminated = true, cname = "mct_app_filter_get_oars_sections")]
		public (unowned string)[] get_oars_sections ();
		[CCode (cname = "mct_app_filter_get_oars_value")]
		public Mct.AppFilterOarsValue get_oars_value (string oars_section);
		[CCode (cname = "mct_app_filter_get_user_id")]
		public uint get_user_id ();
		[CCode (cname = "mct_app_filter_is_appinfo_allowed")]
		public bool is_appinfo_allowed (GLib.AppInfo app_info);
		[CCode (cname = "mct_app_filter_is_content_type_allowed")]
		[Version (since = "0.4.0")]
		public bool is_content_type_allowed (string content_type);
		[CCode (cname = "mct_app_filter_is_enabled")]
		[Version (since = "0.7.0")]
		public bool is_enabled ();
		[CCode (cname = "mct_app_filter_is_flatpak_app_allowed")]
		public bool is_flatpak_app_allowed (string app_id);
		[CCode (cname = "mct_app_filter_is_flatpak_ref_allowed")]
		public bool is_flatpak_ref_allowed (string app_ref);
		[CCode (cname = "mct_app_filter_is_path_allowed")]
		public bool is_path_allowed (string path);
		[CCode (cname = "mct_app_filter_is_system_installation_allowed")]
		public bool is_system_installation_allowed ();
		[CCode (cname = "mct_app_filter_is_user_installation_allowed")]
		public bool is_user_installation_allowed ();
		[CCode (cname = "mct_app_filter_ref")]
		public Mct.AppFilter @ref ();
		[CCode (cname = "mct_app_filter_serialize")]
		[Version (since = "0.7.0")]
		public unowned GLib.Variant serialize ();
		[CCode (cname = "mct_app_filter_unref")]
		[DestroysInstance]
		public void unref ();
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "mct_app_filter_builder_get_type ()")]
	[Compact]
	[Version (since = "0.2.0")]
	public class AppFilterBuilder {
		[CCode (cname = "mct_app_filter_builder_new", has_construct_function = false)]
		public AppFilterBuilder ();
		[CCode (cname = "mct_app_filter_builder_blocklist_content_type")]
		[Version (since = "0.4.0")]
		public void blocklist_content_type (string content_type);
		[CCode (cname = "mct_app_filter_builder_blocklist_flatpak_ref")]
		public void blocklist_flatpak_ref (string app_ref);
		[CCode (cname = "mct_app_filter_builder_blocklist_path")]
		public void blocklist_path (string path);
		[CCode (cname = "mct_app_filter_builder_clear")]
		public void clear ();
		[CCode (cname = "mct_app_filter_builder_copy")]
		public Mct.AppFilterBuilder copy ();
		[CCode (cname = "mct_app_filter_builder_end")]
		public Mct.AppFilter end ();
		[CCode (cname = "mct_app_filter_builder_free")]
		public void free ();
		[CCode (cname = "mct_app_filter_builder_init")]
		public void init ();
		[CCode (cname = "mct_app_filter_builder_set_allow_system_installation")]
		public void set_allow_system_installation (bool allow_system_installation);
		[CCode (cname = "mct_app_filter_builder_set_allow_user_installation")]
		public void set_allow_user_installation (bool allow_user_installation);
		[CCode (cname = "mct_app_filter_builder_set_oars_value")]
		public void set_oars_value (string oars_section, Mct.AppFilterOarsValue value);
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", type_id = "mct_manager_get_type ()")]
	[Version (since = "0.3.0")]
	public class Manager : GLib.Object {
		[CCode (cname = "mct_manager_new", has_construct_function = false)]
		public Manager (GLib.DBusConnection connection);
		[CCode (cname = "mct_manager_get_app_filter")]
		public Mct.AppFilter get_app_filter (uint user_id, Mct.ManagerGetValueFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "mct_manager_get_app_filter_async")]
		public async Mct.AppFilter get_app_filter_async (uint user_id, Mct.ManagerGetValueFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "mct_manager_get_session_limits")]
		[Version (since = "0.5.0")]
		public Mct.SessionLimits get_session_limits (uint user_id, Mct.ManagerGetValueFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "mct_manager_get_session_limits_async")]
		[Version (since = "0.5.0")]
		public async Mct.SessionLimits get_session_limits_async (uint user_id, Mct.ManagerGetValueFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "mct_manager_set_app_filter")]
		public bool set_app_filter (uint user_id, Mct.AppFilter app_filter, Mct.ManagerSetValueFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "mct_manager_set_app_filter_async")]
		public async bool set_app_filter_async (uint user_id, Mct.AppFilter app_filter, Mct.ManagerSetValueFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "mct_manager_set_session_limits")]
		[Version (since = "0.5.0")]
		public bool set_session_limits (uint user_id, Mct.SessionLimits session_limits, Mct.ManagerSetValueFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "mct_manager_set_session_limits_async")]
		[Version (since = "0.5.0")]
		public async bool set_session_limits_async (uint user_id, Mct.SessionLimits session_limits, Mct.ManagerSetValueFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public GLib.DBusConnection connection { owned get; construct; }
		public signal void app_filter_changed (uint64 user_id);
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", ref_function = "mct_session_limits_ref", type_id = "mct_session_limits_get_type ()", unref_function = "mct_session_limits_unref")]
	[Compact]
	[Version (since = "0.5.0")]
	public class SessionLimits {
		public uint daily_end_time;
		public uint daily_start_time;
		public Mct.SessionLimitsType limit_type;
		public int ref_count;
		public uint user_id;
		[CCode (cname = "mct_session_limits_check_time_remaining")]
		public bool check_time_remaining (uint64 now_usecs, out uint64 time_remaining_secs_out, out bool time_limit_enabled_out);
		[CCode (cname = "mct_session_limits_get_user_id")]
		public uint get_user_id ();
		[CCode (cname = "mct_session_limits_is_enabled")]
		[Version (since = "0.7.0")]
		public bool is_enabled ();
		[CCode (cname = "mct_session_limits_ref")]
		public Mct.SessionLimits @ref ();
		[CCode (cname = "mct_session_limits_serialize")]
		[Version (since = "0.7.0")]
		public unowned GLib.Variant serialize ();
		[CCode (cname = "mct_session_limits_unref")]
		[DestroysInstance]
		public void unref ();
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "mct_session_limits_builder_get_type ()")]
	[Compact]
	[Version (since = "0.5.0")]
	public class SessionLimitsBuilder {
		[CCode (cname = "mct_session_limits_builder_new", has_construct_function = false)]
		public SessionLimitsBuilder ();
		[CCode (cname = "mct_session_limits_builder_clear")]
		public void clear ();
		[CCode (cname = "mct_session_limits_builder_copy")]
		public Mct.SessionLimitsBuilder copy ();
		[CCode (cname = "mct_session_limits_builder_end")]
		public Mct.SessionLimits end ();
		[CCode (cname = "mct_session_limits_builder_free")]
		public void free ();
		[CCode (cname = "mct_session_limits_builder_init")]
		public void init ();
		[CCode (cname = "mct_session_limits_builder_set_daily_schedule")]
		public void set_daily_schedule (uint start_time_secs, uint end_time_secs);
		[CCode (cname = "mct_session_limits_builder_set_none")]
		public void set_none ();
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cprefix = "MCT_APP_FILTER_LIST_", has_type_id = false)]
	[Version (since = "0.2.0")]
	public enum AppFilterListType {
		BLOCKLIST,
		ALLOWLIST
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cprefix = "MCT_APP_FILTER_OARS_VALUE_", type_id = "mct_app_filter_oars_value_get_type ()")]
	[Version (since = "0.2.0")]
	public enum AppFilterOarsValue {
		UNKNOWN,
		NONE,
		MILD,
		MODERATE,
		INTENSE
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cprefix = "MCT_MANAGER_GET_VALUE_FLAGS_", type_id = "mct_manager_get_value_flags_get_type ()")]
	[Flags]
	[Version (since = "0.5.0")]
	public enum ManagerGetValueFlags {
		NONE,
		INTERACTIVE
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cprefix = "MCT_MANAGER_SET_VALUE_FLAGS_", type_id = "mct_manager_set_value_flags_get_type ()")]
	[Flags]
	[Version (since = "0.5.0")]
	public enum ManagerSetValueFlags {
		NONE,
		INTERACTIVE
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cprefix = "MCT_SESSION_LIMITS_TYPE_", has_type_id = false)]
	[Version (since = "0.5.0")]
	public enum SessionLimitsType {
		NONE,
		DAILY_SCHEDULE
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cprefix = "MCT_MANAGER_ERROR_")]
	[Version (since = "0.5.0")]
	public errordomain ManagerError {
		INVALID_USER,
		PERMISSION_DENIED,
		INVALID_DATA,
		DISABLED
	}
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cname = "mct_app_filter_deserialize")]
	[Version (since = "0.7.0")]
	public static Mct.AppFilter app_filter_deserialize (GLib.Variant variant, uint user_id) throws GLib.Error;
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cname = "mct_app_filter_error_quark")]
	public static GLib.Quark app_filter_error_quark ();
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cname = "mct_manager_error_quark")]
	public static GLib.Quark manager_error_quark ();
	[CCode (cheader_filename = "libmalcontent/malcontent.h", cname = "mct_session_limits_deserialize")]
	[Version (since = "0.7.0")]
	public static Mct.SessionLimits session_limits_deserialize (GLib.Variant variant, uint user_id) throws GLib.Error;
}
