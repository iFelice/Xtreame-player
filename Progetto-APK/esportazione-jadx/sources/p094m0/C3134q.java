package p094m0;

import android.util.SparseBooleanArray;
import com.google.android.gms.internal.ads.C1751o;
import com.google.android.gms.internal.measurement.H1;
import p113o3.r;

/* JADX INFO: renamed from: m0.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3134q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f26965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f26966b;

    public C3134q(int i8) {
        if (i8 != 1) {
            this.f26965a = new SparseBooleanArray();
        } else {
            this.f26965a = new SparseBooleanArray();
        }
    }

    public final void a(int i8) {
        H1.i(!this.f26966b);
        this.f26965a.append(i8, true);
    }

    public final r b() {
        H1.i(!this.f26966b);
        this.f26966b = true;
        return new r(this.f26965a);
    }

    public final void c(int i8) {
        r.M(!this.f26966b);
        this.f26965a.append(i8, true);
    }

    public final C1751o d() {
        r.M(!this.f26966b);
        this.f26966b = true;
        return new C1751o(this.f26965a);
    }
}
