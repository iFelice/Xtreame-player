package p111o1;

import E3.f;
import com.google.android.gms.internal.ads.C0800Ka;
import com.google.android.gms.internal.ads.C1534jr;
import p039f.AbstractC2987b;
import p094m0.P;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f27678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f27679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f27682g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f27683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f27684i;

    public b(C1534jr c1534jr, C1534jr c1534jr2, boolean z7) throws C0800Ka {
        this.f27684i = c1534jr;
        this.f27683h = c1534jr2;
        this.f27680e = z7;
        c1534jr2.j(12);
        this.f27676a = c1534jr2.z();
        c1534jr.j(12);
        this.f27682g = c1534jr.z();
        AbstractC2987b.t0("first_chunk must be 1", c1534jr.r() == 1);
        this.f27677b = -1;
    }

    public final boolean a() {
        int i8 = this.f27677b + 1;
        this.f27677b = i8;
        if (i8 == this.f27676a) {
            return false;
        }
        boolean z7 = this.f27680e;
        Object obj = this.f27683h;
        this.f27679d = z7 ? ((E) obj).E() : ((E) obj).B();
        if (this.f27677b == this.f27681f) {
            Object obj2 = this.f27684i;
            this.f27678c = ((E) obj2).D();
            ((E) obj2).M(4);
            int i9 = this.f27682g - 1;
            this.f27682g = i9;
            this.f27681f = i9 > 0 ? ((E) obj2).D() - 1 : -1;
        }
        return true;
    }

    public final boolean b() {
        int i8 = this.f27677b + 1;
        this.f27677b = i8;
        if (i8 == this.f27676a) {
            return false;
        }
        boolean z7 = this.f27680e;
        Object obj = this.f27683h;
        this.f27679d = z7 ? ((C1534jr) obj).F() : ((C1534jr) obj).E();
        if (this.f27677b == this.f27681f) {
            Object obj2 = this.f27684i;
            this.f27678c = ((C1534jr) obj2).z();
            ((C1534jr) obj2).k(4);
            int i9 = this.f27682g - 1;
            this.f27682g = i9;
            this.f27681f = i9 > 0 ? (-1) + ((C1534jr) obj2).z() : -1;
        }
        return true;
    }

    public b(E e8, E e9, boolean z7) throws P {
        this.f27684i = e8;
        this.f27683h = e9;
        this.f27680e = z7;
        e9.L(12);
        this.f27676a = e9.D();
        e8.L(12);
        this.f27682g = e8.D();
        f.c("first_chunk must be 1", e8.l() == 1);
        this.f27677b = -1;
    }
}
