package com.google.android.gms.internal.cast;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2457i2 extends U1 {
    private static final Map zzb = new ConcurrentHashMap();
    protected P2 zzc;
    private int zzd;

    public AbstractC2457i2() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = P2.f22516e;
    }

    public static InterfaceC2477n2 b(InterfaceC2477n2 interfaceC2477n2) {
        int size = interfaceC2477n2.size();
        return interfaceC2477n2.zzg(size == 0 ? 10 : size + size);
    }

    public static Object c(Object obj, Method method, Object... objArr) {
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

    public static void e(Class cls, AbstractC2457i2 abstractC2457i2) {
        abstractC2457i2.d();
        zzb.put(cls, abstractC2457i2);
    }

    public static AbstractC2457i2 k(Class cls) {
        Map map = zzb;
        AbstractC2457i2 abstractC2457i2 = (AbstractC2457i2) map.get(cls);
        if (abstractC2457i2 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC2457i2 = (AbstractC2457i2) map.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (abstractC2457i2 == null) {
            abstractC2457i2 = (AbstractC2457i2) ((AbstractC2457i2) W2.h(cls)).h(6, null);
            if (abstractC2457i2 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, abstractC2457i2);
        }
        return abstractC2457i2;
    }

    @Override // com.google.android.gms.internal.cast.U1
    public final int a(M2 m7) {
        if (g()) {
            int iZza = m7.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza));
        }
        int i8 = this.zzd & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        if (i8 != Integer.MAX_VALUE) {
            return i8;
        }
        int iZza2 = m7.zza(this);
        if (iZza2 < 0) {
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza2));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
        return iZza2;
    }

    public final void d() {
        this.zzd &= com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return J2.f22476c.a(getClass()).zzg(this, (AbstractC2457i2) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final boolean g() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object h(int i8, AbstractC2457i2 abstractC2457i2);

    public final int hashCode() {
        if (g()) {
            return J2.f22476c.a(getClass()).zzb(this);
        }
        int i8 = this.zza;
        if (i8 != 0) {
            return i8;
        }
        int iZzb = J2.f22476c.a(getClass()).zzb(this);
        this.zza = iZzb;
        return iZzb;
    }

    public final int i() {
        int iZza;
        if (g()) {
            iZza = J2.f22476c.a(getClass()).zza(this);
            if (iZza < 0) {
                throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza));
            }
        } else {
            iZza = this.zzd & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (iZza == Integer.MAX_VALUE) {
                iZza = J2.f22476c.a(getClass()).zza(this);
                if (iZza < 0) {
                    throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza));
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza;
            }
        }
        return iZza;
    }

    public final AbstractC2453h2 j() {
        return (AbstractC2453h2) h(5, null);
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = D2.f22439a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        D2.c(this, sb, 0);
        return sb.toString();
    }
}
