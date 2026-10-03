package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2266xw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p004a3.b f21951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Xu f21952b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Aw f21954d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21955e = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f21953c = new ArrayDeque();

    public C2266xw(p004a3.b bVar, C1591kw c1591kw, Xu xu) {
        this.f21951a = bVar;
        this.f21952b = xu;
        c1591kw.f19672a = new Xu(this, 9);
    }

    public final synchronized void a(C1486iv c1486iv) {
        this.f21953c.add(c1486iv);
    }

    public final synchronized void b() {
        InterfaceC1954rw interfaceC1954rw;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15674M5)).booleanValue() && !p083k3.l.f25980A.f25987g.d().y().f18949j) {
            this.f21953c.clear();
            return;
        }
        if (c()) {
            while (!this.f21953c.isEmpty()) {
                C1486iv c1486iv = (C1486iv) this.f21953c.pollFirst();
                if (c1486iv == null || ((interfaceC1954rw = c1486iv.f19386g) != null && this.f21951a.w(interfaceC1954rw))) {
                    Aw aw = new Aw(this.f21951a, this.f21952b, c1486iv);
                    this.f21954d = aw;
                    aw.b(new C0871Om(this, c1486iv, 14));
                    return;
                }
            }
        }
    }

    public final synchronized boolean c() {
        return this.f21954d == null;
    }
}
