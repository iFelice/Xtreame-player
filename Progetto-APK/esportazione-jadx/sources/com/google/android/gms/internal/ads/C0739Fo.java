package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0739Fo implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f13415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f13416b;

    public C0739Fo(C0784Io c0784Io, C0687Ch c0687Ch) {
        this.f13415a = c0784Io;
        this.f13416b = c0687Ch;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0724Eo zzb() {
        C1936re c1936re = AbstractC1988se.f20907b;
        Cw.N0(c1936re);
        C1936re c1936re2 = AbstractC1988se.f20906a;
        Cw.N0(c1936re2);
        Context context = (Context) ((C0784Io) this.f13415a).f14049a.zzb();
        Cw.N0(c1936re2);
        return new C0724Eo(c1936re, c1936re2, new Qo(context, c1936re2), HJ.a(Cw.B(this.f13416b)));
    }
}
