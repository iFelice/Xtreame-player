package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2518y0 extends AbstractC2457i2 {
    private static final C2518y0 zzb;
    private int zzd;
    private K0 zze;
    private long zzf;
    private int zzg;
    private InterfaceC2477n2 zzh;
    private InterfaceC2477n2 zzi;
    private InterfaceC2477n2 zzj;
    private InterfaceC2477n2 zzk;

    static {
        C2518y0 c2518y0 = new C2518y0();
        zzb = c2518y0;
        AbstractC2457i2.e(C2518y0.class, c2518y0);
    }

    public C2518y0() {
        K2 k8 = K2.f22483J;
        this.zzh = k8;
        this.zzi = k8;
        this.zzj = k8;
        this.zzk = k8;
    }

    public static C2514x0 l() {
        return (C2514x0) zzb.j();
    }

    public static /* synthetic */ void m(C2518y0 c2518y0, K0 k8) {
        c2518y0.zze = k8;
        c2518y0.zzd |= 1;
    }

    public static /* synthetic */ void n(C2518y0 c2518y0, long j8) {
        c2518y0.zzd |= 2;
        c2518y0.zzf = j8;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void o(C2518y0 c2518y0, ArrayList arrayList) {
        InterfaceC2477n2 interfaceC2477n2 = c2518y0.zzh;
        if (!((V1) interfaceC2477n2).f22546G) {
            c2518y0.zzh = AbstractC2457i2.b(interfaceC2477n2);
        }
        List list = c2518y0.zzh;
        Charset charset = AbstractC2481o2.f22763a;
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(arrayList.size() + list.size());
        }
        int size = list.size();
        for (Object obj : arrayList) {
            if (obj == null) {
                String strY = A0.O.y("Element at index ", list.size() - size, " is null.");
                int size2 = list.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(strY);
                    }
                    list.remove(size2);
                }
            } else {
                list.add(obj);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void p(C2518y0 c2518y0, ArrayList arrayList) {
        InterfaceC2477n2 interfaceC2477n2 = c2518y0.zzi;
        if (!((V1) interfaceC2477n2).f22546G) {
            c2518y0.zzi = AbstractC2457i2.b(interfaceC2477n2);
        }
        List list = c2518y0.zzi;
        Charset charset = AbstractC2481o2.f22763a;
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(arrayList.size() + list.size());
        }
        int size = list.size();
        for (Object obj : arrayList) {
            if (obj == null) {
                String strY = A0.O.y("Element at index ", list.size() - size, " is null.");
                int size2 = list.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(strY);
                    }
                    list.remove(size2);
                }
            } else {
                list.add(obj);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void q(C2518y0 c2518y0, ArrayList arrayList) {
        InterfaceC2477n2 interfaceC2477n2 = c2518y0.zzj;
        if (!((V1) interfaceC2477n2).f22546G) {
            c2518y0.zzj = AbstractC2457i2.b(interfaceC2477n2);
        }
        List list = c2518y0.zzj;
        Charset charset = AbstractC2481o2.f22763a;
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(arrayList.size() + list.size());
        }
        int size = list.size();
        for (Object obj : arrayList) {
            if (obj == null) {
                String strY = A0.O.y("Element at index ", list.size() - size, " is null.");
                int size2 = list.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(strY);
                    }
                    list.remove(size2);
                }
            } else {
                list.add(obj);
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void r(C2518y0 c2518y0, ArrayList arrayList) {
        InterfaceC2477n2 interfaceC2477n2 = c2518y0.zzk;
        if (!((V1) interfaceC2477n2).f22546G) {
            c2518y0.zzk = AbstractC2457i2.b(interfaceC2477n2);
        }
        List list = c2518y0.zzk;
        Charset charset = AbstractC2481o2.f22763a;
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(arrayList.size() + list.size());
        }
        int size = list.size();
        for (Object obj : arrayList) {
            if (obj == null) {
                String strY = A0.O.y("Element at index ", list.size() - size, " is null.");
                int size2 = list.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(strY);
                    }
                    list.remove(size2);
                }
            } else {
                list.add(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001ဉ\u0000\u0002စ\u0001\u0003᠌\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", Z.f22590v, "zzh", C2510w0.class, "zzi", C2502u0.class, "zzj", C0.class, "zzk", A0.class});
        }
        if (i9 == 3) {
            return new C2518y0();
        }
        if (i9 == 4) {
            return new C2514x0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
