package com.google.android.gms.internal.measurement;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2631s2 extends AbstractC2540c2 {
    private static final Map zzb = new ConcurrentHashMap();
    protected C2535b3 zzc;
    private int zzd;

    public AbstractC2631s2() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = C2535b3.f23099f;
    }

    public static AbstractC2631s2 h(Class cls) {
        Map map = zzb;
        AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) map.get(cls);
        if (abstractC2631s2 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC2631s2 = (AbstractC2631s2) map.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (abstractC2631s2 == null) {
            abstractC2631s2 = (AbstractC2631s2) ((AbstractC2631s2) AbstractC2565g3.h(cls)).p(6);
            if (abstractC2631s2 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, abstractC2631s2);
        }
        return abstractC2631s2;
    }

    public static Object i(Object obj, Method method, Object... objArr) {
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

    public static void l(Class cls, AbstractC2631s2 abstractC2631s2) {
        abstractC2631s2.k();
        zzb.put(cls, abstractC2631s2);
    }

    public static final boolean o(AbstractC2631s2 abstractC2631s2, boolean z7) {
        byte bByteValue = ((Byte) abstractC2631s2.p(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zA = V2.f23021c.a(abstractC2631s2.getClass()).a(abstractC2631s2);
        if (z7) {
            abstractC2631s2.p(2);
        }
        return zA;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2540c2
    public final int a(Y2 y7) {
        if (n()) {
            int iZza = y7.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza));
        }
        int i8 = this.zzd & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        if (i8 != Integer.MAX_VALUE) {
            return i8;
        }
        int iZza2 = y7.zza(this);
        if (iZza2 < 0) {
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza2));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
        return iZza2;
    }

    public final void d(C2588k2 c2588k2) {
        Y2 y2A = V2.f23021c.a(getClass());
        C2594l2 c2594l2 = c2588k2.f23179H;
        if (c2594l2 == null) {
            c2594l2 = new C2594l2(c2588k2);
        }
        y2A.b(this, c2594l2);
    }

    public final int e() {
        int iZza;
        if (n()) {
            iZza = V2.f23021c.a(getClass()).zza(this);
            if (iZza < 0) {
                throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza));
            }
        } else {
            iZza = this.zzd & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (iZza == Integer.MAX_VALUE) {
                iZza = V2.f23021c.a(getClass()).zza(this);
                if (iZza < 0) {
                    throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iZza));
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza;
            }
        }
        return iZza;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return V2.f23021c.a(getClass()).d(this, (AbstractC2631s2) obj);
    }

    public final AbstractC2626r2 f() {
        return (AbstractC2626r2) p(5);
    }

    public final AbstractC2626r2 g() {
        AbstractC2626r2 abstractC2626r2 = (AbstractC2626r2) p(5);
        abstractC2626r2.c(this);
        return abstractC2626r2;
    }

    public final int hashCode() {
        if (n()) {
            return V2.f23021c.a(getClass()).zzb(this);
        }
        int i8 = this.zza;
        if (i8 != 0) {
            return i8;
        }
        int iZzb = V2.f23021c.a(getClass()).zzb(this);
        this.zza = iZzb;
        return iZzb;
    }

    public final void j() {
        V2.f23021c.a(getClass()).zzf(this);
        k();
    }

    public final void k() {
        this.zzd &= com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final void m() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final boolean n() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object p(int i8);

    public final String toString() {
        String string = super.toString();
        char[] cArr = Q2.f22985a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        Q2.c(this, sb, 0);
        return sb.toString();
    }
}
