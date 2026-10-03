package p149t0;

import I0.u;
import android.database.SQLException;
import android.os.ConditionVariable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.protobuf.U2;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.TreeSet;
import p086l.C3061x;
import p117p0.x;
import p133r0.b;
import z4.L;

/* JADX INFO: loaded from: classes.dex */
public final class v implements b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final HashSet f30242i = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f30243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f30244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3061x f30245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final j f30246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f30247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Random f30248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f30249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f30250h;

    public v(File file, s sVar, b bVar) {
        boolean zAdd;
        C3061x c3061x = new C3061x();
        c3061x.f26410G = new HashMap();
        c3061x.f26411H = new SparseArray();
        c3061x.f26412I = new SparseBooleanArray();
        c3061x.f26413J = new SparseBooleanArray();
        o oVar = new o(bVar);
        p pVar = new p(new File(file, "cached_content_index.exi"));
        c3061x.f26414K = oVar;
        c3061x.f26415L = pVar;
        j jVar = new j(bVar);
        synchronized (v.class) {
            zAdd = f30242i.add(file.getAbsoluteFile());
        }
        if (!zAdd) {
            throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
        }
        this.f30243a = file;
        this.f30244b = sVar;
        this.f30245c = c3061x;
        this.f30246d = jVar;
        this.f30247e = new HashMap();
        this.f30248f = new Random();
        this.f30249g = -1L;
        ConditionVariable conditionVariable = new ConditionVariable();
        new u(this, conditionVariable).start();
        conditionVariable.block();
    }

    public static void a(v vVar) {
        long j8;
        C3061x c3061x = vVar.f30245c;
        File file = vVar.f30243a;
        if (!file.exists()) {
            try {
                e(file);
            } catch (a e8) {
                vVar.f30250h = e8;
                return;
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + file;
            x.c("SimpleCache", str);
            vVar.f30250h = new a(str);
            return;
        }
        int length = fileArrListFiles.length;
        int i8 = 0;
        while (true) {
            if (i8 >= length) {
                j8 = -1;
                break;
            }
            File file2 = fileArrListFiles[i8];
            String name = file2.getName();
            if (name.endsWith(".uid")) {
                try {
                    j8 = Long.parseLong(name.substring(0, name.indexOf(46)), 16);
                    break;
                } catch (NumberFormatException unused) {
                    x.c("SimpleCache", "Malformed UID file: " + file2);
                    file2.delete();
                }
            }
            i8++;
        }
        vVar.f30249g = j8;
        if (j8 == -1) {
            try {
                vVar.f30249g = f(file);
            } catch (IOException e9) {
                String str2 = "Failed to create cache UID: " + file;
                x.d("SimpleCache", str2, e9);
                vVar.f30250h = new a(str2, e9);
                return;
            }
        }
        try {
            c3061x.k(vVar.f30249g);
            j jVar = vVar.f30246d;
            if (jVar != null) {
                jVar.b(vVar.f30249g);
                HashMap mapA = jVar.a();
                vVar.i(file, true, fileArrListFiles, mapA);
                jVar.c(mapA.keySet());
            } else {
                vVar.i(file, true, fileArrListFiles, null);
            }
            AbstractC1349gB it = L.r(((HashMap) c3061x.f26410G).keySet()).iterator();
            while (it.hasNext()) {
                c3061x.l((String) it.next());
            }
            try {
                c3061x.o();
            } catch (IOException e10) {
                x.d("SimpleCache", "Storing index file failed", e10);
            }
        } catch (IOException e11) {
            String str3 = "Failed to initialize cache indices: " + file;
            x.d("SimpleCache", str3, e11);
            vVar.f30250h = new a(str3, e11);
        }
    }

    public static void e(File file) throws a {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = "Failed to create cache directory: " + file;
        x.c("SimpleCache", str);
        throw new a(str);
    }

    public static long f(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, U2.A(Long.toString(jAbs, 16), ".uid"));
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    public final void b(w wVar) {
        C3061x c3061x = this.f30245c;
        String str = wVar.f30211G;
        c3061x.h(str).f30221c.add(wVar);
        ArrayList arrayList = (ArrayList) this.f30247e.get(str);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((h) arrayList.get(size)).getClass();
            }
        }
        this.f30244b.getClass();
    }

    public final synchronized void c(x0 x0Var, String str) {
        d();
        C3061x c3061x = this.f30245c;
        n nVarH = c3061x.h(str);
        r rVar = nVarH.f30223e;
        r rVarA = rVar.a(x0Var);
        nVarH.f30223e = rVarA;
        if (!rVarA.equals(rVar)) {
            ((q) c3061x.f26414K).c(nVarH);
        }
        try {
            this.f30245c.o();
        } catch (IOException e8) {
            throw new a(e8);
        }
    }

    public final synchronized void d() {
        a aVar = this.f30250h;
        if (aVar != null) {
            throw aVar;
        }
    }

    public final synchronized r g(String str) {
        n nVarG;
        nVarG = this.f30245c.g(str);
        return nVarG != null ? nVarG.f30223e : r.f30236c;
    }

    public final w h(long j8, long j9, String str) {
        w wVar;
        long j10;
        n nVarG = this.f30245c.g(str);
        if (nVarG == null) {
            return new w(str, j8, j9, -9223372036854775807L, null);
        }
        while (true) {
            w wVar2 = new w(nVarG.f30220b, j8, -1L, -9223372036854775807L, null);
            TreeSet treeSet = nVarG.f30221c;
            wVar = (w) treeSet.floor(wVar2);
            if (wVar == null || wVar.f30212H + wVar.f30213I <= j8) {
                w wVar3 = (w) treeSet.ceiling(wVar2);
                if (wVar3 != null) {
                    long jMin = wVar3.f30212H - j8;
                    if (j9 != -1) {
                        jMin = Math.min(jMin, j9);
                    }
                    j10 = jMin;
                } else {
                    j10 = j9;
                }
                wVar = new w(nVarG.f30220b, j8, j10, -9223372036854775807L, null);
            }
            if (!wVar.f30214J) {
                break;
            }
            File file = wVar.f30215K;
            file.getClass();
            if (file.length() == wVar.f30213I) {
                break;
            }
            k();
        }
        return wVar;
    }

    public final void i(File file, boolean z7, File[] fileArr, HashMap map) {
        long j8;
        long j9;
        if (fileArr == null || fileArr.length == 0) {
            if (z7) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z7 && name.indexOf(46) == -1) {
                i(file2, false, file2.listFiles(), map);
            } else if (!z7 || (!name.startsWith("cached_content_index.exi") && !name.endsWith(".uid"))) {
                i iVar = map != null ? (i) map.remove(name) : null;
                if (iVar != null) {
                    j9 = iVar.f30205a;
                    j8 = iVar.f30206b;
                } else {
                    j8 = -9223372036854775807L;
                    j9 = -1;
                }
                w wVarA = w.a(file2, j9, j8, this.f30245c);
                if (wVarA != null) {
                    b(wVarA);
                } else {
                    file2.delete();
                }
            }
        }
    }

    public final synchronized void j(l lVar) {
        n nVarG = this.f30245c.g(lVar.f30211G);
        nVarG.getClass();
        long j8 = lVar.f30212H;
        int i8 = 0;
        while (true) {
            ArrayList arrayList = nVarG.f30222d;
            if (i8 >= arrayList.size()) {
                throw new IllegalStateException();
            }
            if (((m) arrayList.get(i8)).f30217a == j8) {
                arrayList.remove(i8);
                this.f30245c.l(nVarG.f30220b);
                notifyAll();
            } else {
                i8++;
            }
        }
    }

    public final void k() {
        ArrayList arrayList = new ArrayList();
        C3061x c3061x = this.f30245c;
        Iterator it = Collections.unmodifiableCollection(((HashMap) c3061x.f26410G).values()).iterator();
        while (it.hasNext()) {
            for (l lVar : ((n) it.next()).f30221c) {
                File file = lVar.f30215K;
                file.getClass();
                if (file.length() != lVar.f30213I) {
                    arrayList.add(lVar);
                }
            }
        }
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            l lVar2 = (l) arrayList.get(i8);
            n nVarG = c3061x.g(lVar2.f30211G);
            if (nVarG != null && nVarG.f30221c.remove(lVar2)) {
                File file2 = lVar2.f30215K;
                if (file2 != null) {
                    file2.delete();
                }
                j jVar = this.f30246d;
                if (jVar != null) {
                    file2.getClass();
                    String name = file2.getName();
                    try {
                        jVar.f30209b.getClass();
                        try {
                            jVar.f30208a.getWritableDatabase().delete(jVar.f30209b, "name = ?", new String[]{name});
                        } catch (SQLException e8) {
                            throw new u(e8);
                        }
                    } catch (IOException unused) {
                        U2.w("Failed to remove file index entry for: ", name, "SimpleCache");
                    }
                }
                c3061x.l(nVarG.f30220b);
                ArrayList arrayList2 = (ArrayList) this.f30247e.get(lVar2.f30211G);
                if (arrayList2 != null) {
                    for (int size = arrayList2.size() - 1; size >= 0; size--) {
                        ((h) arrayList2.get(size)).getClass();
                    }
                }
                this.f30244b.getClass();
            }
        }
    }

    public final synchronized w l(long j8, long j9, String str) {
        d();
        w wVarH = h(j8, j9, str);
        if (wVarH.f30214J) {
            return wVarH;
        }
        n nVarH = this.f30245c.h(str);
        long j10 = wVarH.f30213I;
        int i8 = 0;
        while (true) {
            ArrayList arrayList = nVarH.f30222d;
            if (i8 >= arrayList.size()) {
                arrayList.add(new m(j8, j10));
                return wVarH;
            }
            m mVar = (m) arrayList.get(i8);
            long j11 = mVar.f30217a;
            if (j11 <= j8) {
                long j12 = mVar.f30218b;
                if (j12 == -1 || j11 + j12 > j8) {
                    return null;
                }
                i8++;
            } else {
                if (j10 == -1 || j8 + j10 > j11) {
                    return null;
                }
                i8++;
            }
        }
    }
}
