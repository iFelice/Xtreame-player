package P1;

import F2.G;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String[] f5801n = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f5802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f5803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f5804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f5805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f5806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f5807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f5808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile T1.i f5809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final j f5810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p101n.g f5811j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f5812k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Object f5813l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p000a.f f5814m;

    public l(x xVar, HashMap map, HashMap map2, String... strArr) {
        String lowerCase;
        q0.h(xVar, "database");
        this.f5802a = xVar;
        this.f5803b = map;
        this.f5804c = map2;
        this.f5807f = new AtomicBoolean(false);
        this.f5810i = new j(strArr.length);
        new p096m2.c(xVar, 7);
        this.f5811j = new p101n.g();
        this.f5812k = new Object();
        this.f5813l = new Object();
        this.f5805d = new LinkedHashMap();
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i8 = 0; i8 < length; i8++) {
            String str = strArr[i8];
            Locale locale = Locale.US;
            q0.g(locale, "US");
            String lowerCase2 = str.toLowerCase(locale);
            q0.g(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            this.f5805d.put(lowerCase2, Integer.valueOf(i8));
            String str2 = (String) this.f5803b.get(strArr[i8]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                q0.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i8] = lowerCase2;
        }
        this.f5806e = strArr2;
        for (Map.Entry entry : this.f5803b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.US;
            q0.g(locale2, "US");
            String lowerCase3 = str3.toLowerCase(locale2);
            q0.g(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            if (this.f5805d.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                q0.g(lowerCase4, "this as java.lang.String).toLowerCase(locale)");
                LinkedHashMap linkedHashMap = this.f5805d;
                q0.h(linkedHashMap, "<this>");
                Object obj = linkedHashMap.get(lowerCase3);
                if (obj == null && !linkedHashMap.containsKey(lowerCase3)) {
                    throw new NoSuchElementException("Key " + ((Object) lowerCase3) + " is missing in the map.");
                }
                linkedHashMap.put(lowerCase4, obj);
            }
        }
        this.f5814m = new p000a.f(this, 14);
    }

    public final void a(n nVar) {
        Object obj;
        k kVar;
        String[] strArr = nVar.f5817a;
        p169v6.i iVar = new p169v6.i();
        int i8 = 0;
        for (String str : strArr) {
            Locale locale = Locale.US;
            q0.g(locale, "US");
            String lowerCase = str.toLowerCase(locale);
            q0.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            Map map = this.f5804c;
            if (map.containsKey(lowerCase)) {
                String lowerCase2 = str.toLowerCase(locale);
                q0.g(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                Object obj2 = map.get(lowerCase2);
                q0.e(obj2);
                iVar.addAll((Collection) obj2);
            } else {
                iVar.add(str);
            }
        }
        Object[] array = p190y4.k.j(iVar).toArray(new String[0]);
        q0.f(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr2 = (String[]) array;
        ArrayList arrayList = new ArrayList(strArr2.length);
        for (String str2 : strArr2) {
            LinkedHashMap linkedHashMap = this.f5805d;
            Locale locale2 = Locale.US;
            q0.g(locale2, "US");
            String lowerCase3 = str2.toLowerCase(locale2);
            q0.g(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            Integer num = (Integer) linkedHashMap.get(lowerCase3);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name ".concat(str2));
            }
            arrayList.add(num);
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            iArr[i8] = ((Number) it.next()).intValue();
            i8++;
        }
        k kVar2 = new k(nVar, iArr, strArr2);
        synchronized (this.f5811j) {
            p101n.g gVar = this.f5811j;
            p101n.c cVarB = gVar.b(nVar);
            if (cVarB != null) {
                obj = cVarB.f27292H;
            } else {
                p101n.c cVar = new p101n.c(nVar, kVar2);
                gVar.f27303J++;
                p101n.c cVar2 = gVar.f27301H;
                if (cVar2 == null) {
                    gVar.f27300G = cVar;
                    gVar.f27301H = cVar;
                } else {
                    cVar2.f27293I = cVar;
                    cVar.f27294J = cVar2;
                    gVar.f27301H = cVar;
                }
                obj = null;
            }
            kVar = (k) obj;
        }
        if (kVar == null && this.f5810i.b(Arrays.copyOf(iArr, size))) {
            x xVar = this.f5802a;
            if (xVar.k()) {
                d(xVar.g().getWritableDatabase());
            }
        }
    }

    public final boolean b() {
        if (!this.f5802a.k()) {
            return false;
        }
        if (!this.f5808g) {
            this.f5802a.g().getWritableDatabase();
        }
        if (this.f5808g) {
            return true;
        }
        Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public final void c(T1.b bVar, int i8) {
        bVar.f("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i8 + ", 0)");
        String str = this.f5806e[i8];
        String[] strArr = f5801n;
        for (int i9 = 0; i9 < 3; i9++) {
            String str2 = strArr[i9];
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + G.G(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i8 + " AND invalidated = 0; END";
            q0.g(str3, "StringBuilder().apply(builderAction).toString()");
            bVar.f(str3);
        }
    }

    public final void d(T1.b bVar) {
        q0.h(bVar, "database");
        if (bVar.L()) {
            return;
        }
        try {
            ReentrantReadWriteLock.ReadLock lock = this.f5802a.f5861h.readLock();
            q0.g(lock, "readWriteLock.readLock()");
            lock.lock();
            try {
                synchronized (this.f5812k) {
                    int[] iArrA = this.f5810i.a();
                    if (iArrA == null) {
                        lock.unlock();
                        return;
                    }
                    if (bVar.P()) {
                        bVar.z();
                    } else {
                        bVar.c();
                    }
                    try {
                        int length = iArrA.length;
                        int i8 = 0;
                        int i9 = 0;
                        while (i8 < length) {
                            int i10 = iArrA[i8];
                            int i11 = i9 + 1;
                            if (i10 == 1) {
                                c(bVar, i9);
                            } else if (i10 == 2) {
                                String str = this.f5806e[i9];
                                String[] strArr = f5801n;
                                for (int i12 = 0; i12 < 3; i12++) {
                                    String str2 = "DROP TRIGGER IF EXISTS " + G.G(str, strArr[i12]);
                                    q0.g(str2, "StringBuilder().apply(builderAction).toString()");
                                    bVar.f(str2);
                                }
                            }
                            i8++;
                            i9 = i11;
                        }
                        bVar.x();
                        bVar.D();
                        lock.unlock();
                    } catch (Throwable th) {
                        bVar.D();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                lock.unlock();
                throw th2;
            }
        } catch (SQLiteException e8) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e8);
        } catch (IllegalStateException e9) {
            Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e9);
        }
    }
}
