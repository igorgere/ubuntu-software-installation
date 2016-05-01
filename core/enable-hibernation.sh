# Hibernation & stand by
sudo apt install uswsusp
sudo s2ram
sudo s2disk
sudo pm-hibernate

# Indicator menu option
# Create file:
# /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
# With content
#
# ```
# [Re-enable hibernate by default in upower]
# Identity=unix-user:*
# Action=org.freedesktop.upower.hibernate
# ResultActive=yes
#
# [Re-enable hibernate by default in logind]
# Identity=unix-user:*
# Action=org.freedesktop.login1.hibernate;org.freedesktop.login1.hibernate-multiple-sessions
# ResultActive=yes
# ```
