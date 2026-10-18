package F3;

import D3.C0159c;
import com.google.android.gms.internal.cast.C2452h1;
import com.google.android.gms.internal.cast.P1;
import com.google.android.gms.internal.cast.S0;
import com.google.android.gms.internal.cast.Z2;

/* JADX INFO: loaded from: classes.dex */
public final class k extends E3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3222b;

    public k(l lVar) {
        this.f3221a = 0;
        this.f3222b = lVar;
    }

    @Override // E3.h
    public final void a(String str, long j8, int i8, long j9, long j10) {
        switch (this.f3221a) {
            case 2:
                P1 p7 = ((C0159c) this.f3222b).f2378l;
                if (p7 != null) {
                    Z2 z2D = p7.f22515G.d();
                    S0 s7 = new S0(str);
                    s7.f22536b = j8;
                    s7.f22537c = i8;
                    s7.f22538d = j9;
                    s7.f22539e = j10;
                    C2452h1 c2452h1 = new C2452h1(s7);
                    c2452h1.f22743f = z2D.f22607h;
                    z2D.f22603d.add(c2452h1);
                }
                break;
        }
    }

    public k(Object obj, int i8) {
        this.f3221a = i8;
        this.f3222b = obj;
    }
}
