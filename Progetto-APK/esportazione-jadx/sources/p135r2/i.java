package p135r2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.videolan.libvlc.media.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f29805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f29806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f29807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f29808e;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.util.TreeMap] */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.Map] */
    public i(int i8, byte[] bArr, boolean z7, long j8, List list) {
        ?? treeMap;
        if (list == null) {
            treeMap = 0;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                f fVar = (f) it.next();
                treeMap.put(fVar.f29797a, fVar.f29798b);
            }
        }
        this(i8, bArr, (Map) treeMap, list, z7);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.List] */
    public i(byte[] bArr, Map map) {
        ?? arrayList;
        if (map == null) {
            arrayList = 0;
        } else if (map.isEmpty()) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new f((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, bArr, map, (List) arrayList, false);
    }

    public i(int i8, byte[] bArr, Map map, List list, boolean z7) {
        this.f29804a = i8;
        this.f29805b = bArr;
        this.f29806c = map;
        if (list == null) {
            this.f29807d = null;
        } else {
            this.f29807d = Collections.unmodifiableList(list);
        }
        this.f29808e = z7;
    }
}
