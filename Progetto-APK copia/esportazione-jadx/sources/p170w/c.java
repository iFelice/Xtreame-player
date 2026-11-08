package p170w;

import Q3.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p148t.a;
import p156u.h;
import p156u.i;
import p178x.o;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f30786d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f30787e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c f30788f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public i f30791i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashSet f30783a = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f30789g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30790h = Integer.MIN_VALUE;

    public c(d dVar, int i8) {
        this.f30786d = dVar;
        this.f30787e = i8;
    }

    public final void a(c cVar, int i8, int i9) {
        if (cVar == null) {
            g();
            return;
        }
        this.f30788f = cVar;
        if (cVar.f30783a == null) {
            cVar.f30783a = new HashSet();
        }
        HashSet hashSet = this.f30788f.f30783a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f30789g = i8;
        this.f30790h = i9;
    }

    public final void b(int i8, o oVar, ArrayList arrayList) {
        HashSet hashSet = this.f30783a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                b.g(((c) it.next()).f30786d, i8, arrayList, oVar);
            }
        }
    }

    public final int c() {
        if (this.f30785c) {
            return this.f30784b;
        }
        return 0;
    }

    public final int d() {
        c cVar;
        if (this.f30786d.f30829f0 == 8) {
            return 0;
        }
        int i8 = this.f30790h;
        return (i8 == Integer.MIN_VALUE || (cVar = this.f30788f) == null || cVar.f30786d.f30829f0 != 8) ? this.f30789g : i8;
    }

    public final boolean e() {
        c cVar;
        HashSet<c> hashSet = this.f30783a;
        if (hashSet == null) {
            return false;
        }
        for (c cVar2 : hashSet) {
            int i8 = cVar2.f30787e;
            int iB = h.b(i8);
            d dVar = cVar2.f30786d;
            switch (iB) {
                case 0:
                case 5:
                case 6:
                case 7:
                case 8:
                    cVar = null;
                    break;
                case 1:
                    cVar = dVar.f30801J;
                    break;
                case 2:
                    cVar = dVar.f30802K;
                    break;
                case 3:
                    cVar = dVar.f30799H;
                    break;
                case 4:
                    cVar = dVar.f30800I;
                    break;
                default:
                    throw new AssertionError(a.j(i8));
            }
            if (cVar.f()) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return this.f30788f != null;
    }

    public final void g() {
        HashSet hashSet;
        c cVar = this.f30788f;
        if (cVar != null && (hashSet = cVar.f30783a) != null) {
            hashSet.remove(this);
            if (this.f30788f.f30783a.size() == 0) {
                this.f30788f.f30783a = null;
            }
        }
        this.f30783a = null;
        this.f30788f = null;
        this.f30789g = 0;
        this.f30790h = Integer.MIN_VALUE;
        this.f30785c = false;
        this.f30784b = 0;
    }

    public final void h() {
        i iVar = this.f30791i;
        if (iVar == null) {
            this.f30791i = new i(1);
        } else {
            iVar.c();
        }
    }

    public final void i(int i8) {
        this.f30784b = i8;
        this.f30785c = true;
    }

    public final String toString() {
        return this.f30786d.f30831g0 + ":" + a.j(this.f30787e);
    }
}
