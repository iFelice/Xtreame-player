package p196z2;

import android.graphics.Bitmap;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes.dex */
public final class b implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f31753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bitmap.Config f31756d;

    public b(c cVar) {
        this.f31753a = cVar;
    }

    @Override // p196z2.k
    public final void a() {
        this.f31753a.k(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f31754b == bVar.f31754b && this.f31755c == bVar.f31755c && this.f31756d == bVar.f31756d;
    }

    public final int hashCode() {
        int i8 = ((this.f31754b * 31) + this.f31755c) * 31;
        Bitmap.Config config = this.f31756d;
        return i8 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return x0.m(this.f31754b, this.f31755c, this.f31756d);
    }
}
