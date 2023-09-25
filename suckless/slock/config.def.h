/* user and group to drop privileges to */
static const char *user  = "vxcute";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#272727",     /* after initialization */
	[INPUT] =  "#272727",   /* during input */
	[FAILED] = "#272727",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
