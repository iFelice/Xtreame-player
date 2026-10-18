package E3;

import android.util.LruCache;

/* JADX INFO: loaded from: classes.dex */
public final class w extends LruCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f2929a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(d dVar) {
        super(20);
        this.f2929a = dVar;
    }

    @Override // android.util.LruCache
    public final /* bridge */ /* synthetic */ void entryRemoved(boolean z7, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (z7) {
            d dVar = this.f2929a;
            com.bumptech.glide.c.h(dVar.f2846g);
            dVar.f2846g.add(num);
        }
    }
}
