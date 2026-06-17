syscall:::open:entry {
  printf("%s abriu %s\n", execname, copyinstr(arg0));
}