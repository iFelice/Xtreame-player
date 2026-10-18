package com.google.android.gms.internal.cast;

import D3.AbstractC0162f;
import D3.AbstractC0165i;
import D3.InterfaceC0164h;
import android.util.Log;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements p052g4.f, p052g4.e, InterfaceC0164h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C2497t f22787G;

    public /* synthetic */ r(C2497t c2497t) {
        this.f22787G = c2497t;
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void b(AbstractC0162f abstractC0162f) {
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void e(AbstractC0162f abstractC0162f, boolean z7) {
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void f(AbstractC0162f abstractC0162f, int i8) {
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void g(AbstractC0162f abstractC0162f, int i8) {
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void h(AbstractC0162f abstractC0162f, String str) {
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void j(AbstractC0162f abstractC0162f, int i8) {
    }

    @Override // D3.InterfaceC0164h
    public final void l(AbstractC0162f abstractC0162f, String str) {
        C3.k kVar;
        int i8 = 1;
        H3.b bVar = C2497t.f22791i;
        C2497t c2497t = this.f22787G;
        bVar.b("onSessionStarted with transferType = %d", Integer.valueOf(c2497t.f22796e));
        if (c2497t.f22792a.f2365T && c2497t.f22796e == 2) {
            if (c2497t.f22799h == null) {
                bVar.b("skip restoring session state due to null SessionState", new Object[0]);
            } else {
                E3.j jVarA = c2497t.a();
                if (jVarA == null) {
                    bVar.b("skip restoring session state due to null RemoteMediaClient", new Object[0]);
                } else {
                    bVar.b("resume SessionState to current session", new Object[0]);
                    C3.s sVar = c2497t.f22799h;
                    if (sVar != null && (kVar = sVar.f1594G) != null) {
                        E3.j.f2901k.b("resume SessionState", new Object[0]);
                        com.bumptech.glide.c.d("Must be called from the main thread.");
                        if (jVarA.t()) {
                            E3.j.u(new E3.m(jVarA, kVar, i8));
                        } else {
                            E3.j.q();
                        }
                    }
                }
            }
        }
        c2497t.c();
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void o(AbstractC0162f abstractC0162f) {
    }

    @Override // p052g4.e
    public final void onFailure(Exception exc) {
        C2497t c2497t = this.f22787G;
        c2497t.getClass();
        H3.b bVar = C2497t.f22791i;
        Log.w(bVar.f3679a, bVar.c("Fail to store SessionState", new Object[0]), exc);
        c2497t.b(100);
    }

    @Override // p052g4.f
    public final void onSuccess(Object obj) {
        C2497t c2497t = this.f22787G;
        c2497t.f22799h = (C3.s) obj;
        p148t.i iVar = c2497t.f22798g;
        if (iVar != null) {
            iVar.a(null);
        }
    }

    @Override // D3.InterfaceC0164h
    public final void q(AbstractC0162f abstractC0162f, int i8) {
        H3.b bVar = C2497t.f22791i;
        bVar.b("onSessionEnded with error = %d", Integer.valueOf(i8));
        C2497t c2497t = this.f22787G;
        int i9 = c2497t.f22796e;
        if (i9 == 0) {
            bVar.b("No need to notify transferred if the transfer type is unknown", new Object[0]);
        } else if (c2497t.f22799h != null) {
            bVar.b("notify transferred with type = %d, sessionState = %s", Integer.valueOf(i9), c2497t.f22799h);
            for (AbstractC0165i abstractC0165i : new HashSet(c2497t.f22793b)) {
                int i10 = c2497t.f22796e;
                Y y7 = (Y) abstractC0165i;
                switch (y7.f22561a) {
                    case 0:
                        C2423a0.f22616j.b("onTransferred with type = %d", Integer.valueOf(i10));
                        C2423a0 c2423a0 = (C2423a0) y7.f22562b;
                        c2423a0.c();
                        C2490r0 c2490r0B = c2423a0.f22619c.b(c2423a0.f22623g);
                        C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
                        c2471m0M.d();
                        C2475n0.v((C2475n0) c2471m0M.f22745H, i10);
                        c2490r0B.f((C2475n0) c2471m0M.b());
                        c2423a0.f22617a.a((C2494s0) c2490r0B.b(), 231);
                        c2423a0.f22625i = false;
                        c2423a0.f22623g = null;
                        break;
                }
            }
        } else {
            bVar.b("No need to notify with null sessionState", new Object[0]);
        }
        if (c2497t.f22796e == 2) {
            return;
        }
        c2497t.c();
    }

    public /* synthetic */ r(C2497t c2497t, int i8) {
        this.f22787G = c2497t;
    }
}
