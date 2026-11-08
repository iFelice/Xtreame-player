package p143s2;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import okhttp3.HttpUrl;
import p000a.r;
import p135r2.f;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f30067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f30070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f30071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f30072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f30073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f30074h;

    public b(String str, String str2, long j8, long j9, long j10, long j11, List list) {
        this.f30068b = str;
        this.f30069c = HttpUrl.FRAGMENT_ENCODE_SET.equals(str2) ? null : str2;
        this.f30070d = j8;
        this.f30071e = j9;
        this.f30072f = j10;
        this.f30073g = j11;
        this.f30074h = list;
    }

    public static b a(c cVar) throws IOException {
        if (d.i(cVar) != 538247942) {
            throw new IOException();
        }
        String strK = d.k(cVar);
        String strK2 = d.k(cVar);
        long j8 = d.j(cVar);
        long j9 = d.j(cVar);
        long j10 = d.j(cVar);
        long j11 = d.j(cVar);
        int i8 = d.i(cVar);
        if (i8 < 0) {
            throw new IOException(r.f("readHeaderList size=", i8));
        }
        List listEmptyList = i8 == 0 ? Collections.emptyList() : new ArrayList();
        for (int i9 = 0; i9 < i8; i9++) {
            listEmptyList.add(new f(d.k(cVar).intern(), d.k(cVar).intern()));
        }
        return new b(strK, strK2, j8, j9, j10, j11, listEmptyList);
    }

    public final p135r2.b b(byte[] bArr) {
        p135r2.b bVar = new p135r2.b(0);
        bVar.f29781a = bArr;
        bVar.f29782b = this.f30069c;
        bVar.f29783c = this.f30070d;
        bVar.f29784d = this.f30071e;
        bVar.f29785e = this.f30072f;
        bVar.f29786f = this.f30073g;
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        List<f> list = this.f30074h;
        for (f fVar : list) {
            treeMap.put(fVar.f29797a, fVar.f29798b);
        }
        bVar.f29787g = treeMap;
        bVar.f29788h = Collections.unmodifiableList(list);
        return bVar;
    }

    public final boolean c(BufferedOutputStream bufferedOutputStream) {
        try {
            d.n(bufferedOutputStream, 538247942);
            d.p(bufferedOutputStream, this.f30068b);
            String str = this.f30069c;
            if (str == null) {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            d.p(bufferedOutputStream, str);
            d.o(bufferedOutputStream, this.f30070d);
            d.o(bufferedOutputStream, this.f30071e);
            d.o(bufferedOutputStream, this.f30072f);
            d.o(bufferedOutputStream, this.f30073g);
            List<f> list = this.f30074h;
            if (list != null) {
                d.n(bufferedOutputStream, list.size());
                for (f fVar : list) {
                    d.p(bufferedOutputStream, fVar.f29797a);
                    d.p(bufferedOutputStream, fVar.f29798b);
                }
            } else {
                d.n(bufferedOutputStream, 0);
            }
            bufferedOutputStream.flush();
            return true;
        } catch (IOException e8) {
            p135r2.r.b("%s", e8.toString());
            return false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.util.List] */
    public b(String str, p135r2.b bVar) {
        String str2 = bVar.f29782b;
        long j8 = bVar.f29783c;
        long j9 = bVar.f29784d;
        long j10 = bVar.f29785e;
        long j11 = bVar.f29786f;
        ?? arrayList = bVar.f29788h;
        if (arrayList == 0) {
            Map map = bVar.f29787g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new f((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        this(str, str2, j8, j9, j10, j11, arrayList);
    }
}
