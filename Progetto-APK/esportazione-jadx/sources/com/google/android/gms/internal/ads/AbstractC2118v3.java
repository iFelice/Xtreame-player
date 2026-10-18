package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.v3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2118v3 implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final A3 f21429G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f21430H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f21431I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f21432J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f21433K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final InterfaceC2170w3 f21434L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Integer f21435M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public p135r2.l f21436N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f21437O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public p135r2.b f21438P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public C2246xc f21439Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final N.r f21440R;

    public AbstractC2118v3(int i8, String str, InterfaceC2170w3 interfaceC2170w3) {
        Uri uri;
        String host;
        this.f21429G = A3.f11959c ? new A3() : null;
        this.f21433K = new Object();
        int iHashCode = 0;
        this.f21437O = false;
        this.f21438P = null;
        this.f21430H = i8;
        this.f21431I = str;
        this.f21434L = interfaceC2170w3;
        this.f21440R = new N.r(6);
        if (!TextUtils.isEmpty(str) && (uri = Uri.parse(str)) != null && (host = uri.getHost()) != null) {
            iHashCode = host.hashCode();
        }
        this.f21432J = iHashCode;
    }

    public abstract C2222x3 a(C2066u3 c2066u3);

    public final String b() {
        int i8 = this.f21430H;
        String str = this.f21431I;
        return i8 != 0 ? com.google.protobuf.U2.l(Integer.toString(1), "-", str) : str;
    }

    public Map c() {
        return Collections.emptyMap();
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f21435M.intValue() - ((AbstractC2118v3) obj).f21435M.intValue();
    }

    public final void d(String str) {
        if (A3.f11959c) {
            this.f21429G.a(Thread.currentThread().getId(), str);
        }
    }

    public abstract void e(Object obj);

    public final void f(String str) {
        p135r2.l lVar = this.f21436N;
        if (lVar != null) {
            synchronized (((Set) lVar.f29827b)) {
                ((Set) lVar.f29827b).remove(this);
            }
            synchronized (((List) lVar.f29830e)) {
                Iterator it = ((List) lVar.f29830e).iterator();
                if (it.hasNext()) {
                    A0.O.I(it.next());
                    throw null;
                }
            }
            lVar.d();
        }
        if (A3.f11959c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC2114v(this, str, id));
            } else {
                this.f21429G.a(id, str);
                this.f21429G.b(toString());
            }
        }
    }

    public final void g() {
        C2246xc c2246xc;
        synchronized (this.f21433K) {
            c2246xc = this.f21439Q;
        }
        if (c2246xc != null) {
            c2246xc.j(this);
        }
    }

    public final void h(C2222x3 c2222x3) {
        C2246xc c2246xc;
        synchronized (this.f21433K) {
            c2246xc = this.f21439Q;
        }
        if (c2246xc != null) {
            c2246xc.o(this, c2222x3);
        }
    }

    public final void i(int i8) {
        p135r2.l lVar = this.f21436N;
        if (lVar != null) {
            lVar.d();
        }
    }

    public final void j(C2246xc c2246xc) {
        synchronized (this.f21433K) {
            this.f21439Q = c2246xc;
        }
    }

    public final boolean k() {
        boolean z7;
        synchronized (this.f21433K) {
            z7 = this.f21437O;
        }
        return z7;
    }

    public final void l() {
        synchronized (this.f21433K) {
        }
    }

    public byte[] m() {
        return null;
    }

    public final String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.f21432J));
        l();
        return "[ ] " + this.f21431I + " " + "0x".concat(strValueOf) + " NORMAL " + this.f21435M;
    }
}
