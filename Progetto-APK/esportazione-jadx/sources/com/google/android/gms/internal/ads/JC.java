package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class JC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f14129a = 0;

    static {
        Logger.getLogger(JC.class.getName());
        new ConcurrentHashMap();
        HashSet hashSet = new HashSet();
        hashSet.add(InterfaceC2127vC.class);
        hashSet.add(InterfaceC2179wC.class);
        hashSet.add(KC.class);
        hashSet.add(InterfaceC2335zC.class);
        hashSet.add(InterfaceC2283yC.class);
        hashSet.add(FC.class);
        hashSet.add(InterfaceC1507jF.class);
        hashSet.add(HC.class);
        hashSet.add(IC.class);
        Collections.unmodifiableSet(hashSet);
    }

    public static Object a(C1147cG c1147cG, Class cls) throws GeneralSecurityException {
        String strE = c1147cG.E();
        XG xgD = c1147cG.D();
        C1145cE c1145cEC = XD.f17392d.c(strE);
        boolean zEquals = c1145cEC.f18204b.equals(cls);
        Class cls2 = c1145cEC.f18204b;
        if (zEquals) {
            EnumC2235xG enumC2235xG = EnumC2235xG.RAW;
            return C1921rE.f20695b.b(C1973sE.f20878b.a(FE.a(c1145cEC.f18203a, xgD, c1145cEC.f18205c, enumC2235xG, null)), cls2);
        }
        String name = cls.getName();
        String strValueOf = String.valueOf(C1145cE.class);
        String string = cls2.toString();
        StringBuilder sbQ = com.google.protobuf.U2.q("Primitive type ", name, " not supported by key manager of type ", strValueOf, ", which only supports: ");
        sbQ.append(string);
        throw new GeneralSecurityException(sbQ.toString());
    }
}
