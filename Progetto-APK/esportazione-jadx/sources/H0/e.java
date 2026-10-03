package H0;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e extends LinkedHashMap {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3443G = 4;

    public e(int i8) {
        super(i8, 1.0f, false);
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        return size() > this.f3443G;
    }
}
