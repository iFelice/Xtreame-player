package S0;

import java.util.Arrays;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6325d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6322a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6323b = 65536;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6326e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a[] f6327f = new a[100];

    public final synchronized void a(int i8) {
        boolean z7 = i8 < this.f6324c;
        this.f6324c = i8;
        if (z7) {
            b();
        }
    }

    public final synchronized void b() {
        int iMax = Math.max(0, M.f(this.f6324c, this.f6323b) - this.f6325d);
        int i8 = this.f6326e;
        if (iMax >= i8) {
            return;
        }
        Arrays.fill(this.f6327f, iMax, i8, (Object) null);
        this.f6326e = iMax;
    }
}
