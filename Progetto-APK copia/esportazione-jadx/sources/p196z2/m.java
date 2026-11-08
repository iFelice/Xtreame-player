package p196z2;

import P2.o;
import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public final class m implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f31783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bitmap.Config f31785c;

    public m(c cVar) {
        this.f31783a = cVar;
    }

    @Override // p196z2.k
    public final void a() {
        this.f31783a.k(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f31784b == mVar.f31784b && o.b(this.f31785c, mVar.f31785c);
    }

    public final int hashCode() {
        int i8 = this.f31784b * 31;
        Bitmap.Config config = this.f31785c;
        return i8 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return n.d(this.f31784b, this.f31785c);
    }
}
