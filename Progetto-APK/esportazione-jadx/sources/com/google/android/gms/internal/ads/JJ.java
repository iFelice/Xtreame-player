package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class JJ implements IJ, EJ {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JJ f14138b = new JJ(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f14139a;

    public JJ(Object obj) {
        this.f14139a = obj;
    }

    public static JJ a(Object obj) {
        Cw.b0(obj, "instance cannot be null");
        return new JJ(obj);
    }

    public static JJ b(Object obj) {
        return obj == null ? f14138b : new JJ(obj);
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return this.f14139a;
    }
}
