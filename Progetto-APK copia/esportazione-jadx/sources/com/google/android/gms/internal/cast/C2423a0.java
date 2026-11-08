package com.google.android.gms.internal.cast;

import D3.C0157a;
import D3.C0159c;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.CastDevice;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2423a0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final H3.b f22616j = new H3.b("ApplicationAnalytics", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f22617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BinderC2430c f22618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2431c0 f22619c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SharedPreferences f22622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C2427b0 f22623g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0159c f22624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f22625i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final X3.d f22621e = new X3.d(Looper.getMainLooper(), 1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final X f22620d = new X(this, 0);

    public C2423a0(SharedPreferences sharedPreferences, N n7, BinderC2430c binderC2430c, Bundle bundle, String str) {
        this.f22622f = sharedPreferences;
        this.f22617a = n7;
        this.f22618b = binderC2430c;
        this.f22619c = new C2431c0(str, bundle);
    }

    public static void a(C2423a0 c2423a0, int i8) {
        f22616j.b("log session ended with error = %d", Integer.valueOf(i8));
        c2423a0.c();
        c2423a0.f22617a.a(c2423a0.f22619c.a(c2423a0.f22623g, i8), 228);
        c2423a0.f22621e.removeCallbacks(c2423a0.f22620d);
        if (c2423a0.f22625i) {
            return;
        }
        c2423a0.f22623g = null;
    }

    public static void b(C2423a0 c2423a0) {
        C2427b0 c2427b0 = c2423a0.f22623g;
        c2427b0.getClass();
        SharedPreferences sharedPreferences = c2423a0.f22622f;
        if (sharedPreferences == null) {
            return;
        }
        C2427b0.f22637k.b("Save the ApplicationAnalyticsSession to SharedPreferences %s", sharedPreferences);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("application_id", c2427b0.f22640b);
        editorEdit.putString("receiver_metrics_id", c2427b0.f22641c);
        editorEdit.putLong("analytics_session_id", c2427b0.f22642d);
        editorEdit.putInt("event_sequence_number", c2427b0.f22643e);
        editorEdit.putString("receiver_session_id", c2427b0.f22644f);
        editorEdit.putInt("device_capabilities", c2427b0.f22645g);
        editorEdit.putString("device_model_name", c2427b0.f22646h);
        editorEdit.putInt("analytics_session_start_type", c2427b0.f22648j);
        editorEdit.putBoolean("is_output_switcher_enabled", c2427b0.f22647i);
        editorEdit.apply();
    }

    public final void c() {
        CastDevice castDevice;
        C2427b0 c2427b0;
        if (!f()) {
            H3.b bVar = f22616j;
            Log.w(bVar.f3679a, bVar.c("The analyticsSession should not be null for logging. Create a dummy one.", new Object[0]));
            d();
            return;
        }
        C0159c c0159c = this.f22624h;
        if (c0159c != null) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            castDevice = c0159c.f2377k;
        } else {
            castDevice = null;
        }
        if (castDevice != null) {
            String str = this.f22623g.f22641c;
            String str2 = castDevice.f11689R;
            if (!TextUtils.equals(str, str2) && (c2427b0 = this.f22623g) != null) {
                c2427b0.f22641c = str2;
                c2427b0.f22645g = castDevice.f11686O;
                c2427b0.f22646h = castDevice.f11682K;
            }
        }
        com.bumptech.glide.c.h(this.f22623g);
    }

    public final void d() {
        CastDevice castDevice;
        C2427b0 c2427b0;
        f22616j.b("Create a new ApplicationAnalyticsSession based on CastSession", new Object[0]);
        C2427b0 c2427b1 = new C2427b0(this.f22618b);
        C2427b0.f22638l++;
        this.f22623g = c2427b1;
        C0159c c0159c = this.f22624h;
        c2427b1.f22647i = c0159c != null && c0159c.f2373g.f22785L;
        H3.b bVar = C0157a.f2336k;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C0157a c0157a = C0157a.f2338m;
        com.bumptech.glide.c.h(c0157a);
        com.bumptech.glide.c.d("Must be called from the main thread.");
        c2427b1.f22640b = c0157a.f2342d.f2352G;
        C0159c c0159c2 = this.f22624h;
        if (c0159c2 == null) {
            castDevice = null;
        } else {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            castDevice = c0159c2.f2377k;
        }
        if (castDevice != null && (c2427b0 = this.f22623g) != null) {
            c2427b0.f22641c = castDevice.f11689R;
            c2427b0.f22645g = castDevice.f11686O;
            c2427b0.f22646h = castDevice.f11682K;
        }
        C2427b0 c2427b2 = this.f22623g;
        com.bumptech.glide.c.h(c2427b2);
        C0159c c0159c3 = this.f22624h;
        c2427b2.f22648j = c0159c3 != null ? c0159c3.b() : 0;
        com.bumptech.glide.c.h(this.f22623g);
    }

    public final void e() {
        X3.d dVar = this.f22621e;
        com.bumptech.glide.c.h(dVar);
        X x7 = this.f22620d;
        com.bumptech.glide.c.h(x7);
        dVar.postDelayed(x7, 300000L);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean f() {
        String str;
        C2427b0 c2427b0 = this.f22623g;
        H3.b bVar = f22616j;
        if (c2427b0 == null) {
            bVar.b("The analytics session is null when matching with application ID.", new Object[0]);
            return false;
        }
        H3.b bVar2 = C0157a.f2336k;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C0157a c0157a = C0157a.f2338m;
        com.bumptech.glide.c.h(c0157a);
        com.bumptech.glide.c.d("Must be called from the main thread.");
        String str2 = c0157a.f2342d.f2352G;
        if (str2 == null || (str = this.f22623g.f22640b) == null || !TextUtils.equals(str, str2)) {
            bVar.b("The analytics session doesn't match the application ID %s", str2);
            return false;
        }
        com.bumptech.glide.c.h(this.f22623g);
        return true;
    }

    public final boolean g(String str) {
        String str2;
        if (!f()) {
            return false;
        }
        com.bumptech.glide.c.h(this.f22623g);
        if (str != null && (str2 = this.f22623g.f22644f) != null && TextUtils.equals(str2, str)) {
            return true;
        }
        f22616j.b("The analytics session doesn't match the receiver session ID %s.", str);
        return false;
    }
}
