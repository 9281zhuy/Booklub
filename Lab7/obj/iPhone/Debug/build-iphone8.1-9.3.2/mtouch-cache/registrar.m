#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#define DEBUG 1
#include <stdarg.h>
#include <xamarin/xamarin.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <objc/message.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <QuartzCore/CAEmitterBehavior.h>
#import <CoreGraphics/CoreGraphics.h>


static void native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	void * a0 = p0;
	arg_ptrs [0] = &a0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static UIWindow * native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIWindow * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static id native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1, bool* call_super)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (xamarin_try_get_nsobject (self)) {
		*call_super = true;
		return self;
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	uint8_t flags = NSObjectFlagsNativeRef;
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

	return self;
}


static UIButton * native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIButton * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIButton * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UIImageView * native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIImageView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImageView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UILabel * native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UILabel * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILabel * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UISearchDisplayController * native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UISearchDisplayController * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UISearchDisplayController * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static NSInteger native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static NSInteger native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSInteger res;
	res = *(NSInteger *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static NSString * native_to_managed_trampoline_18 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSInteger p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	NSString * res;
	if (!retval) {
		res = NULL;
	} else {
		char *str = mono_string_to_utf8 ((MonoString *) retval);
		NSString *nsstr = [[NSString alloc] initWithUTF8String:str];
		[nsstr autorelease];
		mono_free (str);
		res = nsstr;
	}

	return res;
}


static void native_to_managed_trampoline_19 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UITableViewCell * native_to_managed_trampoline_20 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, NSIndexPath * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UITableViewCell * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static UIWebView * native_to_managed_trampoline_21 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIWebView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_22 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWebView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UITextField * native_to_managed_trampoline_23 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UITextField * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_24 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_25 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImagePickerController * p0, NSDictionary * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UIView * native_to_managed_trampoline_26 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_27 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static UITableView * native_to_managed_trampoline_28 (id self, SEL _cmd, MonoMethod **managed_method_ptr, const char *r0, const char *r1)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r0, r1, 0, NULL));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UITableView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_29 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITableView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_30 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static BOOL native_to_managed_trampoline_31 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, NSRange p1, NSString * p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2 ? mono_string_new (mono_domain_get (), [p2 UTF8String]) : NULL;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static void native_to_managed_trampoline_32 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_33 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_34 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, BOOL p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static BOOL native_to_managed_trampoline_35 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	BOOL res;
	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

	return res;
}


static UIView * native_to_managed_trampoline_36 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, const char *r0, const char *r1, const char *r2)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[1] = { r0 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r1, r2, 1, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	MonoObject * retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	UIView * res;
	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

	return res;
}


static void native_to_managed_trampoline_37 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, CGPoint p1, CGPoint* p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	arg_ptrs [1] = &p1;
	arg_ptrs [2] = p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_38 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, CGFloat p2, const char *r0, const char *r1, const char *r2, const char *r3, const char *r4)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [3];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[3] = { r0, r1, r2 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r3, r4, 3, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;
	arg_ptrs [2] = &p2;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}


static void native_to_managed_trampoline_39 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIScrollView * p0, UIView * p1, const char *r0, const char *r1, const char *r2, const char *r3)
{
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MonoObject *mthis;
	if (mono_domain_get () == NULL)
		mono_jit_thread_attach (NULL);
	mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self);
	}
	if (!managed_method) {
		const char *paramptr[2] = { r0, r1 };
		managed_method = xamarin_get_reflection_method_method (xamarin_get_method_direct(r2, r3, 2, paramptr));
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method);
	NSObject *nsobj0 = (NSObject *) p0;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	if (nsobj0) {
		MonoType *paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0);
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	NSObject *nsobj1 = (NSObject *) p1;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	if (nsobj1) {
		MonoType *paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1);
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	return;
}



@interface UIKit_UIControlEventProxy : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIControlEventProxy { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "UIKit.UIControlEventProxy, Xamarin.iOS", "Activated");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Foundation.NSActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __MonoMac_NSAsyncActionDispatcher : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __MonoMac_NSAsyncActionDispatcher { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", "Apply");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@protocol CALayerDelegate
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(void) applicationWillResignActive:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidBecomeActive:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation AppDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, "Lab7.AppDelegate, Lab7", "get_Window");
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_4 (self, _cmd, &managed_method, p0, "UIKit.UIWindow, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "set_Window");
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, p1, "UIKit.UIApplication, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "FinishedLaunching");
	}

	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "OnResignActivation");
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "DidEnterBackground");
	}

	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "WillEnterForeground");
	}

	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "OnActivated");
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, "UIKit.UIApplication, Xamarin.iOS", "Lab7.AppDelegate, Lab7", "WillTerminate");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Lab7.AppDelegate, Lab7", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface Lab7_LoadingOverlay : UIView {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Lab7_LoadingOverlay { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface HomeController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnEditProfile;
	@property (nonatomic, assign) UIButton * btnlogout;
	@property (nonatomic, assign) UIButton * btnuploadbook;
	@property (nonatomic, assign) UIImageView * imgProfilePhoto;
	@property (nonatomic, assign) UILabel * lblEmail;
	@property (nonatomic, assign) UILabel * lblName;
	@property (nonatomic, assign) UISearchDisplayController * searchDisplayController;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnEditProfile;
	-(void) setBtnEditProfile:(UIButton *)p0;
	-(UIButton *) btnlogout;
	-(void) setBtnlogout:(UIButton *)p0;
	-(UIButton *) btnuploadbook;
	-(void) setBtnuploadbook:(UIButton *)p0;
	-(UIImageView *) imgProfilePhoto;
	-(void) setImgProfilePhoto:(UIImageView *)p0;
	-(UILabel *) lblEmail;
	-(void) setLblEmail:(UILabel *)p0;
	-(UILabel *) lblName;
	-(void) setLblName:(UILabel *)p0;
	-(UISearchDisplayController *) searchDisplayController;
	-(void) setSearchDisplayController:(UISearchDisplayController *)p0;
	-(void) viewDidLoad;
	-(void) Btnlogout_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation HomeController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnEditProfile
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_btnEditProfile");
	}

	-(void) setBtnEditProfile:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_btnEditProfile");
	}

	-(UIButton *) btnlogout
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_btnlogout");
	}

	-(void) setBtnlogout:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_btnlogout");
	}

	-(UIButton *) btnuploadbook
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_btnuploadbook");
	}

	-(void) setBtnuploadbook:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_btnuploadbook");
	}

	-(UIImageView *) imgProfilePhoto
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_imgProfilePhoto");
	}

	-(void) setImgProfilePhoto:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_imgProfilePhoto");
	}

	-(UILabel *) lblEmail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_lblEmail");
	}

	-(void) setLblEmail:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_lblEmail");
	}

	-(UILabel *) lblName
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_lblName");
	}

	-(void) setLblName:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_lblName");
	}

	-(UISearchDisplayController *) searchDisplayController
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_14 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "get_searchDisplayController");
	}

	-(void) setSearchDisplayController:(UISearchDisplayController *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_15 (self, _cmd, &managed_method, p0, "UIKit.UISearchDisplayController, Xamarin.iOS", "Lab7.HomeController, Lab7", "set_searchDisplayController");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.HomeController, Lab7", "ViewDidLoad");
	}

	-(void) Btnlogout_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.HomeController, Lab7", "Btnlogout_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface Lab7_ImageTableSource : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(NSString *) tableView:(UITableView *)p0 titleForHeaderInSection:(NSInteger)p1;
	-(NSString *) tableView:(UITableView *)p0 titleForFooterInSection:(NSInteger)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation Lab7_ImageTableSource { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(NSInteger) numberOfSectionsInTableView:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "Lab7.ImageTableSource, Lab7", "NumberOfSections");
	}

	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "Lab7.ImageTableSource, Lab7", "RowsInSection");
	}

	-(NSString *) tableView:(UITableView *)p0 titleForHeaderInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "Lab7.ImageTableSource, Lab7", "TitleForHeader");
	}

	-(NSString *) tableView:(UITableView *)p0 titleForFooterInSection:(NSInteger)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_18 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "System.nint, Xamarin.iOS", "Lab7.ImageTableSource, Lab7", "TitleForFooter");
	}

	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_19 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "Lab7.ImageTableSource, Lab7", "RowSelected");
	}

	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_20 (self, _cmd, &managed_method, p0, p1, "UIKit.UITableView, Xamarin.iOS", "Foundation.NSIndexPath, Xamarin.iOS", "Lab7.ImageTableSource, Lab7", "GetCell");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface WebViewController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnAmaback;
	@property (nonatomic, assign) UIWebView * webviewSite;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnAmaback;
	-(void) setBtnAmaback:(UIButton *)p0;
	-(UIWebView *) webviewSite;
	-(void) setWebviewSite:(UIWebView *)p0;
	-(void) viewDidLoad;
	-(void) BtnAmaback_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation WebViewController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnAmaback
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.WebViewController, Lab7", "get_btnAmaback");
	}

	-(void) setBtnAmaback:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.WebViewController, Lab7", "set_btnAmaback");
	}

	-(UIWebView *) webviewSite
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, "Lab7.WebViewController, Lab7", "get_webviewSite");
	}

	-(void) setWebviewSite:(UIWebView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, "UIKit.UIWebView, Xamarin.iOS", "Lab7.WebViewController, Lab7", "set_webviewSite");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.WebViewController, Lab7", "ViewDidLoad");
	}

	-(void) BtnAmaback_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.WebViewController, Lab7", "BtnAmaback_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface AmazonWebController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnbackdetail;
	@property (nonatomic, assign) UIWebView * WebController;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnbackdetail;
	-(void) setBtnbackdetail:(UIButton *)p0;
	-(UIWebView *) WebController;
	-(void) setWebController:(UIWebView *)p0;
	-(void) viewDidLoad;
	-(void) Btnbackdetail_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation AmazonWebController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnbackdetail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.AmazonWebController, Lab7", "get_btnbackdetail");
	}

	-(void) setBtnbackdetail:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.AmazonWebController, Lab7", "set_btnbackdetail");
	}

	-(UIWebView *) WebController
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_21 (self, _cmd, &managed_method, "Lab7.AmazonWebController, Lab7", "get_WebController");
	}

	-(void) setWebController:(UIWebView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_22 (self, _cmd, &managed_method, p0, "UIKit.UIWebView, Xamarin.iOS", "Lab7.AmazonWebController, Lab7", "set_WebController");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.AmazonWebController, Lab7", "ViewDidLoad");
	}

	-(void) Btnbackdetail_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.AmazonWebController, Lab7", "Btnbackdetail_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface LoginController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnLogin;
	@property (nonatomic, assign) UIButton * btnSignUp;
	@property (nonatomic, assign) UITextField * txtEmail;
	@property (nonatomic, assign) UITextField * txtPassword;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnLogin;
	-(void) setBtnLogin:(UIButton *)p0;
	-(UIButton *) btnSignUp;
	-(void) setBtnSignUp:(UIButton *)p0;
	-(UITextField *) txtEmail;
	-(void) setTxtEmail:(UITextField *)p0;
	-(UITextField *) txtPassword;
	-(void) setTxtPassword:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) BtnLogin_TouchUpInside:(UIButton *)p0;
	-(void) BtnSignUp_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation LoginController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnLogin
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.LoginController, Lab7", "get_btnLogin");
	}

	-(void) setBtnLogin:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.LoginController, Lab7", "set_btnLogin");
	}

	-(UIButton *) btnSignUp
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.LoginController, Lab7", "get_btnSignUp");
	}

	-(void) setBtnSignUp:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.LoginController, Lab7", "set_btnSignUp");
	}

	-(UITextField *) txtEmail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.LoginController, Lab7", "get_txtEmail");
	}

	-(void) setTxtEmail:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.LoginController, Lab7", "set_txtEmail");
	}

	-(UITextField *) txtPassword
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.LoginController, Lab7", "get_txtPassword");
	}

	-(void) setTxtPassword:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.LoginController, Lab7", "set_txtPassword");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.LoginController, Lab7", "ViewDidLoad");
	}

	-(void) BtnLogin_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.LoginController, Lab7", "BtnLogin_TouchUpInside");
	}

	-(void) BtnSignUp_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.LoginController, Lab7", "BtnSignUp_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface SignUp : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnCreateAccount;
	@property (nonatomic, assign) UITextField * txtConfirmPassword;
	@property (nonatomic, assign) UITextField * txtEmail;
	@property (nonatomic, assign) UITextField * txtFirstName;
	@property (nonatomic, assign) UITextField * txtLastName;
	@property (nonatomic, assign) UITextField * txtPassword;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnCreateAccount;
	-(void) setBtnCreateAccount:(UIButton *)p0;
	-(UITextField *) txtConfirmPassword;
	-(void) setTxtConfirmPassword:(UITextField *)p0;
	-(UITextField *) txtEmail;
	-(void) setTxtEmail:(UITextField *)p0;
	-(UITextField *) txtFirstName;
	-(void) setTxtFirstName:(UITextField *)p0;
	-(UITextField *) txtLastName;
	-(void) setTxtLastName:(UITextField *)p0;
	-(UITextField *) txtPassword;
	-(void) setTxtPassword:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) BtnCreateAccount_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation SignUp { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnCreateAccount
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "get_btnCreateAccount");
	}

	-(void) setBtnCreateAccount:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.SignUp, Lab7", "set_btnCreateAccount");
	}

	-(UITextField *) txtConfirmPassword
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "get_txtConfirmPassword");
	}

	-(void) setTxtConfirmPassword:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.SignUp, Lab7", "set_txtConfirmPassword");
	}

	-(UITextField *) txtEmail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "get_txtEmail");
	}

	-(void) setTxtEmail:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.SignUp, Lab7", "set_txtEmail");
	}

	-(UITextField *) txtFirstName
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "get_txtFirstName");
	}

	-(void) setTxtFirstName:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.SignUp, Lab7", "set_txtFirstName");
	}

	-(UITextField *) txtLastName
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "get_txtLastName");
	}

	-(void) setTxtLastName:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.SignUp, Lab7", "set_txtLastName");
	}

	-(UITextField *) txtPassword
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "get_txtPassword");
	}

	-(void) setTxtPassword:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.SignUp, Lab7", "set_txtPassword");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.SignUp, Lab7", "ViewDidLoad");
	}

	-(void) BtnCreateAccount_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.SignUp, Lab7", "BtnCreateAccount_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface deHao_Lab7_Camera_CameraDelegate : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation deHao_Lab7_Camera_CameraDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) imagePickerController:(UIImagePickerController *)p0 didFinishPickingMediaWithInfo:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_25 (self, _cmd, &managed_method, p0, p1, "UIKit.UIImagePickerController, Xamarin.iOS", "Foundation.NSDictionary, Xamarin.iOS", "deHao.Lab7.Camera+CameraDelegate, Lab7", "FinishedPickingMedia");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_7 (self, _cmd, &managed_method, "deHao.Lab7.Camera+CameraDelegate, Lab7", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UploadABook : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * AmazonPrice;
	@property (nonatomic, assign) UIButton * btnbook;
	@property (nonatomic, assign) UIButton * btnbookback;
	@property (nonatomic, assign) UIButton * btnuploadabook;
	@property (nonatomic, assign) UIImageView * imgpic;
	@property (nonatomic, assign) UITextField * txtauthor;
	@property (nonatomic, assign) UITextField * txtbookprice;
	@property (nonatomic, assign) UITextField * txtdescription;
	@property (nonatomic, assign) UITextField * txtedition;
	@property (nonatomic, assign) UITextField * txtemail;
	@property (nonatomic, assign) UITextField * txtisbn;
	@property (nonatomic, assign) UITextField * txtname;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) AmazonPrice;
	-(void) setAmazonPrice:(UIButton *)p0;
	-(UIButton *) btnbook;
	-(void) setBtnbook:(UIButton *)p0;
	-(UIButton *) btnbookback;
	-(void) setBtnbookback:(UIButton *)p0;
	-(UIButton *) btnuploadabook;
	-(void) setBtnuploadabook:(UIButton *)p0;
	-(UIImageView *) imgpic;
	-(void) setImgpic:(UIImageView *)p0;
	-(UITextField *) txtauthor;
	-(void) setTxtauthor:(UITextField *)p0;
	-(UITextField *) txtbookprice;
	-(void) setTxtbookprice:(UITextField *)p0;
	-(UITextField *) txtdescription;
	-(void) setTxtdescription:(UITextField *)p0;
	-(UITextField *) txtedition;
	-(void) setTxtedition:(UITextField *)p0;
	-(UITextField *) txtemail;
	-(void) setTxtemail:(UITextField *)p0;
	-(UITextField *) txtisbn;
	-(void) setTxtisbn:(UITextField *)p0;
	-(UITextField *) txtname;
	-(void) setTxtname:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) Btnbook_TouchUpInside:(UIButton *)p0;
	-(void) Btnuploadabook_TouchUpInside:(UIButton *)p0;
	-(void) Btnbookback_TouchUpInside:(UIButton *)p0;
	-(void) AmazonPrice_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UploadABook { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) AmazonPrice
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_AmazonPrice");
	}

	-(void) setAmazonPrice:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_AmazonPrice");
	}

	-(UIButton *) btnbook
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_btnbook");
	}

	-(void) setBtnbook:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_btnbook");
	}

	-(UIButton *) btnbookback
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_btnbookback");
	}

	-(void) setBtnbookback:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_btnbookback");
	}

	-(UIButton *) btnuploadabook
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_btnuploadabook");
	}

	-(void) setBtnuploadabook:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_btnuploadabook");
	}

	-(UIImageView *) imgpic
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_imgpic");
	}

	-(void) setImgpic:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_imgpic");
	}

	-(UITextField *) txtauthor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtauthor");
	}

	-(void) setTxtauthor:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtauthor");
	}

	-(UITextField *) txtbookprice
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtbookprice");
	}

	-(void) setTxtbookprice:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtbookprice");
	}

	-(UITextField *) txtdescription
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtdescription");
	}

	-(void) setTxtdescription:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtdescription");
	}

	-(UITextField *) txtedition
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtedition");
	}

	-(void) setTxtedition:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtedition");
	}

	-(UITextField *) txtemail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtemail");
	}

	-(void) setTxtemail:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtemail");
	}

	-(UITextField *) txtisbn
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtisbn");
	}

	-(void) setTxtisbn:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtisbn");
	}

	-(UITextField *) txtname
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "get_txtname");
	}

	-(void) setTxtname:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.UploadABook, Lab7", "set_txtname");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.UploadABook, Lab7", "ViewDidLoad");
	}

	-(void) Btnbook_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "Btnbook_TouchUpInside");
	}

	-(void) Btnuploadabook_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "Btnuploadabook_TouchUpInside");
	}

	-(void) Btnbookback_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "Btnbookback_TouchUpInside");
	}

	-(void) AmazonPrice_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.UploadABook, Lab7", "AmazonPrice_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface EditProfileController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnprofileback;
	@property (nonatomic, assign) UIButton * btnprofilesave;
	@property (nonatomic, assign) UIButton * btnuploadprofile;
	@property (nonatomic, assign) UIImageView * imgprofile;
	@property (nonatomic, assign) UILabel * lblprofileemail;
	@property (nonatomic, assign) UILabel * lblprofilename;
	@property (nonatomic, assign) UIView * ProfileEditPageController;
	@property (nonatomic, assign) UITextField * txtchangeemail;
	@property (nonatomic, assign) UITextField * txtchangename;
	@property (nonatomic, assign) UITextField * txtContInfo;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnprofileback;
	-(void) setBtnprofileback:(UIButton *)p0;
	-(UIButton *) btnprofilesave;
	-(void) setBtnprofilesave:(UIButton *)p0;
	-(UIButton *) btnuploadprofile;
	-(void) setBtnuploadprofile:(UIButton *)p0;
	-(UIImageView *) imgprofile;
	-(void) setImgprofile:(UIImageView *)p0;
	-(UILabel *) lblprofileemail;
	-(void) setLblprofileemail:(UILabel *)p0;
	-(UILabel *) lblprofilename;
	-(void) setLblprofilename:(UILabel *)p0;
	-(UIView *) ProfileEditPageController;
	-(void) setProfileEditPageController:(UIView *)p0;
	-(UITextField *) txtchangeemail;
	-(void) setTxtchangeemail:(UITextField *)p0;
	-(UITextField *) txtchangename;
	-(void) setTxtchangename:(UITextField *)p0;
	-(UITextField *) txtContInfo;
	-(void) setTxtContInfo:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) Btnprofileback_TouchUpInside:(UIButton *)p0;
	-(void) Btnuploadprofile_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation EditProfileController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnprofileback
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_btnprofileback");
	}

	-(void) setBtnprofileback:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_btnprofileback");
	}

	-(UIButton *) btnprofilesave
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_btnprofilesave");
	}

	-(void) setBtnprofilesave:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_btnprofilesave");
	}

	-(UIButton *) btnuploadprofile
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_btnuploadprofile");
	}

	-(void) setBtnuploadprofile:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_btnuploadprofile");
	}

	-(UIImageView *) imgprofile
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_imgprofile");
	}

	-(void) setImgprofile:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_imgprofile");
	}

	-(UILabel *) lblprofileemail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_lblprofileemail");
	}

	-(void) setLblprofileemail:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_lblprofileemail");
	}

	-(UILabel *) lblprofilename
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_lblprofilename");
	}

	-(void) setLblprofilename:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_lblprofilename");
	}

	-(UIView *) ProfileEditPageController
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_26 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_ProfileEditPageController");
	}

	-(void) setProfileEditPageController:(UIView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_27 (self, _cmd, &managed_method, p0, "UIKit.UIView, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_ProfileEditPageController");
	}

	-(UITextField *) txtchangeemail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_txtchangeemail");
	}

	-(void) setTxtchangeemail:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_txtchangeemail");
	}

	-(UITextField *) txtchangename
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_txtchangename");
	}

	-(void) setTxtchangename:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_txtchangename");
	}

	-(UITextField *) txtContInfo
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "get_txtContInfo");
	}

	-(void) setTxtContInfo:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "set_txtContInfo");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.EditProfileController, Lab7", "ViewDidLoad");
	}

	-(void) Btnprofileback_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "Btnprofileback_TouchUpInside");
	}

	-(void) Btnuploadprofile_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.EditProfileController, Lab7", "Btnuploadprofile_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface BookDetailController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnCompare;
	@property (nonatomic, assign) UIButton * btndetail;
	@property (nonatomic, assign) UIButton * btndetailback;
	@property (nonatomic, assign) UIButton * btnexchange;
	@property (nonatomic, assign) UIImageView * imgbook;
	@property (nonatomic, assign) UILabel * lblAuthor;
	@property (nonatomic, assign) UILabel * lbldetailauthor;
	@property (nonatomic, assign) UILabel * lbldetailedition;
	@property (nonatomic, assign) UILabel * lblemail;
	@property (nonatomic, assign) UILabel * lblISBN;
	@property (nonatomic, assign) UILabel * lblName;
	@property (nonatomic, assign) UILabel * lblopedition;
	@property (nonatomic, assign) UILabel * lblPrice;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnCompare;
	-(void) setBtnCompare:(UIButton *)p0;
	-(UIButton *) btndetail;
	-(void) setBtndetail:(UIButton *)p0;
	-(UIButton *) btndetailback;
	-(void) setBtndetailback:(UIButton *)p0;
	-(UIButton *) btnexchange;
	-(void) setBtnexchange:(UIButton *)p0;
	-(UIImageView *) imgbook;
	-(void) setImgbook:(UIImageView *)p0;
	-(UILabel *) lblAuthor;
	-(void) setLblAuthor:(UILabel *)p0;
	-(UILabel *) lbldetailauthor;
	-(void) setLbldetailauthor:(UILabel *)p0;
	-(UILabel *) lbldetailedition;
	-(void) setLbldetailedition:(UILabel *)p0;
	-(UILabel *) lblemail;
	-(void) setLblemail:(UILabel *)p0;
	-(UILabel *) lblISBN;
	-(void) setLblISBN:(UILabel *)p0;
	-(UILabel *) lblName;
	-(void) setLblName:(UILabel *)p0;
	-(UILabel *) lblopedition;
	-(void) setLblopedition:(UILabel *)p0;
	-(UILabel *) lblPrice;
	-(void) setLblPrice:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) Btndetail_TouchUpInside:(UIButton *)p0;
	-(void) Btnexchange_TouchUpInside:(UIButton *)p0;
	-(void) Btndetailback_TouchUpInside:(UIButton *)p0;
	-(void) BtnCompare_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation BookDetailController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnCompare
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_btnCompare");
	}

	-(void) setBtnCompare:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_btnCompare");
	}

	-(UIButton *) btndetail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_btndetail");
	}

	-(void) setBtndetail:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_btndetail");
	}

	-(UIButton *) btndetailback
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_btndetailback");
	}

	-(void) setBtndetailback:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_btndetailback");
	}

	-(UIButton *) btnexchange
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_btnexchange");
	}

	-(void) setBtnexchange:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_btnexchange");
	}

	-(UIImageView *) imgbook
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_imgbook");
	}

	-(void) setImgbook:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, "UIKit.UIImageView, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_imgbook");
	}

	-(UILabel *) lblAuthor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lblAuthor");
	}

	-(void) setLblAuthor:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lblAuthor");
	}

	-(UILabel *) lbldetailauthor
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lbldetailauthor");
	}

	-(void) setLbldetailauthor:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lbldetailauthor");
	}

	-(UILabel *) lbldetailedition
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lbldetailedition");
	}

	-(void) setLbldetailedition:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lbldetailedition");
	}

	-(UILabel *) lblemail
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lblemail");
	}

	-(void) setLblemail:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lblemail");
	}

	-(UILabel *) lblISBN
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lblISBN");
	}

	-(void) setLblISBN:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lblISBN");
	}

	-(UILabel *) lblName
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lblName");
	}

	-(void) setLblName:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lblName");
	}

	-(UILabel *) lblopedition
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lblopedition");
	}

	-(void) setLblopedition:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lblopedition");
	}

	-(UILabel *) lblPrice
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_12 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "get_lblPrice");
	}

	-(void) setLblPrice:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_13 (self, _cmd, &managed_method, p0, "UIKit.UILabel, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "set_lblPrice");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.BookDetailController, Lab7", "ViewDidLoad");
	}

	-(void) Btndetail_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "Btndetail_TouchUpInside");
	}

	-(void) Btnexchange_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "Btnexchange_TouchUpInside");
	}

	-(void) Btndetailback_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "Btndetailback_TouchUpInside");
	}

	-(void) BtnCompare_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.BookDetailController, Lab7", "BtnCompare_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface HomeMainController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnSearch;
	@property (nonatomic, assign) UITableView * tblContacts;
	@property (nonatomic, assign) UITextField * txtSearch;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnSearch;
	-(void) setBtnSearch:(UIButton *)p0;
	-(UITableView *) tblContacts;
	-(void) setTblContacts:(UITableView *)p0;
	-(UITextField *) txtSearch;
	-(void) setTxtSearch:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) BtnSearch_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation HomeMainController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnSearch
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.HomeMainController, Lab7", "get_btnSearch");
	}

	-(void) setBtnSearch:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.HomeMainController, Lab7", "set_btnSearch");
	}

	-(UITableView *) tblContacts
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, "Lab7.HomeMainController, Lab7", "get_tblContacts");
	}

	-(void) setTblContacts:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "Lab7.HomeMainController, Lab7", "set_tblContacts");
	}

	-(UITextField *) txtSearch
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_23 (self, _cmd, &managed_method, "Lab7.HomeMainController, Lab7", "get_txtSearch");
	}

	-(void) setTxtSearch:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "Lab7.HomeMainController, Lab7", "set_txtSearch");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.HomeMainController, Lab7", "ViewDidLoad");
	}

	-(void) BtnSearch_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.HomeMainController, Lab7", "BtnSearch_TouchUpInside");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface ListController : UITableViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation ListController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.ListController, Lab7", "ViewDidLoad");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface ShoppingCartController : UIViewController {
	XamarinObject __monoObjectGCHandle;
}
	@property (nonatomic, assign) UIButton * btnCheckout;
	@property (nonatomic, assign) UITableView * tblShoppingCart;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnCheckout;
	-(void) setBtnCheckout:(UIButton *)p0;
	-(UITableView *) tblShoppingCart;
	-(void) setTblShoppingCart:(UITableView *)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation ShoppingCartController { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) btnCheckout
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, "Lab7.ShoppingCartController, Lab7", "get_btnCheckout");
	}

	-(void) setBtnCheckout:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, "UIKit.UIButton, Xamarin.iOS", "Lab7.ShoppingCartController, Lab7", "set_btnCheckout");
	}

	-(UITableView *) tblShoppingCart
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_28 (self, _cmd, &managed_method, "Lab7.ShoppingCartController, Lab7", "get_tblShoppingCart");
	}

	-(void) setTblShoppingCart:(UITableView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_29 (self, _cmd, &managed_method, p0, "UIKit.UITableView, Xamarin.iOS", "Lab7.ShoppingCartController, Lab7", "set_tblShoppingCart");
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_1 (self, _cmd, &managed_method, "Lab7.ShoppingCartController, Lab7", "ViewDidLoad");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __UIGestureRecognizerToken : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation __UIGestureRecognizerToken { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

@interface __UIGestureRecognizerParameterlessToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParameterlessToken { } 
@end

@interface __UIGestureRecognizerParametrizedToken : __UIGestureRecognizerToken {
}
@end
@implementation __UIGestureRecognizerParametrizedToken { } 
@end

@interface UIKit_UITextField__UITextFieldDelegate : NSObject<UITextFieldDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) textFieldDidEndEditing:(UITextField *)p0;
	-(void) textFieldDidBeginEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0;
	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2;
	-(BOOL) textFieldShouldClear:(UITextField *)p0;
	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0;
	-(BOOL) textFieldShouldReturn:(UITextField *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation UIKit_UITextField__UITextFieldDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) textFieldDidEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingEnded");
	}

	-(void) textFieldDidBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_24 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "EditingStarted");
	}

	-(BOOL) textFieldShouldBeginEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldBeginEditing");
	}

	-(BOOL) textField:(UITextField *)p0 shouldChangeCharactersInRange:(NSRange)p1 replacementString:(NSString *)p2
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_31 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UITextField, Xamarin.iOS", "Foundation.NSRange, Xamarin.iOS", "System.String, mscorlib", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldChangeCharacters");
	}

	-(BOOL) textFieldShouldClear:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldClear");
	}

	-(BOOL) textFieldShouldEndEditing:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldEndEditing");
	}

	-(BOOL) textFieldShouldReturn:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_30 (self, _cmd, &managed_method, p0, "UIKit.UITextField, Xamarin.iOS", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", "ShouldReturn");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_7 (self, _cmd, &managed_method, "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __NSObject_Disposer : NSObject {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end
@implementation __NSObject_Disposer { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_32 (self, _cmd, &managed_method, p0, "Foundation.NSObject, Xamarin.iOS", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", "Drain");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_7 (self, _cmd, &managed_method, "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", ".ctor", &call_super);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface UIKit_UIScrollView__UIScrollViewDelegate : NSObject<UIScrollViewDelegate> {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0;
	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0;
	-(void) scrollViewDidZoom:(UIScrollView *)p0;
	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1;
	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0;
	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0;
	-(void) scrollViewDidScroll:(UIScrollView *)p0;
	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0;
	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0;
	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0;
	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2;
	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2;
	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end
@implementation UIKit_UIScrollView__UIScrollViewDelegate { } 
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) scrollViewDidEndDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DecelerationEnded");
	}

	-(void) scrollViewWillBeginDecelerating:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DecelerationStarted");
	}

	-(void) scrollViewDidZoom:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DidZoom");
	}

	-(void) scrollViewDidEndDragging:(UIScrollView *)p0 willDecelerate:(BOOL)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_34 (self, _cmd, &managed_method, p0, p1, "UIKit.UIScrollView, Xamarin.iOS", "System.Boolean, mscorlib", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DraggingEnded");
	}

	-(void) scrollViewWillBeginDragging:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "DraggingStarted");
	}

	-(void) scrollViewDidEndScrollingAnimation:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ScrollAnimationEnded");
	}

	-(void) scrollViewDidScroll:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "Scrolled");
	}

	-(void) scrollViewDidScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_33 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ScrolledToTop");
	}

	-(BOOL) scrollViewShouldScrollToTop:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_35 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ShouldScrollToTop");
	}

	-(UIView *) viewForZoomingInScrollView:(UIScrollView *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_36 (self, _cmd, &managed_method, p0, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ViewForZoomingInScrollView");
	}

	-(void) scrollViewWillEndDragging:(UIScrollView *)p0 withVelocity:(CGPoint)p1 targetContentOffset:(CGPoint*)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_37 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIScrollView, Xamarin.iOS", "CoreGraphics.CGPoint, Xamarin.iOS", "CoreGraphics.CGPoint&, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "WillEndDragging");
	}

	-(void) scrollViewDidEndZooming:(UIScrollView *)p0 withView:(UIView *)p1 atScale:(CGFloat)p2
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_38 (self, _cmd, &managed_method, p0, p1, p2, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "System.nfloat, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ZoomingEnded");
	}

	-(void) scrollViewWillBeginZooming:(UIScrollView *)p0 withView:(UIView *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_39 (self, _cmd, &managed_method, p0, p1, "UIKit.UIScrollView, Xamarin.iOS", "UIKit.UIView, Xamarin.iOS", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", "ZoomingStarted");
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_2 (self, _cmd, &managed_method, p0, "System.IntPtr, mscorlib", "Foundation.NSObject, Xamarin.iOS", "InvokeConformsToProtocol");
	}
@end

	static MTClassMap __xamarin_class_map [] = {
		{"NSObject", "Foundation.NSObject, Xamarin.iOS", NULL },
		{"UIResponder", "UIKit.UIResponder, Xamarin.iOS", NULL },
		{"UIView", "UIKit.UIView, Xamarin.iOS", NULL },
		{"UIViewController", "UIKit.UIViewController, Xamarin.iOS", NULL },
		{"UITableViewController", "UIKit.UITableViewController, Xamarin.iOS", NULL },
		{"NSIndexPath", "Foundation.NSIndexPath, Xamarin.iOS", NULL },
		{"UIFocusAnimationCoordinator", "UIKit.UIFocusAnimationCoordinator, Xamarin.iOS", NULL },
		{"UIFocusUpdateContext", "UIKit.UIFocusUpdateContext, Xamarin.iOS", NULL },
		{"UIAlertView", "UIKit.UIAlertView, Xamarin.iOS", NULL },
		{"UIApplication", "UIKit.UIApplication, Xamarin.iOS", NULL },
		{"UIBarItem", "UIKit.UIBarItem, Xamarin.iOS", NULL },
		{"UIBezierPath", "UIKit.UIBezierPath, Xamarin.iOS", NULL },
		{"UIControl", "UIKit.UIControl, Xamarin.iOS", NULL },
		{"UIButton", "UIKit.UIButton, Xamarin.iOS", NULL },
		{"UIColor", "UIKit.UIColor, Xamarin.iOS", NULL },
		{"UIKit_UIControlEventProxy", "UIKit.UIControlEventProxy, Xamarin.iOS", NULL },
		{"UIDevice", "UIKit.UIDevice, Xamarin.iOS", NULL },
		{"NSArray", "Foundation.NSArray, Xamarin.iOS", NULL },
		{"NSBundle", "Foundation.NSBundle, Xamarin.iOS", NULL },
		{"UIImage", "UIKit.UIImage, Xamarin.iOS", NULL },
		{"NSCoder", "Foundation.NSCoder, Xamarin.iOS", NULL },
		{"UINavigationController", "UIKit.UINavigationController, Xamarin.iOS", NULL },
		{"UIImagePickerController", "UIKit.UIImagePickerController, Xamarin.iOS", NULL },
		{"UIScreen", "UIKit.UIScreen, Xamarin.iOS", NULL },
		{"UISearchDisplayController", "UIKit.UISearchDisplayController, Xamarin.iOS", NULL },
		{"UIScrollView", "UIKit.UIScrollView, Xamarin.iOS", NULL },
		{"UITableView", "UIKit.UITableView, Xamarin.iOS", NULL },
		{"UITableViewCell", "UIKit.UITableViewCell, Xamarin.iOS", NULL },
		{"NSURLRequest", "Foundation.NSUrlRequest, Xamarin.iOS", NULL },
		{"NSValue", "Foundation.NSValue, Xamarin.iOS", NULL },
		{"NSNumber", "Foundation.NSNumber, Xamarin.iOS", NULL },
		{"UIImageView", "UIKit.UIImageView, Xamarin.iOS", NULL },
		{"NSRunLoop", "Foundation.NSRunLoop, Xamarin.iOS", NULL },
		{"NSString", "Foundation.NSString, Xamarin.iOS", NULL },
		{"NSThread", "Foundation.NSThread, Xamarin.iOS", NULL },
		{"NSTimeZone", "Foundation.NSTimeZone, Xamarin.iOS", NULL },
		{"NSURL", "Foundation.NSUrl, Xamarin.iOS", NULL },
		{"UILabel", "UIKit.UILabel, Xamarin.iOS", NULL },
		{"UILocalNotification", "UIKit.UILocalNotification, Xamarin.iOS", NULL },
		{"NSNull", "Foundation.NSNull, Xamarin.iOS", NULL },
		{"__MonoMac_NSActionDispatcher", "Foundation.NSActionDispatcher, Xamarin.iOS", NULL },
		{"__MonoMac_NSAsyncActionDispatcher", "Foundation.NSAsyncActionDispatcher, Xamarin.iOS", NULL },
		{"NSAutoreleasePool", "Foundation.NSAutoreleasePool, Xamarin.iOS", NULL },
		{"NSError", "Foundation.NSError, Xamarin.iOS", NULL },
		{"UINavigationItem", "UIKit.UINavigationItem, Xamarin.iOS", NULL },
		{"CALayer", "CoreAnimation.CALayer, Xamarin.iOS", NULL },
		{"UIPress", "UIKit.UIPress, Xamarin.iOS", NULL },
		{"NSUserActivity", "Foundation.NSUserActivity, Xamarin.iOS", NULL },
		{"UIStoryboard", "UIKit.UIStoryboard, Xamarin.iOS", NULL },
		{"UITabBar", "UIKit.UITabBar, Xamarin.iOS", NULL },
		{"UITabBarController", "UIKit.UITabBarController, Xamarin.iOS", NULL },
		{"UITabBarItem", "UIKit.UITabBarItem, Xamarin.iOS", NULL },
		{"UITableViewFocusUpdateContext", "UIKit.UITableViewFocusUpdateContext, Xamarin.iOS", NULL },
		{"UITableViewRowAction", "UIKit.UITableViewRowAction, Xamarin.iOS", NULL },
		{"NSException", "Foundation.NSException, Xamarin.iOS", NULL },
		{"UITextPosition", "UIKit.UITextPosition, Xamarin.iOS", NULL },
		{"UITextRange", "UIKit.UITextRange, Xamarin.iOS", NULL },
		{"UITextSelectionRect", "UIKit.UITextSelectionRect, Xamarin.iOS", NULL },
		{"UITouch", "UIKit.UITouch, Xamarin.iOS", NULL },
		{"UITraitCollection", "UIKit.UITraitCollection, Xamarin.iOS", NULL },
		{"UIUserNotificationSettings", "UIKit.UIUserNotificationSettings, Xamarin.iOS", NULL },
		{"UIActivityIndicatorView", "UIKit.UIActivityIndicatorView, Xamarin.iOS", NULL },
		{"UIWebView", "UIKit.UIWebView, Xamarin.iOS", NULL },
		{"UIWindow", "UIKit.UIWindow, Xamarin.iOS", NULL },
		{"UIApplicationShortcutItem", "UIKit.UIApplicationShortcutItem, Xamarin.iOS", NULL },
		{"UIGestureRecognizer", "UIKit.UIGestureRecognizer, Xamarin.iOS", NULL },
		{"NSData", "Foundation.NSData, Xamarin.iOS", NULL },
		{"NSDictionary", "Foundation.NSDictionary, Xamarin.iOS", NULL },
		{"UITextField", "UIKit.UITextField, Xamarin.iOS", NULL },
		{"NSMutableData", "Foundation.NSMutableData, Xamarin.iOS", NULL },
		{"NSMutableDictionary", "Foundation.NSMutableDictionary, Xamarin.iOS", NULL },
		{"AppDelegate", "Lab7.AppDelegate, Lab7", NULL },
		{"Lab7_LoadingOverlay", "Lab7.LoadingOverlay, Lab7", NULL },
		{"HomeController", "Lab7.HomeController, Lab7", NULL },
		{"Lab7_ImageTableSource", "Lab7.ImageTableSource, Lab7", NULL },
		{"WebViewController", "Lab7.WebViewController, Lab7", NULL },
		{"AmazonWebController", "Lab7.AmazonWebController, Lab7", NULL },
		{"LoginController", "Lab7.LoginController, Lab7", NULL },
		{"SignUp", "Lab7.SignUp, Lab7", NULL },
		{"deHao_Lab7_Camera_CameraDelegate", "deHao.Lab7.Camera+CameraDelegate, Lab7", NULL },
		{"UploadABook", "Lab7.UploadABook, Lab7", NULL },
		{"EditProfileController", "Lab7.EditProfileController, Lab7", NULL },
		{"BookDetailController", "Lab7.BookDetailController, Lab7", NULL },
		{"HomeMainController", "Lab7.HomeMainController, Lab7", NULL },
		{"ListController", "Lab7.ListController, Lab7", NULL },
		{"ShoppingCartController", "Lab7.ShoppingCartController, Lab7", NULL },
		{"__UIGestureRecognizerToken", "UIKit.UIGestureRecognizer+Token, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParameterlessToken", "UIKit.UIGestureRecognizer+ParameterlessDispatch, Xamarin.iOS", NULL },
		{"__UIGestureRecognizerParametrizedToken", "UIKit.UIGestureRecognizer+ParametrizedDispatch, Xamarin.iOS", NULL },
		{"UIKit_UITextField__UITextFieldDelegate", "UIKit.UITextField+_UITextFieldDelegate, Xamarin.iOS", NULL },
		{"__NSObject_Disposer", "Foundation.NSObject+NSObject_Disposer, Xamarin.iOS", NULL },
		{"UIKit_UIScrollView__UIScrollViewDelegate", "UIKit.UIScrollView+_UIScrollViewDelegate, Xamarin.iOS", NULL },
		{ NULL, NULL, NULL },
	};

	static const char *__xamarin_registration_assemblies []= {
		"Lab7", 
		"Xamarin.iOS", 
		"mscorlib", 
		"System", 
		"System.Core", 
		"Mono.Dynamic.Interpreter", 
		"Parse.iOS"
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		NULL,
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		7,
		92,
		21
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [2].handle = objc_getClass ("UIView");
	__xamarin_class_map [3].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [4].handle = objc_getClass ("UITableViewController");
	__xamarin_class_map [5].handle = objc_getClass ("NSIndexPath");
	__xamarin_class_map [6].handle = objc_getClass ("UIFocusAnimationCoordinator");
	__xamarin_class_map [7].handle = objc_getClass ("UIFocusUpdateContext");
	__xamarin_class_map [8].handle = objc_getClass ("UIAlertView");
	__xamarin_class_map [9].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [10].handle = objc_getClass ("UIBarItem");
	__xamarin_class_map [11].handle = objc_getClass ("UIBezierPath");
	__xamarin_class_map [12].handle = objc_getClass ("UIControl");
	__xamarin_class_map [13].handle = objc_getClass ("UIButton");
	__xamarin_class_map [14].handle = objc_getClass ("UIColor");
	__xamarin_class_map [15].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [16].handle = objc_getClass ("UIDevice");
	__xamarin_class_map [17].handle = objc_getClass ("NSArray");
	__xamarin_class_map [18].handle = objc_getClass ("NSBundle");
	__xamarin_class_map [19].handle = objc_getClass ("UIImage");
	__xamarin_class_map [20].handle = objc_getClass ("NSCoder");
	__xamarin_class_map [21].handle = objc_getClass ("UINavigationController");
	__xamarin_class_map [22].handle = objc_getClass ("UIImagePickerController");
	__xamarin_class_map [23].handle = objc_getClass ("UIScreen");
	__xamarin_class_map [24].handle = objc_getClass ("UISearchDisplayController");
	__xamarin_class_map [25].handle = objc_getClass ("UIScrollView");
	__xamarin_class_map [26].handle = objc_getClass ("UITableView");
	__xamarin_class_map [27].handle = objc_getClass ("UITableViewCell");
	__xamarin_class_map [28].handle = objc_getClass ("NSURLRequest");
	__xamarin_class_map [29].handle = objc_getClass ("NSValue");
	__xamarin_class_map [30].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [31].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [32].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [33].handle = objc_getClass ("NSString");
	__xamarin_class_map [34].handle = objc_getClass ("NSThread");
	__xamarin_class_map [35].handle = objc_getClass ("NSTimeZone");
	__xamarin_class_map [36].handle = objc_getClass ("NSURL");
	__xamarin_class_map [37].handle = objc_getClass ("UILabel");
	__xamarin_class_map [38].handle = objc_getClass ("UILocalNotification");
	__xamarin_class_map [39].handle = objc_getClass ("NSNull");
	__xamarin_class_map [40].handle = objc_getClass ("__MonoMac_NSActionDispatcher");
	__xamarin_class_map [41].handle = objc_getClass ("__MonoMac_NSAsyncActionDispatcher");
	__xamarin_class_map [42].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [43].handle = objc_getClass ("NSError");
	__xamarin_class_map [44].handle = objc_getClass ("UINavigationItem");
	__xamarin_class_map [45].handle = objc_getClass ("CALayer");
	__xamarin_class_map [46].handle = objc_getClass ("UIPress");
	__xamarin_class_map [47].handle = objc_getClass ("NSUserActivity");
	__xamarin_class_map [48].handle = objc_getClass ("UIStoryboard");
	__xamarin_class_map [49].handle = objc_getClass ("UITabBar");
	__xamarin_class_map [50].handle = objc_getClass ("UITabBarController");
	__xamarin_class_map [51].handle = objc_getClass ("UITabBarItem");
	__xamarin_class_map [52].handle = objc_getClass ("UITableViewFocusUpdateContext");
	__xamarin_class_map [53].handle = objc_getClass ("UITableViewRowAction");
	__xamarin_class_map [54].handle = objc_getClass ("NSException");
	__xamarin_class_map [55].handle = objc_getClass ("UITextPosition");
	__xamarin_class_map [56].handle = objc_getClass ("UITextRange");
	__xamarin_class_map [57].handle = objc_getClass ("UITextSelectionRect");
	__xamarin_class_map [58].handle = objc_getClass ("UITouch");
	__xamarin_class_map [59].handle = objc_getClass ("UITraitCollection");
	__xamarin_class_map [60].handle = objc_getClass ("UIUserNotificationSettings");
	__xamarin_class_map [61].handle = objc_getClass ("UIActivityIndicatorView");
	__xamarin_class_map [62].handle = objc_getClass ("UIWebView");
	__xamarin_class_map [63].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [64].handle = objc_getClass ("UIApplicationShortcutItem");
	__xamarin_class_map [65].handle = objc_getClass ("UIGestureRecognizer");
	__xamarin_class_map [66].handle = objc_getClass ("NSData");
	__xamarin_class_map [67].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [68].handle = objc_getClass ("UITextField");
	__xamarin_class_map [69].handle = objc_getClass ("NSMutableData");
	__xamarin_class_map [70].handle = objc_getClass ("NSMutableDictionary");
	__xamarin_class_map [71].handle = [AppDelegate class];
	__xamarin_class_map [72].handle = [Lab7_LoadingOverlay class];
	__xamarin_class_map [73].handle = [HomeController class];
	__xamarin_class_map [74].handle = [Lab7_ImageTableSource class];
	__xamarin_class_map [75].handle = [WebViewController class];
	__xamarin_class_map [76].handle = [AmazonWebController class];
	__xamarin_class_map [77].handle = [LoginController class];
	__xamarin_class_map [78].handle = [SignUp class];
	__xamarin_class_map [79].handle = [deHao_Lab7_Camera_CameraDelegate class];
	__xamarin_class_map [80].handle = [UploadABook class];
	__xamarin_class_map [81].handle = [EditProfileController class];
	__xamarin_class_map [82].handle = [BookDetailController class];
	__xamarin_class_map [83].handle = [HomeMainController class];
	__xamarin_class_map [84].handle = [ListController class];
	__xamarin_class_map [85].handle = [ShoppingCartController class];
	__xamarin_class_map [86].handle = objc_getClass ("__UIGestureRecognizerToken");
	__xamarin_class_map [87].handle = objc_getClass ("__UIGestureRecognizerParameterlessToken");
	__xamarin_class_map [88].handle = objc_getClass ("__UIGestureRecognizerParametrizedToken");
	__xamarin_class_map [89].handle = objc_getClass ("UIKit_UITextField__UITextFieldDelegate");
	__xamarin_class_map [90].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [91].handle = objc_getClass ("UIKit_UIScrollView__UIScrollViewDelegate");
	xamarin_add_registration_map (&__xamarin_registration_map);
}

