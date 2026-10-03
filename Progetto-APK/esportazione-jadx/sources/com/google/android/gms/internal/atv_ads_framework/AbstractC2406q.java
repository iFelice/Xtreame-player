package com.google.android.gms.internal.atv_ads_framework;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2406q implements Map, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22358G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient AbstractCollection f22359H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient AbstractCollection f22360I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public transient AbstractCollection f22361J;

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [short[], byte[]], vars: [r7v7 ??, r7v10 ??, r7v8 short[], r7v11 byte[]]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryInsertAdditionalMove(FixTypesVisitor.java:676)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        */
    public static void d(java.util.Set r16) {
        /*
            Method dump skipped, instruction units count: 541
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.atv_ads_framework.AbstractC2406q.d(java.util.Set):void");
    }

    public abstract C2419x a();

    public abstract com.google.android.gms.internal.cast.P b();

    public abstract C2415v c();

    @Override // java.util.Map
    public final void clear() {
        switch (this.f22358G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        switch (this.f22358G) {
            case 0:
                return get(obj) != null;
            default:
                return get(obj) != null;
        }
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        switch (this.f22358G) {
            case 0:
                AbstractC2396l abstractC2396lA = (AbstractC2396l) this.f22361J;
                if (abstractC2396lA == null) {
                    abstractC2396lA = a();
                    this.f22361J = abstractC2396lA;
                }
                return abstractC2396lA.contains(obj);
            default:
                AbstractCollection abstractCollectionB = (com.google.android.gms.internal.cast.D) this.f22361J;
                if (abstractCollectionB == null) {
                    abstractCollectionB = b();
                    this.f22361J = abstractCollectionB;
                }
                return abstractCollectionB.contains(obj);
        }
    }

    public abstract C2417w e();

    @Override // java.util.Map
    public final Set entrySet() {
        switch (this.f22358G) {
            case 0:
                r rVar = (r) this.f22359H;
                if (rVar != null) {
                    return rVar;
                }
                C2415v c2415vC = c();
                this.f22359H = c2415vC;
                return c2415vC;
            default:
                com.google.android.gms.internal.cast.I i8 = (com.google.android.gms.internal.cast.I) this.f22359H;
                if (i8 != null) {
                    return i8;
                }
                com.google.android.gms.internal.cast.M mF = f();
                this.f22359H = mF;
                return mF;
        }
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        switch (this.f22358G) {
            case 0:
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Map) {
                    return entrySet().equals(((Map) obj).entrySet());
                }
                return false;
            default:
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Map) {
                    return entrySet().equals(((Map) obj).entrySet());
                }
                return false;
        }
    }

    public abstract com.google.android.gms.internal.cast.M f();

    public abstract com.google.android.gms.internal.cast.O g();

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        switch (this.f22358G) {
            case 0:
                Object obj3 = get(obj);
                return obj3 != null ? obj3 : obj2;
            default:
                Object obj4 = get(obj);
                return obj4 != null ? obj4 : obj2;
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        switch (this.f22358G) {
            case 0:
                r rVarC = (r) this.f22359H;
                if (rVarC == null) {
                    rVarC = c();
                    this.f22359H = rVarC;
                }
                Iterator it = rVarC.iterator();
                int iHashCode = 0;
                while (it.hasNext()) {
                    Object next = it.next();
                    iHashCode += next != null ? next.hashCode() : 0;
                }
                return iHashCode;
            default:
                com.google.android.gms.internal.cast.I iF = (com.google.android.gms.internal.cast.I) this.f22359H;
                if (iF == null) {
                    iF = f();
                    this.f22359H = iF;
                }
                Iterator it2 = iF.iterator();
                int iHashCode2 = 0;
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    iHashCode2 += next2 != null ? next2.hashCode() : 0;
                }
                return iHashCode2;
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        switch (this.f22358G) {
            case 0:
                return size() == 0;
            default:
                return size() == 0;
        }
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        switch (this.f22358G) {
            case 0:
                r rVar = (r) this.f22360I;
                if (rVar != null) {
                    return rVar;
                }
                C2417w c2417wE = e();
                this.f22360I = c2417wE;
                return c2417wE;
            default:
                com.google.android.gms.internal.cast.I i8 = (com.google.android.gms.internal.cast.I) this.f22360I;
                if (i8 != null) {
                    return i8;
                }
                com.google.android.gms.internal.cast.O oG = g();
                this.f22360I = oG;
                return oG;
        }
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        switch (this.f22358G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        switch (this.f22358G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        switch (this.f22358G) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final String toString() {
        boolean z7 = true;
        switch (this.f22358G) {
            case 0:
                int size = size();
                if (size < 0) {
                    throw new IllegalArgumentException(p000a.r.f("size cannot be negative but was: ", size));
                }
                StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
                sb.append('{');
                for (Map.Entry entry : entrySet()) {
                    if (!z7) {
                        sb.append(", ");
                    }
                    sb.append(entry.getKey());
                    sb.append('=');
                    sb.append(entry.getValue());
                    z7 = false;
                }
                sb.append('}');
                return sb.toString();
            default:
                int size2 = size();
                if (size2 < 0) {
                    throw new IllegalArgumentException(p000a.r.f("size cannot be negative but was: ", size2));
                }
                StringBuilder sb2 = new StringBuilder((int) Math.min(((long) size2) * 8, 1073741824L));
                sb2.append('{');
                for (Map.Entry entry2 : entrySet()) {
                    if (!z7) {
                        sb2.append(", ");
                    }
                    sb2.append(entry2.getKey());
                    sb2.append('=');
                    sb2.append(entry2.getValue());
                    z7 = false;
                }
                sb2.append('}');
                return sb2.toString();
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        switch (this.f22358G) {
            case 0:
                AbstractC2396l abstractC2396l = (AbstractC2396l) this.f22361J;
                if (abstractC2396l != null) {
                    return abstractC2396l;
                }
                C2419x c2419xA = a();
                this.f22361J = c2419xA;
                return c2419xA;
            default:
                com.google.android.gms.internal.cast.D d6 = (com.google.android.gms.internal.cast.D) this.f22361J;
                if (d6 != null) {
                    return d6;
                }
                com.google.android.gms.internal.cast.P pB = b();
                this.f22361J = pB;
                return pB;
        }
    }
}
