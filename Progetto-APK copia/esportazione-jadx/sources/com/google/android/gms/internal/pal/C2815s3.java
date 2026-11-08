package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import p079k.AbstractC3012d;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.s3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2815s3 implements InterfaceC2831u3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f23997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f23998b;

    public /* synthetic */ C2815s3(M3 m7, int i8) {
        this.f23997a = i8;
        this.f23998b = m7;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final C2767m2 zza(Class cls) throws GeneralSecurityException {
        int i8 = this.f23997a;
        Object obj = this.f23998b;
        switch (i8) {
            case 0:
                C2767m2 c2767m2 = (C2767m2) obj;
                if (((Class) c2767m2.f23962I).equals(cls)) {
                    return c2767m2;
                }
                throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
            default:
                try {
                    return new C2767m2((AbstractC3012d) obj, cls);
                } catch (IllegalArgumentException e8) {
                    throw new GeneralSecurityException("Primitive type not supported", e8);
                }
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final C2767m2 zzb() {
        int i8 = this.f23997a;
        Object obj = this.f23998b;
        switch (i8) {
            case 0:
                return (C2767m2) obj;
            default:
                AbstractC3012d abstractC3012d = (AbstractC3012d) obj;
                return new C2767m2(abstractC3012d, (Class) abstractC3012d.f25767c);
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final Class zzc() {
        int i8 = this.f23997a;
        Object obj = this.f23998b;
        switch (i8) {
            case 0:
                return ((C2767m2) obj).getClass();
            default:
                return ((AbstractC3012d) obj).getClass();
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final Class zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2831u3
    public final Set zze() {
        int i8 = this.f23997a;
        Object obj = this.f23998b;
        switch (i8) {
            case 0:
                return Collections.singleton((Class) ((C2767m2) obj).f23962I);
            default:
                return ((Map) ((AbstractC3012d) obj).f25766b).keySet();
        }
    }
}
