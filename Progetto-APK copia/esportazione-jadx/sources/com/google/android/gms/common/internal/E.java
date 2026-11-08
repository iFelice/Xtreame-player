package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f11791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f11794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f11795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11796f;

    public E(AbstractC0631g abstractC0631g, int i8, Bundle bundle) {
        this.f11796f = abstractC0631g;
        Boolean bool = Boolean.TRUE;
        this.f11793c = abstractC0631g;
        this.f11791a = bool;
        this.f11792b = false;
        this.f11794d = i8;
        this.f11795e = bundle;
    }

    public final /* bridge */ void a(Object obj) {
        AbstractC0631g abstractC0631g = this.f11796f;
        int i8 = this.f11794d;
        if (i8 != 0) {
            abstractC0631g.c(1, null);
            Bundle bundle = this.f11795e;
            b(new J3.b(i8, bundle != null ? (PendingIntent) bundle.getParcelable(AbstractC0631g.KEY_PENDING_INTENT) : null));
        } else {
            if (c()) {
                return;
            }
            abstractC0631g.c(1, null);
            b(new J3.b(8, null));
        }
    }

    public abstract void b(J3.b bVar);

    public abstract boolean c();

    public final void d() {
        synchronized (this) {
            this.f11791a = null;
        }
    }

    public final void e() {
        d();
        synchronized (this.f11793c.zzt) {
            this.f11793c.zzt.remove(this);
        }
    }
}
