const std = @import("std");
const constants = @import("../constants.zig");
const cxxFlags = constants.cxxFlags;


fn addLibraryToConfig(b: *std.Build, obj: *std.Build.Step.Compile) void {
    const logPath = b.dependency("log", .{}).path("src");
    obj.addCSourceFiles(.{
        .root = logPath,
        .files = &.{
			"attribute_name.cpp",
			"attribute_set.cpp",
			"attribute_value_set.cpp",
			"code_conversion.cpp",
			"core.cpp",
			"date_time_format_parser.cpp",
			"default_attribute_names.cpp",
			"default_sink.cpp",
			"dump.cpp",
			"dump_avx2.cpp",
			"dump_ssse3.cpp",
			"event.cpp",
			"exceptions.cpp",
			"format_parser.cpp",
			"global_logger_storage.cpp",
			"named_scope.cpp",
			"named_scope_format_parser.cpp",
			"once_block.cpp",
			"permissions.cpp",
			"process_id.cpp",
			"process_name.cpp",
			"record_ostream.cpp",
			"severity_level.cpp",
			"spirit_encoding.cpp",
			"syslog_backend.cpp",
			"text_file_backend.cpp",
			"text_multifile_backend.cpp",
			"text_ostream_backend.cpp",
			"threadsafe_queue.cpp",
			"thread_id.cpp",
			"thread_specific.cpp",
			"timer.cpp",
			"timestamp.cpp",
			"trivial.cpp",
			"ipc_reliable_message_queue.cpp",
			"object_name.cpp",
			"default_filter_factory.cpp",
			"default_formatter_factory.cpp",
			"filter_parser.cpp",
			"formatter_parser.cpp",
			"init_from_settings.cpp",
			"init_from_stream.cpp",
			"matches_relation_factory.cpp",
			"parser_utils.cpp",
			"settings_parser.cpp",
			"debug_output_backend.cpp",
			"event_log_backend.cpp",
			"ipc_reliable_message_queue.cpp",
			"ipc_sync_wrappers.cpp",
			"is_debugger_present.cpp",
			"light_rw_mutex.cpp",
			"mapped_shared_memory.cpp",
			"object_name.cpp"
        },
        .flags = cxxFlags,
    });
}