package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import p039f.AbstractC2987b;
import z4.AbstractC3239c;
import z4.C3242f;

/* JADX INFO: loaded from: classes.dex */
public class Qz implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16184G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Iterator f16185H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f16186I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f16187J;

    public Qz(Yz yz, ListIterator listIterator) {
        this.f16184G = 2;
        this.f16187J = yz;
        this.f16186I = yz.f17696I;
        this.f16185H = listIterator;
    }

    public final void a() {
        Object obj = this.f16187J;
        ((Yz) obj).c();
        if (((Yz) obj).f17696I != ((Collection) this.f16186I)) {
            throw new ConcurrentModificationException();
        }
    }

    public final void b() {
        Object obj = this.f16187J;
        ((Yz) obj).zzb();
        if (((Yz) obj).f17696I != ((Collection) this.f16186I)) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8 = this.f16184G;
        Iterator it = this.f16185H;
        switch (i8) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                b();
                break;
            case 3:
                break;
            case 4:
                break;
            default:
                a();
                break;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i8 = this.f16184G;
        Object obj = this.f16187J;
        Iterator it = this.f16185H;
        switch (i8) {
            case 0:
                Map.Entry entry = (Map.Entry) it.next();
                this.f16186I = (Collection) entry.getValue();
                return ((Rz) obj).f(entry);
            case 1:
                Map.Entry entry2 = (Map.Entry) it.next();
                this.f16186I = entry2;
                return entry2.getKey();
            case 2:
                b();
                return it.next();
            case 3:
                Map.Entry entry3 = (Map.Entry) it.next();
                this.f16186I = (Collection) entry3.getValue();
                return ((Rz) obj).e(entry3);
            case 4:
                Map.Entry entry4 = (Map.Entry) it.next();
                this.f16186I = entry4;
                return entry4.getKey();
            default:
                a();
                return it.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i8 = this.f16184G;
        Object obj = this.f16187J;
        Iterator it = this.f16185H;
        switch (i8) {
            case 0:
                AbstractC2987b.E0("no calls to next() since the last call to remove()", ((Collection) this.f16186I) != null);
                it.remove();
                ((Mz) ((Rz) obj).f16387K).f14835K -= ((Collection) this.f16186I).size();
                ((Collection) this.f16186I).clear();
                this.f16186I = null;
                break;
            case 1:
                AbstractC2987b.E0("no calls to next() since the last call to remove()", ((Map.Entry) this.f16186I) != null);
                Collection collection = (Collection) ((Map.Entry) this.f16186I).getValue();
                it.remove();
                ((Sz) obj).f16570I.f14835K -= collection.size();
                collection.clear();
                this.f16186I = null;
                break;
            case 2:
                it.remove();
                Yz yz = (Yz) obj;
                ((Mz) yz.f17699L).f14835K--;
                yz.l();
                break;
            case 3:
                p190y4.k.v("no calls to next() since the last call to remove()", ((Collection) this.f16186I) != null);
                it.remove();
                ((AbstractC3239c) ((Rz) obj).f16387K).f31838K -= ((Collection) this.f16186I).size();
                ((Collection) this.f16186I).clear();
                this.f16186I = null;
                break;
            case 4:
                p190y4.k.v("no calls to next() since the last call to remove()", ((Map.Entry) this.f16186I) != null);
                Collection collection2 = (Collection) ((Map.Entry) this.f16186I).getValue();
                it.remove();
                ((C3242f) obj).f31850I.f31838K -= collection2.size();
                collection2.clear();
                this.f16186I = null;
                break;
            default:
                it.remove();
                Yz yz2 = (Yz) obj;
                ((AbstractC3239c) yz2.f17699L).f31838K--;
                yz2.i();
                break;
        }
    }

    public /* synthetic */ Qz(AbstractSet abstractSet, Iterator it, int i8) {
        this.f16184G = i8;
        this.f16185H = it;
        this.f16187J = abstractSet;
    }

    public Qz(Rz rz) {
        this.f16184G = 0;
        this.f16187J = rz;
        this.f16185H = rz.f16386J.entrySet().iterator();
    }

    public Qz(Yz yz) {
        Iterator it;
        this.f16184G = 2;
        this.f16187J = yz;
        Collection collection = yz.f17696I;
        this.f16186I = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.f16185H = it;
    }

    public Qz(Yz yz, int i8) {
        Iterator it;
        this.f16184G = 5;
        this.f16187J = yz;
        Collection collection = yz.f17696I;
        this.f16186I = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.f16185H = it;
    }

    public Qz(Yz yz, ListIterator listIterator, int i8) {
        this.f16184G = 5;
        this.f16187J = yz;
        this.f16186I = yz.f17696I;
        this.f16185H = listIterator;
    }

    public Qz(Rz rz, int i8) {
        this.f16184G = 3;
        this.f16187J = rz;
        this.f16185H = rz.f16386J.entrySet().iterator();
    }
}
