package p032e0;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f24730a = new LinkedHashMap();

    public final void a() {
        LinkedHashMap linkedHashMap = this.f24730a;
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            ((G) it.next()).a();
        }
        linkedHashMap.clear();
    }
}
