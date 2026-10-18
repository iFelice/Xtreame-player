package com.google.android.gms.internal.pal;

import A0.C0022w;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class D extends AbstractC2740j {
    private static final Map zzb = new ConcurrentHashMap();
    protected C2781o0 zzc;
    protected int zzd;

    public D() {
        this.zza = 0;
        this.zzc = C2781o0.f23969f;
        this.zzd = -1;
    }

    public static I d(I i8) {
        int size = i8.size();
        return i8.zzd(size == 0 ? 10 : size + size);
    }

    public static Object e(Object obj, Method method, Object... objArr) {
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

    public static void f(Class cls, D d6) {
        zzb.put(cls, d6);
    }

    public static D i(Class cls) {
        Map map = zzb;
        D d6 = (D) map.get(cls);
        if (d6 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                d6 = (D) map.get(cls);
            } catch (ClassNotFoundException e8) {
                throw new IllegalStateException("Class initialization cannot fail.", e8);
            }
        }
        if (d6 == null) {
            d6 = (D) ((D) AbstractC2836v0.h(cls)).l(6);
            if (d6 == null) {
                throw new IllegalStateException();
            }
            map.put(cls, d6);
        }
        return d6;
    }

    public static D j(D d6, r rVar, C2851x c2851x) throws L {
        C2796q c2796q = (C2796q) rVar;
        int i8 = c2796q.i();
        C2819t c2819t = new C2819t(c2796q.f23982I, i8);
        try {
            c2819t.a(i8);
            D d8 = (D) d6.l(4);
            try {
                InterfaceC2749k0 interfaceC2749k0A = C2725h0.f23828c.a(d8.getClass());
                C2827u c2827u = c2819t.f24003b;
                if (c2827u == null) {
                    c2827u = new C2827u(c2819t);
                }
                interfaceC2749k0A.c(d8, c2827u, c2851x);
                interfaceC2749k0A.zzf(d8);
                if (c2819t.f24008g != 0) {
                    throw new L("Protocol message end-group tag did not match expected tag.");
                }
                if (d8.g()) {
                    return d8;
                }
                throw new L(new C2773n0().getMessage());
            } catch (L e8) {
                throw e8;
            } catch (C2773n0 e9) {
                throw new L(e9.getMessage());
            } catch (IOException e10) {
                if (e10.getCause() instanceof L) {
                    throw ((L) e10.getCause());
                }
                throw new L(e10.getMessage(), e10);
            } catch (RuntimeException e11) {
                if (e11.getCause() instanceof L) {
                    throw ((L) e11.getCause());
                }
                throw e11;
            }
        } catch (L e12) {
            throw new IllegalArgumentException(e12);
        }
    }

    public static D k(D d6, byte[] bArr, C2851x c2851x) throws L {
        int length = bArr.length;
        D d8 = (D) d6.l(4);
        try {
            InterfaceC2749k0 interfaceC2749k0A = C2725h0.f23828c.a(d8.getClass());
            interfaceC2749k0A.a(d8, bArr, 0, length, new C0022w(c2851x));
            interfaceC2749k0A.zzf(d8);
            if (d8.zza != 0) {
                throw new RuntimeException();
            }
            if (d8.g()) {
                return d8;
            }
            throw new L(new C2773n0().getMessage());
        } catch (L e8) {
            throw e8;
        } catch (C2773n0 e9) {
            throw new L(e9.getMessage());
        } catch (IOException e10) {
            if (e10.getCause() instanceof L) {
                throw ((L) e10.getCause());
            }
            throw new L(e10.getMessage(), e10);
        } catch (IndexOutOfBoundsException unused) {
            throw L.e();
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2740j
    public final int c() {
        int i8 = this.zzd;
        if (i8 != -1) {
            return i8;
        }
        int iZza = C2725h0.f23828c.a(getClass()).zza(this);
        this.zzd = iZza;
        return iZza;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return C2725h0.f23828c.a(getClass()).zzk(this, (D) obj);
        }
        return false;
    }

    public final boolean g() {
        byte bByteValue = ((Byte) l(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzl = C2725h0.f23828c.a(getClass()).zzl(this);
        l(2);
        return zZzl;
    }

    public final C h() {
        return (C) l(5);
    }

    public final int hashCode() {
        int i8 = this.zza;
        if (i8 != 0) {
            return i8;
        }
        int iZzb = C2725h0.f23828c.a(getClass()).zzb(this);
        this.zza = iZzb;
        return iZzb;
    }

    public abstract Object l(int i8);

    public final String toString() {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        AbstractC2864y4.d0(this, sb, 0);
        return sb.toString();
    }
}
