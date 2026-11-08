package F0;

import com.google.android.gms.internal.measurement.H1;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p094m0.C3136t;
import p117p0.M;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C3136t f3066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final H f3067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f3069d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f3070e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f3071f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final j f3072g;

    public m(C3136t c3136t, H h8, s sVar, ArrayList arrayList, List list, List list2) {
        H1.d(!h8.isEmpty());
        this.f3066a = c3136t;
        this.f3067b = H.s(h8);
        this.f3069d = Collections.unmodifiableList(arrayList);
        this.f3070e = list;
        this.f3071f = list2;
        this.f3072g = sVar.a(this);
        String str = M.f28050a;
        this.f3068c = M.Z(sVar.f3089c, 1000000L, sVar.f3088b, RoundingMode.DOWN);
    }

    public abstract String k();

    public abstract E0.k l();

    public abstract j m();
}
