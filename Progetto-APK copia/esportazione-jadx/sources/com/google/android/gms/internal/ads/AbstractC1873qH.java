package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1873qH extends PG {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Object, AbstractC1873qH> zzc = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzd;
    protected C1408hI zzt;

    public AbstractC1873qH() {
        this.zzq = 0;
        this.zzd = -1;
        this.zzt = C1408hI.f19078f;
    }

    public static InterfaceC2236xH h(InterfaceC2236xH interfaceC2236xH) {
        int size = interfaceC2236xH.size();
        return interfaceC2236xH.a(size == 0 ? 10 : size + size);
    }

    public static Object j(Object obj, Method method, Object... objArr) {
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

    public static AbstractC1873qH p(Class cls) {
        AbstractC1873qH abstractC1873qH = zzc.get(cls);
        if (abstractC1873qH == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC1873qH = zzc.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (abstractC1873qH == null) {
            abstractC1873qH = (AbstractC1873qH) ((AbstractC1873qH) AbstractC1718nI.j(cls)).x(6, null);
            if (abstractC1873qH == null) {
                throw new IllegalStateException();
            }
            zzc.put(cls, abstractC1873qH);
        }
        return abstractC1873qH;
    }

    public static AbstractC1873qH r(AbstractC1873qH abstractC1873qH, XG xg, C1509jH c1509jH) {
        AbstractC1200dH abstractC1200dHT = xg.t();
        AbstractC1873qH abstractC1873qHS = s(abstractC1873qH, abstractC1200dHT, c1509jH);
        abstractC1200dHT.y();
        y(abstractC1873qHS);
        return abstractC1873qHS;
    }

    public static AbstractC1873qH s(AbstractC1873qH abstractC1873qH, AbstractC1200dH abstractC1200dH, C1509jH c1509jH) throws AH {
        AbstractC1873qH abstractC1873qHQ = abstractC1873qH.q();
        try {
            InterfaceC1098bI interfaceC1098bIA = UH.f16822c.a(abstractC1873qHQ.getClass());
            C1251eH c1251eH = abstractC1200dH.f18313b;
            if (c1251eH == null) {
                c1251eH = new C1251eH(abstractC1200dH);
            }
            interfaceC1098bIA.a(abstractC1873qHQ, c1251eH, c1509jH);
            interfaceC1098bIA.zzf(abstractC1873qHQ);
            return abstractC1873qHQ;
        } catch (AH e8) {
            if (e8.f11997G) {
                throw new AH(e8.getMessage(), e8);
            }
            throw e8;
        } catch (C1356gI e9) {
            throw new AH(e9.getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof AH) {
                throw ((AH) e10.getCause());
            }
            throw new AH(e10.getMessage(), e10);
        } catch (RuntimeException e11) {
            if (e11.getCause() instanceof AH) {
                throw ((AH) e11.getCause());
            }
            throw e11;
        }
    }

    public static void t(Class cls, AbstractC1873qH abstractC1873qH) {
        abstractC1873qH.n();
        zzc.put(cls, abstractC1873qH);
    }

    public static final boolean u(AbstractC1873qH abstractC1873qH, boolean z7) {
        byte bByteValue = ((Byte) abstractC1873qH.x(1, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzl = UH.f16822c.a(abstractC1873qH.getClass()).zzl(abstractC1873qH);
        if (z7) {
            abstractC1873qH.x(2, true == zZzl ? abstractC1873qH : null);
        }
        return zZzl;
    }

    public static void y(AbstractC1873qH abstractC1873qH) {
        if (abstractC1873qH != null && !u(abstractC1873qH, true)) {
            throw new AH(new C1356gI().getMessage());
        }
    }

    public static AbstractC1873qH z(AbstractC1873qH abstractC1873qH, byte[] bArr, int i8, C1509jH c1509jH) throws AH {
        if (i8 == 0) {
            return abstractC1873qH;
        }
        AbstractC1873qH abstractC1873qHQ = abstractC1873qH.q();
        try {
            InterfaceC1098bI interfaceC1098bIA = UH.f16822c.a(abstractC1873qHQ.getClass());
            interfaceC1098bIA.c(abstractC1873qHQ, bArr, 0, i8, new SG(c1509jH));
            interfaceC1098bIA.zzf(abstractC1873qHQ);
            return abstractC1873qHQ;
        } catch (AH e8) {
            if (e8.f11997G) {
                throw new AH(e8.getMessage(), e8);
            }
            throw e8;
        } catch (C1356gI e9) {
            throw new AH(e9.getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof AH) {
                throw ((AH) e10.getCause());
            }
            throw new AH(e10.getMessage(), e10);
        } catch (IndexOutOfBoundsException unused) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.PG
    public final int a(InterfaceC1098bI interfaceC1098bI) {
        int iZza;
        int iZza2;
        if (v()) {
            if (interfaceC1098bI == null) {
                iZza2 = UH.f16822c.a(getClass()).zza(this);
            } else {
                iZza2 = interfaceC1098bI.zza(this);
            }
            if (iZza2 >= 0) {
                return iZza2;
            }
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza2));
        }
        int i8 = this.zzd;
        if ((i8 & com.google.android.gms.common.api.d.API_PRIORITY_OTHER) != Integer.MAX_VALUE) {
            return i8 & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        if (interfaceC1098bI == null) {
            iZza = UH.f16822c.a(getClass()).zza(this);
        } else {
            iZza = interfaceC1098bI.zza(this);
        }
        f(iZza);
        return iZza;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return UH.f16822c.a(getClass()).zzk(this, (AbstractC1873qH) obj);
    }

    public final void f(int i8) {
        if (i8 < 0) {
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", i8));
        }
        this.zzd = i8 | (this.zzd & zza);
    }

    public final AbstractC1769oH g() {
        return (AbstractC1769oH) x(5, null);
    }

    public final int hashCode() {
        if (v()) {
            return UH.f16822c.a(getClass()).zzb(this);
        }
        if (this.zzq == 0) {
            this.zzq = UH.f16822c.a(getClass()).zzb(this);
        }
        return this.zzq;
    }

    public final SH i() {
        return (SH) x(7, null);
    }

    public final void k() {
        this.zzq = 0;
    }

    public final void l() {
        f(com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
    }

    public final void m() {
        UH.f16822c.a(getClass()).zzf(this);
        n();
    }

    public final void n() {
        this.zzd &= com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final AbstractC1769oH o() {
        AbstractC1769oH abstractC1769oH = (AbstractC1769oH) x(5, null);
        if (!abstractC1769oH.f20254G.equals(this)) {
            abstractC1769oH.d();
            AbstractC1873qH abstractC1873qH = abstractC1769oH.f20255H;
            UH.f16822c.a(abstractC1873qH.getClass()).zzg(abstractC1873qH, this);
        }
        return abstractC1769oH;
    }

    public final AbstractC1873qH q() {
        return (AbstractC1873qH) x(4, null);
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = OH.f15150a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        OH.c(this, sb, 0);
        return sb.toString();
    }

    public final boolean v() {
        return (this.zzd & zza) != 0;
    }

    public final void w(AbstractC1407hH abstractC1407hH) {
        InterfaceC1098bI interfaceC1098bIA = UH.f16822c.a(getClass());
        C1459iH c1459iH = abstractC1407hH.f19077c;
        if (c1459iH == null) {
            c1459iH = new C1459iH(abstractC1407hH);
        }
        interfaceC1098bIA.b(this, c1459iH);
    }

    public abstract Object x(int i8, AbstractC1873qH abstractC1873qH);
}
