package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ix, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1488ix {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f19390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f19391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p120p3.k f19392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uw f19393d;

    public C1488ix(Context context, C1936re c1936re, p120p3.k kVar, Uw uw) {
        this.f19390a = context;
        this.f19391b = c1936re;
        this.f19392c = kVar;
        this.f19393d = uw;
    }

    public final void a(String str, Tw tw) {
        boolean zA = Uw.a();
        Executor executor = this.f19391b;
        if (zA && ((Boolean) AbstractC1656m8.f19914d.l()).booleanValue()) {
            executor.execute(new K.a(this, str, tw, 23, 0));
        } else {
            executor.execute(new RunnableC1170co(12, this, str));
        }
    }

    public final void b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((String) it.next(), null);
        }
    }
}
