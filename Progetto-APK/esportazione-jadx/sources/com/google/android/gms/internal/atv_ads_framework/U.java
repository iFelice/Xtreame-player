package com.google.android.gms.internal.atv_ads_framework;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class U extends E {
    private static final Map zzb = new ConcurrentHashMap();
    protected z0 zzc;
    private int zzd;

    public U() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = z0.f22406e;
    }

    public static U g(Class cls) {
        Map map = zzb;
        U u7 = (U) map.get(cls);
        if (u7 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                u7 = (U) map.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (u7 == null) {
            u7 = (U) ((U) I0.h(cls)).d(6);
            if (u7 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, u7);
        }
        return u7;
    }

    public static Object h(Object obj, Method method, Object... objArr) {
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

    public static void j(Class cls, U u7) {
        u7.i();
        zzb.put(cls, u7);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.E
    public final int a(InterfaceC2418w0 interfaceC2418w0) {
        if (b()) {
            int iC = c(interfaceC2418w0);
            if (iC >= 0) {
                return iC;
            }
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iC));
        }
        int i8 = this.zzd & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        if (i8 != Integer.MAX_VALUE) {
            return i8;
        }
        int iC2 = c(interfaceC2418w0);
        if (iC2 < 0) {
            throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iC2));
        }
        this.zzd = (this.zzd & Integer.MIN_VALUE) | iC2;
        return iC2;
    }

    public final boolean b() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public final int c(InterfaceC2418w0 interfaceC2418w0) {
        if (interfaceC2418w0 != null) {
            return interfaceC2418w0.zza(this);
        }
        return C2414u0.f22373c.a(getClass()).zza(this);
    }

    public abstract Object d(int i8);

    public final int e() {
        int iC;
        if (b()) {
            iC = c(null);
            if (iC < 0) {
                throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iC));
            }
        } else {
            iC = this.zzd & com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (iC == Integer.MAX_VALUE) {
                iC = c(null);
                if (iC < 0) {
                    throw new IllegalStateException(p000a.r.f("serialized size must be non-negative, was ", iC));
                }
                this.zzd = (this.zzd & Integer.MIN_VALUE) | iC;
            }
        }
        return iC;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return C2414u0.f22373c.a(getClass()).zzg(this, (U) obj);
    }

    public final T f() {
        return (T) d(5);
    }

    public final int hashCode() {
        if (b()) {
            return C2414u0.f22373c.a(getClass()).zzb(this);
        }
        int i8 = this.zza;
        if (i8 != 0) {
            return i8;
        }
        int iZzb = C2414u0.f22373c.a(getClass()).zzb(this);
        this.zza = iZzb;
        return iZzb;
    }

    public final void i() {
        this.zzd &= com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final void k() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = AbstractC2403o0.f22344a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        AbstractC2403o0.c(this, sb, 0);
        return sb.toString();
    }
}
