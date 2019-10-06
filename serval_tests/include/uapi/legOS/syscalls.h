#ifndef __SYSCALL
#define __SYSCALL(x, y)
#endif

/* Start syscalls from 10, reserve 0-9 for SBI */

#define __NR_hello_world 10
__SYSCALL(__NR_hello_world, sys_hello_world)

#define __NR_get_and_set 11
__SYSCALL(__NR_get_and_set, sys_get_and_set)

#define __NR_test_print 12
__SYSCALL(__NR_test_print, sys_test_print)

// #define __NR_test_add 13
// __SYSCALL(__NR_test_add, sys_test_add)
