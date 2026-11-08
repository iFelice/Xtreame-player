package Z2;

import android.content.Context;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import p004a3.e;

/* JADX INFO: loaded from: classes.dex */
public final class c implements W2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8231G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p147s6.a f8232H;

    public /* synthetic */ c(p147s6.a aVar, int i8) {
        this.f8231G = i8;
        this.f8232H = aVar;
    }

    @Override // p147s6.a
    public final Object get() {
        int i8 = this.f8231G;
        p147s6.a aVar = this.f8232H;
        switch (i8) {
            case 0:
                p028d3.a aVar2 = (p028d3.a) aVar.get();
                HashMap map = new HashMap();
                R2.c cVar = R2.c.f6285G;
                p004a3.b bVar = new p004a3.b(0);
                Set setEmptySet = Collections.emptySet();
                if (setEmptySet == null) {
                    throw new NullPointerException("Null flags");
                }
                bVar.f8652J = setEmptySet;
                bVar.f8650H = 30000L;
                bVar.f8651I = 86400000L;
                map.put(cVar, bVar.d());
                R2.c cVar2 = R2.c.f6287I;
                p004a3.b bVar2 = new p004a3.b(0);
                Set setEmptySet2 = Collections.emptySet();
                if (setEmptySet2 == null) {
                    throw new NullPointerException("Null flags");
                }
                bVar2.f8652J = setEmptySet2;
                bVar2.f8650H = 1000L;
                bVar2.f8651I = 86400000L;
                map.put(cVar2, bVar2.d());
                R2.c cVar3 = R2.c.f6286H;
                p004a3.b bVar3 = new p004a3.b(0);
                Set setEmptySet3 = Collections.emptySet();
                if (setEmptySet3 == null) {
                    throw new NullPointerException("Null flags");
                }
                bVar3.f8652J = setEmptySet3;
                bVar3.f8650H = 86400000L;
                bVar3.f8651I = 86400000L;
                Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(e.f8660H)));
                if (setUnmodifiableSet == null) {
                    throw new NullPointerException("Null flags");
                }
                bVar3.f8652J = setUnmodifiableSet;
                map.put(cVar3, bVar3.d());
                if (aVar2 == null) {
                    throw new NullPointerException("missing required property: clock");
                }
                if (map.keySet().size() < R2.c.values().length) {
                    throw new IllegalStateException("Not all priorities have been configured");
                }
                new HashMap();
                return new p004a3.a(aVar2, map);
            default:
                String packageName = ((Context) aVar.get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
        }
    }
}
