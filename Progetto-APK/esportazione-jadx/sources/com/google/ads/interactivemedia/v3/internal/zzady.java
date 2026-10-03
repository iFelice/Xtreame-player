package com.google.ads.interactivemedia.v3.internal;

import com.google.ads.interactivemedia.v3.internal.zzadu;
import com.google.ads.interactivemedia.v3.internal.zzady;
import com.google.android.gms.common.api.d;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzady<MessageType extends zzady<MessageType, BuilderType>, BuilderType extends zzadu<MessageType, BuilderType>> extends zzach<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzagi zzc = zzagi.zzc();

    public static zzady zzaA(Class cls) {
        Map map = zzb;
        zzady zzadyVar = (zzady) map.get(cls);
        if (zzadyVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzadyVar = (zzady) map.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (zzadyVar == null) {
            zzadyVar = (zzady) ((zzady) zzago.zze(cls)).zzm(6, null, null);
            if (zzadyVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzadyVar);
        }
        return zzadyVar;
    }

    public static zzady zzaC(zzady zzadyVar, zzacw zzacwVar) throws zzaeg {
        int i8 = zzadk.zzb;
        int i9 = zzafi.zza;
        zzadk zzadkVar = zzadk.zza;
        zzada zzadaVarZzk = zzacwVar.zzk();
        zzady zzadyVarZzaB = zzadyVar.zzaB();
        try {
            zzaft zzaftVarZzb = zzafi.zza().zzb(zzadyVarZzaB.getClass());
            zzaftVarZzb.zzh(zzadyVarZzaB, zzadb.zzq(zzadaVarZzk), zzadkVar);
            zzaftVarZzb.zzf(zzadyVarZzaB);
            zzadaVarZzk.zzy(0);
            zzd(zzadyVarZzaB);
            zzd(zzadyVarZzaB);
            return zzadyVarZzaB;
        } catch (zzaeg e8) {
            throw e8;
        } catch (zzagg e9) {
            throw e9.zza();
        } catch (IOException e10) {
            if (e10.getCause() instanceof zzaeg) {
                throw ((zzaeg) e10.getCause());
            }
            throw new zzaeg(e10);
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof zzaeg) {
                throw ((zzaeg) e11.getCause());
            }
            throw e11;
        }
    }

    public static zzady zzaD(zzady zzadyVar, zzacw zzacwVar, zzadk zzadkVar) throws zzaeg {
        zzada zzadaVarZzk = zzacwVar.zzk();
        zzady zzadyVarZzaB = zzadyVar.zzaB();
        try {
            zzaft zzaftVarZzb = zzafi.zza().zzb(zzadyVarZzaB.getClass());
            zzaftVarZzb.zzh(zzadyVarZzaB, zzadb.zzq(zzadaVarZzk), zzadkVar);
            zzaftVarZzb.zzf(zzadyVarZzaB);
            zzadaVarZzk.zzy(0);
            zzd(zzadyVarZzaB);
            return zzadyVarZzaB;
        } catch (zzaeg e8) {
            throw e8;
        } catch (zzagg e9) {
            throw e9.zza();
        } catch (IOException e10) {
            if (e10.getCause() instanceof zzaeg) {
                throw ((zzaeg) e10.getCause());
            }
            throw new zzaeg(e10);
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof zzaeg) {
                throw ((zzaeg) e11.getCause());
            }
            throw e11;
        }
    }

    public static zzady zzaE(zzady zzadyVar, byte[] bArr, zzadk zzadkVar) throws zzaeg {
        zzady zzadyVarZze = zze(zzadyVar, bArr, 0, bArr.length, zzadkVar);
        zzd(zzadyVarZze);
        return zzadyVarZze;
    }

    public static zzaec zzaF() {
        return zzadz.zzf();
    }

    public static zzaed zzaG() {
        return zzafj.zze();
    }

    public static zzaed zzaH(zzaed zzaedVar) {
        int size = zzaedVar.size();
        return zzaedVar.zzd(size == 0 ? 10 : size + size);
    }

    public static Object zzaI(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e8) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e8);
        } catch (InvocationTargetException e9) {
            Throwable cause = e9.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static Object zzaJ(zzafb zzafbVar, String str, Object[] objArr) {
        return new zzafk(zzafbVar, str, objArr);
    }

    public static void zzaM(Class cls, zzady zzadyVar) {
        zzadyVar.zzaL();
        zzb.put(cls, zzadyVar);
    }

    public static final boolean zzaO(zzady zzadyVar, boolean z7) {
        byte bByteValue = ((Byte) zzadyVar.zzm(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzl = zzafi.zza().zzb(zzadyVar.getClass()).zzl(zzadyVar);
        if (z7) {
            zzadyVar.zzm(2, true != zZzl ? null : zzadyVar, null);
        }
        return zZzl;
    }

    private final int zzc(zzaft zzaftVar) {
        return zzafi.zza().zzb(getClass()).zza(this);
    }

    private static zzady zzd(zzady zzadyVar) throws zzaeg {
        if (zzadyVar == null || zzaO(zzadyVar, true)) {
            return zzadyVar;
        }
        throw new zzagg(zzadyVar).zza();
    }

    private static zzady zze(zzady zzadyVar, byte[] bArr, int i8, int i9, zzadk zzadkVar) throws zzaeg {
        if (i9 == 0) {
            return zzadyVar;
        }
        zzady zzadyVarZzaB = zzadyVar.zzaB();
        try {
            zzaft zzaftVarZzb = zzafi.zza().zzb(zzadyVarZzaB.getClass());
            zzaftVarZzb.zzi(zzadyVarZzaB, bArr, 0, i9, new zzacl(zzadkVar));
            zzaftVarZzb.zzf(zzadyVarZzaB);
            return zzadyVarZzaB;
        } catch (zzaeg e8) {
            throw e8;
        } catch (zzagg e9) {
            throw e9.zza();
        } catch (IOException e10) {
            if (e10.getCause() instanceof zzaeg) {
                throw ((zzaeg) e10.getCause());
            }
            throw new zzaeg(e10);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzaeg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzafi.zza().zzb(getClass()).zzk(this, (zzady) obj);
    }

    public final int hashCode() {
        if (zzaP()) {
            return zzaw();
        }
        int i8 = this.zza;
        if (i8 != 0) {
            return i8;
        }
        int iZzaw = zzaw();
        this.zza = iZzaw;
        return iZzaw;
    }

    public final String toString() {
        return zzafd.zza(this, super.toString());
    }

    public final zzady zzaB() {
        return (zzady) zzm(4, null, null);
    }

    public final void zzaK() {
        zzafi.zza().zzb(getClass()).zzf(this);
        zzaL();
    }

    public final void zzaL() {
        this.zzd &= d.API_PRIORITY_OTHER;
    }

    public final void zzaN(int i8) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | d.API_PRIORITY_OTHER;
    }

    public final boolean zzaP() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzafb
    public final /* synthetic */ zzafa zzaQ() {
        return (zzadu) zzm(5, null, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzafb
    public final void zzaR(zzadf zzadfVar) {
        zzafi.zza().zzb(getClass()).zzj(this, zzadg.zza(zzadfVar));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzafc
    public final /* synthetic */ zzafb zzaS() {
        return (zzady) zzm(6, null, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzafc
    public final boolean zzaT() {
        return zzaO(this, true);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzach
    public final int zzat(zzaft zzaftVar) {
        if (zzaP()) {
            int iZza = zzaftVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException(r.f("serialized size must be non-negative, was ", iZza));
        }
        int i8 = this.zzd & d.API_PRIORITY_OTHER;
        if (i8 != Integer.MAX_VALUE) {
            return i8;
        }
        int iZza2 = zzaftVar.zza(this);
        if (iZza2 < 0) {
            throw new IllegalStateException(r.f("serialized size must be non-negative, was ", iZza2));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
        return iZza2;
    }

    public final int zzaw() {
        return zzafi.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzafb
    public final int zzax() {
        int iZzc;
        if (zzaP()) {
            iZzc = zzc(null);
            if (iZzc < 0) {
                throw new IllegalStateException(r.f("serialized size must be non-negative, was ", iZzc));
            }
        } else {
            iZzc = this.zzd & d.API_PRIORITY_OTHER;
            if (iZzc == Integer.MAX_VALUE) {
                iZzc = zzc(null);
                if (iZzc < 0) {
                    throw new IllegalStateException(r.f("serialized size must be non-negative, was ", iZzc));
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iZzc;
            }
        }
        return iZzc;
    }

    public final zzadu zzay() {
        return (zzadu) zzm(5, null, null);
    }

    public final zzadu zzaz() {
        zzadu zzaduVar = (zzadu) zzm(5, null, null);
        zzaduVar.zzaj(this);
        return zzaduVar;
    }

    public abstract Object zzm(int i8, Object obj, Object obj2);
}
