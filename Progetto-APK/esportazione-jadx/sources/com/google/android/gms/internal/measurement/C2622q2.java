package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2622q2 implements O2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2622q2 f23244a = new C2622q2();

    public static void a(Object obj) {
        C2535b3 c2535b3 = ((AbstractC2631s2) obj).zzc;
        if (c2535b3.f23104e) {
            c2535b3.f23104e = false;
        }
    }

    @Override // com.google.android.gms.internal.measurement.O2
    public N2 zzb(Class cls) {
        if (!AbstractC2631s2.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (N2) AbstractC2631s2.h(cls.asSubclass(AbstractC2631s2.class)).p(3);
        } catch (Exception e8) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e8);
        }
    }

    @Override // com.google.android.gms.internal.measurement.O2
    public boolean zzc(Class cls) {
        return AbstractC2631s2.class.isAssignableFrom(cls);
    }
}
