package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class D2 implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22898G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Iterator f22899H;

    public /* synthetic */ D2(Iterator it, int i8) {
        this.f22898G = i8;
        this.f22899H = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it = this.f22899H;
        switch (this.f22898G) {
            case 0:
                break;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it = this.f22899H;
        switch (this.f22898G) {
            case 0:
                Map.Entry entry = (Map.Entry) it.next();
                entry.getValue();
                return entry;
            default:
                Map.Entry entry2 = (Map.Entry) it.next();
                entry2.getValue();
                return entry2;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        Iterator it = this.f22899H;
        switch (this.f22898G) {
            case 0:
                it.remove();
                break;
            default:
                it.remove();
                break;
        }
    }
}
