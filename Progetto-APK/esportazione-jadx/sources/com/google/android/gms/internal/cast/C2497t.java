package com.google.android.gms.internal.cast;

import D3.AbstractC0162f;
import D3.AbstractC0165i;
import D3.C0158b;
import D3.C0159c;
import D3.C0163g;
import android.os.Looper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2497t {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final H3.b f22791i = new H3.b("SessionTransController", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0158b f22792a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0163g f22797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p148t.i f22798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C3.s f22799h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f22793b = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f22796e = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final X3.d f22794c = new X3.d(Looper.getMainLooper(), 1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RunnableC2493s f22795d = new RunnableC2493s(this, 0);

    public C2497t(C0158b c0158b) {
        this.f22792a = c0158b;
    }

    public final E3.j a() {
        C0163g c0163g = this.f22797f;
        H3.b bVar = f22791i;
        if (c0163g == null) {
            bVar.b("skip transferring as SessionManager is null", new Object[0]);
            return null;
        }
        com.bumptech.glide.c.d("Must be called from the main thread.");
        AbstractC0162f abstractC0162fC = c0163g.c();
        C0159c c0159c = (abstractC0162fC == null || !(abstractC0162fC instanceof C0159c)) ? null : (C0159c) abstractC0162fC;
        if (c0159c == null) {
            bVar.b("skip transferring as CastSession is null", new Object[0]);
            return null;
        }
        com.bumptech.glide.c.d("Must be called from the main thread.");
        return c0159c.f2376j;
    }

    public final void b(int i8) {
        p148t.i iVar = this.f22798g;
        if (iVar != null) {
            iVar.f30162d = true;
            p148t.l lVar = iVar.f30160b;
            if (lVar != null && lVar.f30165H.cancel(true)) {
                iVar.f30159a = null;
                iVar.f30160b = null;
                iVar.f30161c = null;
            }
        }
        f22791i.b("notify failed transfer with type = %d, reason = %d", Integer.valueOf(this.f22796e), Integer.valueOf(i8));
        for (AbstractC0165i abstractC0165i : new HashSet(this.f22793b)) {
            int i9 = this.f22796e;
            Y y7 = (Y) abstractC0165i;
            int i10 = y7.f22561a;
            Object obj = y7.f22562b;
            switch (i10) {
                case 0:
                    C2423a0.f22616j.b("onTransferFailed with type = %d and reason = %d", Integer.valueOf(i9), Integer.valueOf(i8));
                    C2423a0 c2423a0 = (C2423a0) obj;
                    c2423a0.c();
                    C2490r0 c2490r0B = c2423a0.f22619c.b(c2423a0.f22623g);
                    C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
                    c2471m0M.d();
                    C2475n0.v((C2475n0) c2471m0M.f22745H, i9);
                    c2471m0M.d();
                    C2475n0.w((C2475n0) c2471m0M.f22745H, i8);
                    c2490r0B.f((C2475n0) c2471m0M.b());
                    c2423a0.f22617a.a((C2494s0) c2490r0B.b(), 232);
                    c2423a0.f22625i = false;
                    break;
                default:
                    F.d dVar = new F.d(11, 0);
                    dVar.f2962I = Integer.valueOf(i8);
                    p109o.j jVar = (p109o.j) obj;
                    dVar.f2963J = Boolean.valueOf(((BinderC2430c) jVar.f27593H).f22658I == 2);
                    p109o.j.c(jVar, new a3(dVar));
                    break;
            }
        }
        c();
    }

    public final void c() {
        X3.d dVar = this.f22794c;
        com.bumptech.glide.c.h(dVar);
        RunnableC2493s runnableC2493s = this.f22795d;
        com.bumptech.glide.c.h(runnableC2493s);
        dVar.removeCallbacks(runnableC2493s);
        this.f22796e = 0;
        this.f22799h = null;
    }
}
