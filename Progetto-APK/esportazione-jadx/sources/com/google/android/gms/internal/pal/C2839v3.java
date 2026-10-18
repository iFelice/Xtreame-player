package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import p079k.AbstractC3012d;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2839v3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f24046b = Logger.getLogger(C2839v3.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f24047a;

    public C2839v3() {
        this.f24047a = new ConcurrentHashMap();
    }

    public final C2767m2 a(Class cls, String str) {
        InterfaceC2831u3 interfaceC2831u3D = d(str);
        if (interfaceC2831u3D.zze().contains(cls)) {
            return interfaceC2831u3D.zza(cls);
        }
        String name = cls.getName();
        String strValueOf = String.valueOf(interfaceC2831u3D.zzc());
        Set<Class> setZze = interfaceC2831u3D.zze();
        StringBuilder sb = new StringBuilder();
        boolean z7 = true;
        for (Class cls2 : setZze) {
            if (!z7) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z7 = false;
        }
        String string = sb.toString();
        StringBuilder sbQ = com.google.protobuf.U2.q("Primitive type ", name, " not supported by key manager of type ", strValueOf, ", supported primitives: ");
        sbQ.append(string);
        throw new GeneralSecurityException(sbQ.toString());
    }

    public final synchronized void b(P1.e eVar, M3 m7) {
        Class clsZzd;
        try {
            int iT = m7.t();
            int i8 = 1;
            if (!AbstractC2864y4.y(1)) {
                throw new GeneralSecurityException("failed to register key manager " + String.valueOf(eVar.getClass()) + " as it is not FIPS compatible.");
            }
            if (!AbstractC2864y4.y(iT)) {
                throw new GeneralSecurityException("failed to register key manager " + String.valueOf(M3.class) + " as it is not FIPS compatible.");
            }
            String strQ = eVar.q();
            String strQ2 = m7.q();
            if (this.f24047a.containsKey(strQ) && ((InterfaceC2831u3) this.f24047a.get(strQ)).zzd() != null && (clsZzd = ((InterfaceC2831u3) this.f24047a.get(strQ)).zzd()) != null && !clsZzd.getName().equals(M3.class.getName())) {
                f24046b.logp(Level.WARNING, "com.google.crypto.tink.KeyManagerRegistry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type " + strQ + " with inconsistent public key type " + strQ2);
                throw new GeneralSecurityException("public key manager corresponding to " + eVar.getClass().getName() + " is already registered with " + clsZzd.getName() + ", cannot be re-registered with " + M3.class.getName());
            }
            e(new C2823t3(eVar, m7), true);
            e(new C2815s3(m7, i8), false);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(M3 m7) {
        if (!AbstractC2864y4.y(m7.t())) {
            throw new GeneralSecurityException("failed to register key manager " + String.valueOf(M3.class) + " as it is not FIPS compatible.");
        }
        e(new C2815s3(m7, 1), false);
    }

    public final synchronized InterfaceC2831u3 d(String str) {
        if (!this.f24047a.containsKey(str)) {
            throw new GeneralSecurityException("No key manager found for key type ".concat(String.valueOf(str)));
        }
        return (InterfaceC2831u3) this.f24047a.get(str);
    }

    public final synchronized void e(InterfaceC2831u3 interfaceC2831u3, boolean z7) {
        try {
            String strQ = ((AbstractC3012d) interfaceC2831u3.zzb().f23961H).q();
            InterfaceC2831u3 interfaceC2831u4 = (InterfaceC2831u3) this.f24047a.get(strQ);
            if (interfaceC2831u4 != null && !interfaceC2831u4.zzc().equals(interfaceC2831u3.zzc())) {
                f24046b.logp(Level.WARNING, "com.google.crypto.tink.KeyManagerRegistry", "registerKeyManagerContainer", "Attempted overwrite of a registered key manager for key type ".concat(strQ));
                throw new GeneralSecurityException("typeUrl (" + strQ + ") is already registered with " + interfaceC2831u4.zzc().getName() + ", cannot be re-registered with " + interfaceC2831u3.zzc().getName());
            }
            if (z7) {
                this.f24047a.put(strQ, interfaceC2831u3);
            } else {
                this.f24047a.putIfAbsent(strQ, interfaceC2831u3);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public C2839v3(C2839v3 c2839v3) {
        this.f24047a = new ConcurrentHashMap(c2839v3.f24047a);
    }
}
