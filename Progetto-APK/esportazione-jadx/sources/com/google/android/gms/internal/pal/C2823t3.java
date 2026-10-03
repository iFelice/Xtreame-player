package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.Set;
import p079k.AbstractC3012d;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.t3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2823t3 implements InterfaceC2831u3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ P1.e f24012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC3012d f24013b;

    public C2823t3(P1.e eVar, M3 m7) {
        this.f24012a = eVar;
        this.f24013b = m7;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final C2767m2 zza(Class cls) throws GeneralSecurityException {
        try {
            return new E3(this.f24012a, cls);
        } catch (IllegalArgumentException e8) {
            throw new GeneralSecurityException("Primitive type not supported", e8);
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final C2767m2 zzb() {
        P1.e eVar = this.f24012a;
        return new E3(eVar, (Class) eVar.f25767c);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final Class zzc() {
        return this.f24012a.getClass();
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final Class zzd() {
        return this.f24013b.getClass();
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final Set zze() {
        return ((Map) this.f24012a.f25766b).keySet();
    }
}
