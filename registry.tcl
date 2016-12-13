# registry.tcl
#
# This is a simple human-readable database defining the OpenCL extension
# registry. For each extension, it includes an extension number, flags
# if the extension is public, and includes a path to the extension
# specification.

extension WFC_NOK_clone_output {
    number      1
    flags       private
    filename    extensions/NOK/WFC_NOK_clone_output.txt
}
extension WFC_NOK_overscan_compensation {
    number      2
    flags       private
    filename    extensions/NOK/WFC_NOK_overscan_compensation.txt
}
extension WFC_NOK_screen_priority {
    number      3
    flags       private
    filename    extensions/NOK/WFC_NOK_screen_priority.txt
}
extension WFC_NOK_content_ready_notification {
    number      4
    flags       private
    filename    extensions/NOK/WFC_NOK_content_ready_notification.txt
}
# Next free extension number: 5
