SET(CPACK_GENERATOR "DEB")
set(CPACK_set_DESTDIR "on")

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "System call intercepting library")
set(CPACK_PACKAGE_DESCRIPTION
"The system call intercepting library provides a low-level interface
for hooking Linux system calls in user space. This is achieved
by hotpatching the machine code of the standard C library in the
memory of a process. The user of this library can provide the
functionality of almost any syscall in user space, using the very
simple API specified in the libsyscall_intercept_hook_point.h header file.")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_PACKAGE_CONTACT "Dongju Chae <dongju.chae@mangoboost.io>")
set(CPACK_PACKAGE_VERSION_MAJOR "${SYSCALL_INTERCEPT_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${SYSCALL_INTERCEPT_VERSION_MINOR}")
set(CPACK_PACKAGE_VERSION_PATCH "${SYSCALL_INTERCEPT_VERSION_PATCH}")
set(CPACK_PACKAGE_VERSION "${SYSCALL_INTERCEPT_VERSION}")

set(CPACK_STRIP_FILES 1)

set(CPACK_DEBIAN_ARCHITECTURE "amd64")

set(SYSCALL_INTERCEPT_PACKAGE_ARCH_SUFFIX ${CPACK_DEBIAN_ARCHITECTURE})

#deb options
set(CPACK_DEB_COMPONENT_INSTALL TRUE)
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://github.com/pmem/syscall_intercept")

set(CPACK_COMPONENTS_ALL libs dev)
set(CPACK_DEBIAN_ENABLE_COMPONENT_DEPENDS ON)
set(CPACK_COMPONENTS_GROUPING ONE_PER_GROUP)

#display names
set(CPACK_COMPONENT_DEV_DISPLAY_NAME     "Development files")
set(CPACK_COMPONENT_LIBS_DISPLAY_NAME    "Libraries and data")

#depencencies
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS TRUE)
set(CPACK_COMPONENT_LIBS_REQUIRED TRUE)
set(CPACK_COMPONENT_DEV_DEPENDS libs)

set(CPACK_COMPONENT_LIBS_DESCRIPTION "System call intercepting library")
set(CPACK_COMPONENT_DEV_DESCRIPTION "Development files for libsyscall_intercept")

set(CPACK_DEBIAN_LIBS_FILE_NAME "libsyscall-intercept0_${SYSCALL_INTERCEPT_VERSION}_${SYSCALL_INTERCEPT_PACKAGE_ARCH_SUFFIX}.deb")
set(CPACK_DEBIAN_LIBS_PACKAGE_NAME "libsyscall_intercept0")
set(CPACK_DEBIAN_LIBS_PACKAGE_SECTION "libs")

set(CPACK_DEBIAN_DEV_FILE_NAME "libsyscall-intercept-dev_${SYSCALL_INTERCEPT_VERSION}_${SYSCALL_INTERCEPT_PACKAGE_ARCH_SUFFIX}.deb")
set(CPACK_DEBIAN_DEV_PACKAGE_NAME "libsyscall_intercept-dev")
set(CPACK_DEBIAN_DEV_PACKAGE_SECTION "libdevel")

include(CPack)
