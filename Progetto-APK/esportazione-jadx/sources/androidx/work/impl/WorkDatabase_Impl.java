package androidx.work.impl;

import K.k;
import P1.y;
import T1.d;
import T1.f;
import android.content.Context;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p034e2.w;
import p096m2.b;
import p096m2.c;
import p096m2.e;
import p096m2.i;
import p096m2.l;
import p096m2.n;
import p096m2.o;
import p096m2.s;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile s f9779l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile c f9780m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile u f9781n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile i f9782o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile l f9783p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile o f9784q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile e f9785r;

    @Override // P1.x
    public final P1.l d() {
        return new P1.l(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // P1.x
    public final f e(P1.c cVar) {
        y yVar = new y(cVar, new k(this));
        Context context = cVar.f5776a;
        q0.h(context, "context");
        return cVar.f5778c.u(new d(context, cVar.f5777b, yVar, false, false));
    }

    @Override // P1.x
    public final List f(LinkedHashMap linkedHashMap) {
        return Arrays.asList(new w(13, 14), new p034e2.o());
    }

    @Override // P1.x
    public final Set h() {
        return new HashSet();
    }

    @Override // P1.x
    public final Map i() {
        HashMap map = new HashMap();
        map.put(s.class, Collections.emptyList());
        map.put(c.class, Collections.emptyList());
        map.put(u.class, Collections.emptyList());
        map.put(i.class, Collections.emptyList());
        map.put(l.class, Collections.emptyList());
        map.put(o.class, Collections.emptyList());
        map.put(e.class, Collections.emptyList());
        map.put(p096m2.f.class, Collections.emptyList());
        return map;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final c p() {
        c cVar;
        if (this.f9780m != null) {
            return this.f9780m;
        }
        synchronized (this) {
            try {
                if (this.f9780m == null) {
                    this.f9780m = new c(this, 0);
                }
                cVar = this.f9780m;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final e q() {
        e eVar;
        if (this.f9785r != null) {
            return this.f9785r;
        }
        synchronized (this) {
            try {
                if (this.f9785r == null) {
                    this.f9785r = new e((WorkDatabase) this);
                }
                eVar = this.f9785r;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final i r() {
        i iVar;
        if (this.f9782o != null) {
            return this.f9782o;
        }
        synchronized (this) {
            try {
                if (this.f9782o == null) {
                    this.f9782o = new i(this);
                }
                iVar = this.f9782o;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final l s() {
        l lVar;
        if (this.f9783p != null) {
            return this.f9783p;
        }
        synchronized (this) {
            try {
                if (this.f9783p == null) {
                    this.f9783p = new l(this);
                }
                lVar = this.f9783p;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final o t() {
        o oVar;
        if (this.f9784q != null) {
            return this.f9784q;
        }
        synchronized (this) {
            try {
                if (this.f9784q == null) {
                    o oVar2 = new o();
                    oVar2.f27236G = this;
                    oVar2.f27237H = new b(oVar2, this, 4);
                    oVar2.f27238I = new n(this, 0);
                    oVar2.f27239J = new n(this, 1);
                    this.f9784q = oVar2;
                }
                oVar = this.f9784q;
            } catch (Throwable th) {
                throw th;
            }
        }
        return oVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final s u() {
        s sVar;
        if (this.f9779l != null) {
            return this.f9779l;
        }
        synchronized (this) {
            try {
                if (this.f9779l == null) {
                    this.f9779l = new s(this);
                }
                sVar = this.f9779l;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final u v() {
        u uVar;
        if (this.f9781n != null) {
            return this.f9781n;
        }
        synchronized (this) {
            try {
                if (this.f9781n == null) {
                    this.f9781n = new u(this);
                }
                uVar = this.f9781n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return uVar;
    }
}
