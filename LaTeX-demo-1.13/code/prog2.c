
/*
 * Nr of active tasks - counted in fixed-point numbers
 */
static unsigned long count_active_tasks(void)
{
        struct task_struct **p;
        unsigned long nr = 0;

        for(p = &LAST_TASK; p > &FIRST_TASK; --p)
                if (*p && ((*p)->state == TASK_RUNNING ||
                           (*p)->state == TASK_UNINTERRUPTIBLE ||
			   (*p)->state == TASK_SWAPPING))
			nr += FIXED_1;
#ifdef __SMP__
	nr-=(smp_num_cpus-1)*FIXED_1;
#endif			
	return nr;
}
