package com.google.android.gms.internal.cast;

import D3.C0163g;
import android.content.Context;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class N {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final H3.b f22494i = new H3.b("ClientCastAnalytics", null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final boolean f22495j = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0163g f22496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2497t f22497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BinderC2430c f22498c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f22500e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p109o.j f22502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f22503h = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f22499d = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ExecutorService f22501f = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    public N(Context context, H3.t tVar, C0163g c0163g, C2497t c2497t, BinderC2430c binderC2430c) {
        this.f22496a = c0163g;
        this.f22497b = c2497t;
        this.f22498c = binderC2430c;
    }

    public final void a(C2494s0 c2494s0, int i8) {
        this.f22501f.execute(new p000a.g(this, c2494s0, i8, 8));
    }
}
