@tool
extends EditorScript

const save_dir := "res://addons/gopilot_assist/editor_tool_scripts/highlighter.tres"

func _run() -> void:
	var highlighter:GDScriptSyntaxHighlighter = EditorInterface.get_script_editor().get_current_editor().get_base_editor().syntax_highlighter.duplicate(true)
	print(highlighter)
	ResourceSaver.save(highlighter, save_dir, ResourceSaver.FLAG_BUNDLE_RESOURCES)
