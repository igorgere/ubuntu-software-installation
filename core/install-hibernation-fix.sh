# Hibernation & stand by
sudo apt-get install uswsusp
sudo s2ram
sudo s2disk

# In file:
# /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla
# Add this
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
