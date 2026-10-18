package com.bumptech.glide;

import C2.C;
import C2.D;
import C2.E;
import C2.H;
import F2.G;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x0 f11540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final I2.c f11541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final F.i f11542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final I2.c f11543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.i f11544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final I2.c f11545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final I2.c f11546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final x0 f11547h = new x0(10);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final K2.b f11548i = new K2.b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final u f11549j;

    public j() {
        u uVar = new u(new M.d(20), new G(12), new G(13), 28);
        this.f11549j = uVar;
        this.f11540a = new x0(uVar);
        this.f11541b = new I2.c(1);
        this.f11542c = new F.i(10);
        this.f11543d = new I2.c(3);
        this.f11544e = new com.bumptech.glide.load.data.i();
        this.f11545f = new I2.c(0);
        this.f11546g = new I2.c(2);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        F.i iVar = this.f11542c;
        synchronized (iVar) {
            try {
                ArrayList<String> arrayList2 = new ArrayList((List) iVar.f2977H);
                ((List) iVar.f2977H).clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((List) iVar.f2977H).add((String) it2.next());
                }
                for (String str : arrayList2) {
                    if (!arrayList.contains(str)) {
                        ((List) iVar.f2977H).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(Class cls, Class cls2, D d6) {
        x0 x0Var = this.f11540a;
        synchronized (x0Var) {
            ((H) x0Var.f22390H).a(cls, cls2, d6);
            ((p032e0.u) x0Var.f22391I).f24776a.clear();
        }
    }

    public final void b(Class cls, p173w2.c cVar) {
        I2.c cVar2 = this.f11541b;
        synchronized (cVar2) {
            cVar2.f4008G.add(new K2.a(cls, cVar));
        }
    }

    public final void c(Class cls, p173w2.o oVar) {
        I2.c cVar = this.f11543d;
        synchronized (cVar) {
            cVar.f4008G.add(new K2.d(cls, oVar));
        }
    }

    public final void d(p173w2.n nVar, Class cls, Class cls2, String str) {
        F.i iVar = this.f11542c;
        synchronized (iVar) {
            iVar.j(str).add(new K2.c(cls, cls2, nVar));
        }
    }

    public final ArrayList e(Class cls, Class cls2, Class cls3) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        for (Class cls4 : this.f11542c.l(cls, cls2)) {
            for (Class cls5 : this.f11545f.g(cls4, cls3)) {
                F.i iVar = this.f11542c;
                synchronized (iVar) {
                    arrayList = new ArrayList();
                    Iterator it = ((List) iVar.f2977H).iterator();
                    while (it.hasNext()) {
                        List<K2.c> list = (List) ((Map) iVar.f2978I).get((String) it.next());
                        if (list != null) {
                            for (K2.c cVar : list) {
                                if (cVar.f4466a.isAssignableFrom(cls) && cls4.isAssignableFrom(cVar.f4467b)) {
                                    arrayList.add(cVar.f4468c);
                                }
                            }
                        }
                    }
                }
                arrayList2.add(new y2.m(cls, cls4, cls5, arrayList, this.f11545f.e(cls4, cls5), this.f11549j));
            }
        }
        return arrayList2;
    }

    public final List f() {
        List list;
        I2.c cVar = this.f11546g;
        synchronized (cVar) {
            list = cVar.f4008G;
        }
        if (list.isEmpty()) {
            throw new i("Failed to find image header parser.");
        }
        return list;
    }

    public final List g(Object obj) {
        List listUnmodifiableList;
        x0 x0Var = this.f11540a;
        x0Var.getClass();
        Class<?> cls = obj.getClass();
        synchronized (x0Var) {
            E e8 = (E) ((p032e0.u) x0Var.f22391I).f24776a.get(cls);
            listUnmodifiableList = e8 == null ? null : e8.f1350a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(((H) x0Var.f22390H).d(cls));
                if (((E) ((p032e0.u) x0Var.f22391I).f24776a.put(cls, new E(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new i("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List listEmptyList = Collections.emptyList();
        boolean z7 = true;
        for (int i8 = 0; i8 < size; i8++) {
            C c8 = (C) listUnmodifiableList.get(i8);
            if (c8.a(obj)) {
                if (z7) {
                    listEmptyList = new ArrayList(size - i8);
                    z7 = false;
                }
                listEmptyList.add(c8);
            }
        }
        if (!listEmptyList.isEmpty()) {
            return listEmptyList;
        }
        throw new i("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    public final com.bumptech.glide.load.data.g h(Object obj) {
        com.bumptech.glide.load.data.g gVarB;
        com.bumptech.glide.load.data.i iVar = this.f11544e;
        synchronized (iVar) {
            try {
                p102n0.c.b(obj);
                com.bumptech.glide.load.data.f fVar = (com.bumptech.glide.load.data.f) iVar.f11577a.get(obj.getClass());
                if (fVar == null) {
                    for (com.bumptech.glide.load.data.f fVar2 : iVar.f11577a.values()) {
                        if (fVar2.a().isAssignableFrom(obj.getClass())) {
                            fVar = fVar2;
                            break;
                        }
                    }
                }
                if (fVar == null) {
                    fVar = com.bumptech.glide.load.data.i.f11576b;
                }
                gVarB = fVar.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVarB;
    }

    public final void i(com.bumptech.glide.load.data.f fVar) {
        com.bumptech.glide.load.data.i iVar = this.f11544e;
        synchronized (iVar) {
            iVar.f11577a.put(fVar.a(), fVar);
        }
    }

    public final void j(Class cls, Class cls2, I2.a aVar) {
        I2.c cVar = this.f11545f;
        synchronized (cVar) {
            cVar.f4008G.add(new I2.b(cls, cls2, aVar));
        }
    }

    public final void k(p173w2.f fVar) {
        I2.c cVar = this.f11546g;
        synchronized (cVar) {
            cVar.f4008G.add(fVar);
        }
    }
}
