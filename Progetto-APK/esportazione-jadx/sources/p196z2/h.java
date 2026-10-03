package p196z2;

import F.i;
import android.util.Log;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.Queue;
import java.util.TreeMap;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f31766a = new i(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f31767b = new c(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f31768c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f31769d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f31770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31771f;

    public h(int i8) {
        this.f31770e = i8;
    }

    public final synchronized void a() {
        c(0);
    }

    public final void b(int i8, Class cls) {
        NavigableMap navigableMapG = g(cls);
        Integer num = (Integer) navigableMapG.get(Integer.valueOf(i8));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapG.remove(Integer.valueOf(i8));
                return;
            } else {
                navigableMapG.put(Integer.valueOf(i8), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i8 + ", this: " + this);
    }

    public final void c(int i8) {
        int i9;
        String str;
        while (this.f31771f > i8) {
            Object objX = this.f31766a.x();
            c.b(objX);
            a aVarE = e(objX.getClass());
            int i10 = this.f31771f;
            e eVar = (e) aVarE;
            int iA = eVar.a(objX);
            int i11 = eVar.f31758a;
            switch (i11) {
                case 0:
                    i9 = 1;
                    break;
                default:
                    i9 = 4;
                    break;
            }
            this.f31771f = i10 - (iA * i9);
            b(eVar.a(objX), objX.getClass());
            String str2 = "ByteArrayPool";
            switch (i11) {
                case 0:
                    str = "ByteArrayPool";
                    break;
                default:
                    str = "IntegerArrayPool";
                    break;
            }
            if (Log.isLoggable(str, 2)) {
                switch (i11) {
                    case 0:
                        break;
                    default:
                        str2 = "IntegerArrayPool";
                        break;
                }
                Log.v(str2, "evicted: " + eVar.a(objX));
            }
        }
    }

    public final synchronized Object d(int i8, Class cls) {
        g gVar;
        int i9;
        try {
            Integer num = (Integer) g(cls).ceilingKey(Integer.valueOf(i8));
            if (num == null || ((i9 = this.f31771f) != 0 && this.f31770e / i9 < 2 && num.intValue() > i8 * 8)) {
                c cVar = this.f31767b;
                k kVarN = (k) ((Queue) cVar.f10616G).poll();
                if (kVarN == null) {
                    kVarN = cVar.n();
                }
                gVar = (g) kVarN;
                gVar.f31764b = i8;
                gVar.f31765c = cls;
            } else {
                c cVar2 = this.f31767b;
                int iIntValue = num.intValue();
                k kVarN2 = (k) ((Queue) cVar2.f10616G).poll();
                if (kVarN2 == null) {
                    kVarN2 = cVar2.n();
                }
                gVar = (g) kVarN2;
                gVar.f31764b = iIntValue;
                gVar.f31765c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f(gVar, cls);
    }

    public final a e(Class cls) {
        HashMap map = this.f31769d;
        a eVar = (a) map.get(cls);
        if (eVar == null) {
            if (cls.equals(int[].class)) {
                eVar = new e(1);
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
                }
                eVar = new e(0);
            }
            map.put(cls, eVar);
        }
        return eVar;
    }

    public final Object f(g gVar, Class cls) {
        String str;
        Object obj;
        int i8;
        a aVarE = e(cls);
        Object objG = this.f31766a.g(gVar);
        if (objG != null) {
            int i9 = this.f31771f;
            e eVar = (e) aVarE;
            int iA = eVar.a(objG);
            switch (eVar.f31758a) {
                case 0:
                    i8 = 1;
                    break;
                default:
                    i8 = 4;
                    break;
            }
            this.f31771f = i9 - (iA * i8);
            b(eVar.a(objG), cls);
        }
        if (objG != null) {
            return objG;
        }
        String str2 = "ByteArrayPool";
        int i10 = ((e) aVarE).f31758a;
        switch (i10) {
            case 0:
                str = "ByteArrayPool";
                break;
            default:
                str = "IntegerArrayPool";
                break;
        }
        if (Log.isLoggable(str, 2)) {
            switch (i10) {
                case 0:
                    break;
                default:
                    str2 = "IntegerArrayPool";
                    break;
            }
            Log.v(str2, "Allocated " + gVar.f31764b + " bytes");
        }
        int i11 = gVar.f31764b;
        switch (i10) {
            case 0:
                obj = new byte[i11];
                break;
            default:
                obj = new int[i11];
                break;
        }
        return obj;
    }

    public final NavigableMap g(Class cls) {
        HashMap map = this.f31768c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    public final synchronized void h(Object obj) {
        int i8;
        Class<?> cls = obj.getClass();
        a aVarE = e(cls);
        int iA = ((e) aVarE).a(obj);
        int iIntValue = 1;
        switch (((e) aVarE).f31758a) {
            case 0:
                i8 = 1;
                break;
            default:
                i8 = 4;
                break;
        }
        int i9 = i8 * iA;
        if (i9 <= this.f31770e / 2) {
            c cVar = this.f31767b;
            k kVarN = (k) ((Queue) cVar.f10616G).poll();
            if (kVarN == null) {
                kVarN = cVar.n();
            }
            g gVar = (g) kVarN;
            gVar.f31764b = iA;
            gVar.f31765c = cls;
            this.f31766a.w(gVar, obj);
            NavigableMap navigableMapG = g(cls);
            Integer num = (Integer) navigableMapG.get(Integer.valueOf(gVar.f31764b));
            Integer numValueOf = Integer.valueOf(gVar.f31764b);
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapG.put(numValueOf, Integer.valueOf(iIntValue));
            this.f31771f += i9;
            c(this.f31770e);
        }
    }

    public final synchronized void i(int i8) {
        try {
            if (i8 >= 40) {
                a();
            } else if (i8 >= 20 || i8 == 15) {
                c(this.f31770e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
