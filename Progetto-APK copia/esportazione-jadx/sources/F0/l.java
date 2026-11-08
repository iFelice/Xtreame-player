package F0;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import p094m0.C3136t;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class l extends m {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f3063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final j f3064i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final t f3065j;

    public l(long j8, C3136t c3136t, H h8, r rVar, ArrayList arrayList, List list, List list2) {
        super(c3136t, h8, rVar, arrayList, list, list2);
        Uri.parse(((b) h8.get(0)).f3010a);
        long j9 = rVar.f3086e;
        j jVar = j9 <= 0 ? null : new j(rVar.f3085d, j9, null);
        this.f3064i = jVar;
        this.f3063h = null;
        this.f3065j = jVar == null ? new t(new j(0L, -1L, null)) : null;
    }

    @Override // F0.m
    public final String k() {
        return this.f3063h;
    }

    @Override // F0.m
    public final E0.k l() {
        return this.f3065j;
    }

    @Override // F0.m
    public final j m() {
        return this.f3064i;
    }
}
