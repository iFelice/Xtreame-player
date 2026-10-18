package p118p1;

import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C2218x;
import p096m2.c;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f28172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f28173c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f28174d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f28175e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f28176f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f28177g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f28178h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f28179i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f28180j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f28181k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Object f28182l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Object f28183m;

    public j(int i8) {
        if (i8 == 1) {
            this.f28179i = new f(1);
            this.f28183m = new C2218x(4);
        } else {
            this.f28179i = new f(0);
            this.f28183m = new c(6, 0);
        }
    }

    public void a(long j8) {
        this.f28173c = j8;
    }

    public abstract long b(E e8);

    public abstract boolean c(E e8, long j8, c cVar);

    public void d(boolean z7) {
        if (z7) {
            this.f28183m = new c(6, 0);
            this.f28172b = 0L;
            this.f28174d = 0;
        } else {
            this.f28174d = 1;
        }
        this.f28171a = -1L;
        this.f28173c = 0L;
    }

    public abstract long e(C1534jr c1534jr);

    public void f(boolean z7) {
        int i8;
        if (z7) {
            this.f28183m = new C2218x(4);
            this.f28172b = 0L;
            i8 = 0;
        } else {
            i8 = 1;
        }
        this.f28174d = i8;
        this.f28171a = -1L;
        this.f28173c = 0L;
    }

    public abstract boolean g(C1534jr c1534jr, long j8, C2218x c2218x);

    public void h(long j8) {
        this.f28173c = j8;
    }
}
