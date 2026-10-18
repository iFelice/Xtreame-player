package A1;

import W0.L;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f478c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p117p0.D f481f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f482g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f483h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f484i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f485j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f487l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f491p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f492q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f493r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f494s;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseArray f479d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SparseArray f480e = new SparseArray();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public p f488m = new p();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public p f489n = new p();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f486k = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f490o = false;

    public q(L l4, boolean z7, boolean z8) {
        this.f476a = l4;
        this.f477b = z7;
        this.f478c = z8;
        byte[] bArr = new byte[128];
        this.f482g = bArr;
        this.f481f = new p117p0.D(bArr, 0, 0);
        p pVar = this.f489n;
        pVar.f461b = false;
        pVar.f460a = false;
    }
}
