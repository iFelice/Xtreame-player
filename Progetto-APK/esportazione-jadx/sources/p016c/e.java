package p016c;

import Q3.b;
import Y.C;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Random f10545a = new Random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f10546b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f10547c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f10548d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f10549e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient HashMap f10550f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f10551g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f10552h = new Bundle();

    public final boolean a(int i8, int i9, Intent intent) {
        c cVar;
        String str = (String) this.f10546b.get(Integer.valueOf(i8));
        if (str == null) {
            return false;
        }
        d dVar = (d) this.f10550f.get(str);
        if (dVar == null || (cVar = dVar.f10543a) == null || !this.f10549e.contains(str)) {
            this.f10551g.remove(str);
            this.f10552h.putParcelable(str, new b(i9, intent));
            return true;
        }
        ((C) cVar).b(dVar.f10544b.r(i9, intent));
        this.f10549e.remove(str);
        return true;
    }

    public final u b(String str, b bVar, C c8) {
        int i8;
        HashMap map;
        HashMap map2 = this.f10547c;
        if (((Integer) map2.get(str)) == null) {
            int iNextInt = this.f10545a.nextInt(2147418112);
            while (true) {
                i8 = iNextInt + 65536;
                map = this.f10546b;
                if (!map.containsKey(Integer.valueOf(i8))) {
                    break;
                }
                iNextInt = this.f10545a.nextInt(2147418112);
            }
            map.put(Integer.valueOf(i8), str);
            map2.put(str, Integer.valueOf(i8));
        }
        this.f10550f.put(str, new d(c8, bVar));
        HashMap map3 = this.f10551g;
        if (map3.containsKey(str)) {
            Object obj = map3.get(str);
            map3.remove(str);
            c8.b(obj);
        }
        Bundle bundle = this.f10552h;
        b bVar2 = (b) bundle.getParcelable(str);
        if (bVar2 != null) {
            bundle.remove(str);
            c8.b(bVar.r(bVar2.f10541G, bVar2.f10542H));
        }
        return new u(this, str, bVar);
    }
}
