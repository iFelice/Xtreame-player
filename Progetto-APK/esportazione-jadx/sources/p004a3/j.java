package p004a3;

import B0.C0073x;
import C0.C0079d;
import C0.C0084i;
import C0.y;
import O0.A;
import S2.b;
import T2.k;
import T2.m;
import T2.p;
import T2.t;
import T2.v;
import T2.w;
import U2.i;
import U2.l;
import U2.n;
import V2.f;
import V2.h;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.protobuf.U2;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import okhttp3.HttpUrl;
import p012b3.d;
import p012b3.j;
import p020c3.c;
import p028d3.a;
import p086l.C3061x;
import p086l.s1;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f8676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f8677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f8678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f8679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f8680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c f8681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f8682g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f8683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p012b3.c f8684i;

    public j(Context context, f fVar, d dVar, m mVar, Executor executor, c cVar, a aVar, a aVar2, p012b3.c cVar2) {
        this.f8676a = context;
        this.f8677b = fVar;
        this.f8678c = dVar;
        this.f8679d = mVar;
        this.f8680e = executor;
        this.f8681f = cVar;
        this.f8682g = aVar;
        this.f8683h = aVar2;
        this.f8684i = cVar2;
    }

    /* JADX WARN: Code duplicated, block: B:217:0x055d A[Catch: IOException -> 0x0590, TryCatch #25 {IOException -> 0x0590, blocks: (B:215:0x0559, B:217:0x055d, B:220:0x0570, B:225:0x0581, B:227:0x0587, B:240:0x05a4, B:243:0x05ac, B:244:0x05b5, B:214:0x0556), top: B:324:0x0559 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x056d  */
    /* JADX WARN: Code duplicated, block: B:220:0x0570 A[Catch: IOException -> 0x0590, TryCatch #25 {IOException -> 0x0590, blocks: (B:215:0x0559, B:217:0x055d, B:220:0x0570, B:225:0x0581, B:227:0x0587, B:240:0x05a4, B:243:0x05ac, B:244:0x05b5, B:214:0x0556), top: B:324:0x0559 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x0576 A[LOOP:6: B:87:0x038b->B:223:0x0576, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:227:0x0587 A[Catch: IOException -> 0x0590, TRY_LEAVE, TryCatch #25 {IOException -> 0x0590, blocks: (B:215:0x0559, B:217:0x055d, B:220:0x0570, B:225:0x0581, B:227:0x0587, B:240:0x05a4, B:243:0x05ac, B:244:0x05b5, B:214:0x0556), top: B:324:0x0559 }] */
    /* JADX WARN: Code duplicated, block: B:231:0x0592  */
    /* JADX WARN: Code duplicated, block: B:233:0x0596  */
    /* JADX WARN: Code duplicated, block: B:244:0x05b5 A[Catch: IOException -> 0x0590, TRY_LEAVE, TryCatch #25 {IOException -> 0x0590, blocks: (B:215:0x0559, B:217:0x055d, B:220:0x0570, B:225:0x0581, B:227:0x0587, B:240:0x05a4, B:243:0x05ac, B:244:0x05b5, B:214:0x0556), top: B:324:0x0559 }] */
    /* JADX WARN: Code duplicated, block: B:255:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:257:0x060d  */
    /* JADX WARN: Code duplicated, block: B:259:0x0615  */
    /* JADX WARN: Code duplicated, block: B:261:0x0621  */
    /* JADX WARN: Code duplicated, block: B:263:0x0624  */
    /* JADX WARN: Code duplicated, block: B:266:0x0633  */
    /* JADX WARN: Code duplicated, block: B:328:0x0510 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:345:0x05db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:349:0x064c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:350:0x0643 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x0580 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:0x0575 A[SYNTHETIC] */
    public final void a(final i iVar, int i8) throws Throwable {
        h hVar;
        V2.a aVar;
        String str;
        byte[] bArr;
        p012b3.j jVar;
        int i9;
        S2.d dVar;
        S2.c cVar;
        b bVar;
        URL url;
        int i10;
        int i11;
        String str2;
        Integer numValueOf;
        String str3;
        s1 s1Var;
        int i12;
        p012b3.j jVar2;
        HashMap map;
        Iterator it;
        String str4;
        final j jVar3 = this;
        final i iVar2 = iVar;
        final int i13 = 1;
        final int i14 = 0;
        h hVarA = jVar3.f8677b.a(iVar2.f6952a);
        final long jMax = 0;
        while (true) {
            p020c3.b bVar2 = new p020c3.b(jVar3) { // from class: a3.g

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ j f8668H;

                {
                    this.f8668H = jVar3;
                }

                @Override // p020c3.b
                public final Object execute() {
                    int i15 = i14;
                    final i iVar3 = iVar2;
                    j jVar4 = this.f8668H;
                    switch (i15) {
                        case 0:
                            final j jVar5 = (j) jVar4.f8678c;
                            jVar5.getClass();
                            final int i16 = 1;
                            Boolean bool = (Boolean) jVar5.N(new p012b3.h() { // from class: b3.f
                                /* JADX WARN: Code duplicated, block: B:22:0x008c  */
                                /* JADX WARN: Code duplicated, block: B:24:0x009f  */
                                /* JADX WARN: Code duplicated, block: B:29:0x00d7  */
                                /* JADX WARN: Code duplicated, block: B:35:0x0106 A[LOOP:3: B:33:0x0100->B:35:0x0106, LOOP_END] */
                                /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:46:0x00ea A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[SYNTHETIC] */
                                @Override // p012b3.h
                                public final Object apply(Object obj) {
                                    HashMap map2;
                                    StringBuilder sb;
                                    ListIterator listIterator;
                                    b bVar3;
                                    C3061x c3061xC;
                                    int i17 = i16;
                                    i iVar4 = iVar3;
                                    j jVar6 = jVar5;
                                    switch (i17) {
                                        case 0:
                                            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                            a aVar2 = jVar6.f9856J;
                                            ArrayList arrayListO = jVar6.O(sQLiteDatabase, iVar4, aVar2.f9835b);
                                            for (R2.c cVar2 : R2.c.values()) {
                                                if (cVar2 != iVar4.f6954c) {
                                                    int size = aVar2.f9835b - arrayListO.size();
                                                    if (size <= 0) {
                                                        map2 = new HashMap();
                                                        sb = new StringBuilder("event_id IN (");
                                                        for (int i18 = 0; i18 < arrayListO.size(); i18++) {
                                                            sb.append(((b) arrayListO.get(i18)).f9839a);
                                                            if (i18 < arrayListO.size() - 1) {
                                                                sb.append(',');
                                                            }
                                                        }
                                                        sb.append(')');
                                                        j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                                        listIterator = arrayListO.listIterator();
                                                        while (listIterator.hasNext()) {
                                                            bVar3 = (b) listIterator.next();
                                                            if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                                c3061xC = bVar3.f9841c.c();
                                                                long j8 = bVar3.f9839a;
                                                                for (i iVar5 : (Set) map2.get(Long.valueOf(j8))) {
                                                                    c3061xC.c(iVar5.f9850a, iVar5.f9851b);
                                                                }
                                                                listIterator.set(new b(j8, bVar3.f9840b, c3061xC.e()));
                                                            }
                                                        }
                                                        return arrayListO;
                                                    }
                                                    u uVarA = i.a();
                                                    uVarA.R(iVar4.f6952a);
                                                    uVarA.S(cVar2);
                                                    uVarA.f27279I = iVar4.f6953b;
                                                    arrayListO.addAll(jVar6.O(sQLiteDatabase, uVarA.j(), size));
                                                }
                                            }
                                            map2 = new HashMap();
                                            sb = new StringBuilder("event_id IN (");
                                            while (i18 < arrayListO.size()) {
                                                sb.append(((b) arrayListO.get(i18)).f9839a);
                                                if (i18 < arrayListO.size() - 1) {
                                                    sb.append(',');
                                                }
                                            }
                                            sb.append(')');
                                            j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                            listIterator = arrayListO.listIterator();
                                            while (listIterator.hasNext()) {
                                                bVar3 = (b) listIterator.next();
                                                if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                    c3061xC = bVar3.f9841c.c();
                                                    long j9 = bVar3.f9839a;
                                                    while (r5.hasNext()) {
                                                        c3061xC.c(iVar5.f9850a, iVar5.f9851b);
                                                    }
                                                    listIterator.set(new b(j9, bVar3.f9840b, c3061xC.e()));
                                                }
                                            }
                                            return arrayListO;
                                        default:
                                            jVar6.getClass();
                                            Long lE = j.E((SQLiteDatabase) obj, iVar4);
                                            return lE == null ? Boolean.FALSE : (Boolean) j.c0(jVar6.k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lE.toString()}), new C0084i(18));
                                    }
                                }
                            });
                            bool.getClass();
                            return bool;
                        default:
                            final j jVar6 = (j) jVar4.f8678c;
                            jVar6.getClass();
                            final int i17 = 0;
                            return (Iterable) jVar6.N(new p012b3.h() { // from class: b3.f
                                /* JADX WARN: Code duplicated, block: B:22:0x008c  */
                                /* JADX WARN: Code duplicated, block: B:24:0x009f  */
                                /* JADX WARN: Code duplicated, block: B:29:0x00d7  */
                                /* JADX WARN: Code duplicated, block: B:35:0x0106 A[LOOP:3: B:33:0x0100->B:35:0x0106, LOOP_END] */
                                /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:46:0x00ea A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[SYNTHETIC] */
                                @Override // p012b3.h
                                public final Object apply(Object obj) {
                                    HashMap map2;
                                    StringBuilder sb;
                                    ListIterator listIterator;
                                    b bVar3;
                                    C3061x c3061xC;
                                    int i18 = i17;
                                    i iVar4 = iVar3;
                                    j jVar7 = jVar6;
                                    switch (i18) {
                                        case 0:
                                            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                            a aVar2 = jVar7.f9856J;
                                            ArrayList arrayListO = jVar7.O(sQLiteDatabase, iVar4, aVar2.f9835b);
                                            for (R2.c cVar2 : R2.c.values()) {
                                                if (cVar2 != iVar4.f6954c) {
                                                    int size = aVar2.f9835b - arrayListO.size();
                                                    if (size <= 0) {
                                                        map2 = new HashMap();
                                                        sb = new StringBuilder("event_id IN (");
                                                        for (int i19 = 0; i19 < arrayListO.size(); i19++) {
                                                            sb.append(((b) arrayListO.get(i19)).f9839a);
                                                            if (i19 < arrayListO.size() - 1) {
                                                                sb.append(',');
                                                            }
                                                        }
                                                        sb.append(')');
                                                        j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                                        listIterator = arrayListO.listIterator();
                                                        while (listIterator.hasNext()) {
                                                            bVar3 = (b) listIterator.next();
                                                            if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                                c3061xC = bVar3.f9841c.c();
                                                                long j9 = bVar3.f9839a;
                                                                for (i iVar5 : (Set) map2.get(Long.valueOf(j9))) {
                                                                    c3061xC.c(iVar5.f9850a, iVar5.f9851b);
                                                                }
                                                                listIterator.set(new b(j9, bVar3.f9840b, c3061xC.e()));
                                                            }
                                                        }
                                                        return arrayListO;
                                                    }
                                                    u uVarA = i.a();
                                                    uVarA.R(iVar4.f6952a);
                                                    uVarA.S(cVar2);
                                                    uVarA.f27279I = iVar4.f6953b;
                                                    arrayListO.addAll(jVar7.O(sQLiteDatabase, uVarA.j(), size));
                                                }
                                            }
                                            map2 = new HashMap();
                                            sb = new StringBuilder("event_id IN (");
                                            while (i19 < arrayListO.size()) {
                                                sb.append(((b) arrayListO.get(i19)).f9839a);
                                                if (i19 < arrayListO.size() - 1) {
                                                    sb.append(',');
                                                }
                                            }
                                            sb.append(')');
                                            j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                            listIterator = arrayListO.listIterator();
                                            while (listIterator.hasNext()) {
                                                bVar3 = (b) listIterator.next();
                                                if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                    c3061xC = bVar3.f9841c.c();
                                                    long j10 = bVar3.f9839a;
                                                    while (r5.hasNext()) {
                                                        c3061xC.c(iVar5.f9850a, iVar5.f9851b);
                                                    }
                                                    listIterator.set(new b(j10, bVar3.f9840b, c3061xC.e()));
                                                }
                                            }
                                            return arrayListO;
                                        default:
                                            jVar7.getClass();
                                            Long lE = j.E((SQLiteDatabase) obj, iVar4);
                                            return lE == null ? Boolean.FALSE : (Boolean) j.c0(jVar7.k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lE.toString()}), new C0084i(18));
                                    }
                                }
                            });
                    }
                }
            };
            p012b3.j jVar4 = (p012b3.j) jVar3.f8681f;
            boolean zBooleanValue = ((Boolean) jVar4.a0(bVar2)).booleanValue();
            a aVar2 = jVar3.f8682g;
            if (!zBooleanValue) {
                i iVar3 = iVar2;
                p012b3.j jVar5 = jVar4;
                j jVar6 = jVar3;
                SQLiteDatabase sQLiteDatabaseK = jVar5.k();
                C0084i c0084i = new C0084i(12);
                p028d3.c cVar2 = (p028d3.c) jVar5.f9855I;
                long jA = cVar2.a();
                while (true) {
                    try {
                        sQLiteDatabaseK.beginTransaction();
                        break;
                    } catch (SQLiteDatabaseLockedException e8) {
                        p012b3.j jVar7 = jVar5;
                        p028d3.c cVar3 = cVar2;
                        if (cVar2.a() >= ((long) jVar5.f9856J.f9836c) + jA) {
                            c0084i.apply(e8);
                            break;
                        } else {
                            SystemClock.sleep(50L);
                            cVar2 = cVar3;
                            jVar5 = jVar7;
                        }
                    }
                }
                try {
                    long jA2 = ((p028d3.c) aVar2).a() + jMax;
                    p012b3.j jVar8 = (p012b3.j) jVar6.f8678c;
                    jVar8.getClass();
                    jVar8.N(new y(jA2, iVar3));
                    sQLiteDatabaseK.setTransactionSuccessful();
                    return;
                } finally {
                    sQLiteDatabaseK.endTransaction();
                }
            }
            final Iterable iterable = (Iterable) jVar4.a0(new p020c3.b(jVar3) { // from class: a3.g

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ j f8668H;

                {
                    this.f8668H = jVar3;
                }

                @Override // p020c3.b
                public final Object execute() {
                    int i15 = i13;
                    final i iVar4 = iVar2;
                    j jVar9 = this.f8668H;
                    switch (i15) {
                        case 0:
                            final j jVar10 = (j) jVar9.f8678c;
                            jVar10.getClass();
                            final int i16 = 1;
                            Boolean bool = (Boolean) jVar10.N(new p012b3.h() { // from class: b3.f
                                /* JADX WARN: Code duplicated, block: B:22:0x008c  */
                                /* JADX WARN: Code duplicated, block: B:24:0x009f  */
                                /* JADX WARN: Code duplicated, block: B:29:0x00d7  */
                                /* JADX WARN: Code duplicated, block: B:35:0x0106 A[LOOP:3: B:33:0x0100->B:35:0x0106, LOOP_END] */
                                /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:46:0x00ea A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[SYNTHETIC] */
                                @Override // p012b3.h
                                public final Object apply(Object obj) {
                                    HashMap map2;
                                    StringBuilder sb;
                                    ListIterator listIterator;
                                    b bVar3;
                                    C3061x c3061xC;
                                    int i18 = i16;
                                    i iVar5 = iVar4;
                                    j jVar11 = jVar10;
                                    switch (i18) {
                                        case 0:
                                            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                            a aVar3 = jVar11.f9856J;
                                            ArrayList arrayListO = jVar11.O(sQLiteDatabase, iVar5, aVar3.f9835b);
                                            for (R2.c cVar4 : R2.c.values()) {
                                                if (cVar4 != iVar5.f6954c) {
                                                    int size = aVar3.f9835b - arrayListO.size();
                                                    if (size <= 0) {
                                                        map2 = new HashMap();
                                                        sb = new StringBuilder("event_id IN (");
                                                        for (int i19 = 0; i19 < arrayListO.size(); i19++) {
                                                            sb.append(((b) arrayListO.get(i19)).f9839a);
                                                            if (i19 < arrayListO.size() - 1) {
                                                                sb.append(',');
                                                            }
                                                        }
                                                        sb.append(')');
                                                        j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                                        listIterator = arrayListO.listIterator();
                                                        while (listIterator.hasNext()) {
                                                            bVar3 = (b) listIterator.next();
                                                            if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                                c3061xC = bVar3.f9841c.c();
                                                                long j10 = bVar3.f9839a;
                                                                for (i iVar6 : (Set) map2.get(Long.valueOf(j10))) {
                                                                    c3061xC.c(iVar6.f9850a, iVar6.f9851b);
                                                                }
                                                                listIterator.set(new b(j10, bVar3.f9840b, c3061xC.e()));
                                                            }
                                                        }
                                                        return arrayListO;
                                                    }
                                                    u uVarA = i.a();
                                                    uVarA.R(iVar5.f6952a);
                                                    uVarA.S(cVar4);
                                                    uVarA.f27279I = iVar5.f6953b;
                                                    arrayListO.addAll(jVar11.O(sQLiteDatabase, uVarA.j(), size));
                                                }
                                            }
                                            map2 = new HashMap();
                                            sb = new StringBuilder("event_id IN (");
                                            while (i19 < arrayListO.size()) {
                                                sb.append(((b) arrayListO.get(i19)).f9839a);
                                                if (i19 < arrayListO.size() - 1) {
                                                    sb.append(',');
                                                }
                                            }
                                            sb.append(')');
                                            j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                            listIterator = arrayListO.listIterator();
                                            while (listIterator.hasNext()) {
                                                bVar3 = (b) listIterator.next();
                                                if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                    c3061xC = bVar3.f9841c.c();
                                                    long j11 = bVar3.f9839a;
                                                    while (r5.hasNext()) {
                                                        c3061xC.c(iVar6.f9850a, iVar6.f9851b);
                                                    }
                                                    listIterator.set(new b(j11, bVar3.f9840b, c3061xC.e()));
                                                }
                                            }
                                            return arrayListO;
                                        default:
                                            jVar11.getClass();
                                            Long lE = j.E((SQLiteDatabase) obj, iVar5);
                                            return lE == null ? Boolean.FALSE : (Boolean) j.c0(jVar11.k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lE.toString()}), new C0084i(18));
                                    }
                                }
                            });
                            bool.getClass();
                            return bool;
                        default:
                            final j jVar11 = (j) jVar9.f8678c;
                            jVar11.getClass();
                            final int i17 = 0;
                            return (Iterable) jVar11.N(new p012b3.h() { // from class: b3.f
                                /* JADX WARN: Code duplicated, block: B:22:0x008c  */
                                /* JADX WARN: Code duplicated, block: B:24:0x009f  */
                                /* JADX WARN: Code duplicated, block: B:29:0x00d7  */
                                /* JADX WARN: Code duplicated, block: B:35:0x0106 A[LOOP:3: B:33:0x0100->B:35:0x0106, LOOP_END] */
                                /* JADX WARN: Code duplicated, block: B:44:0x00a4 A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:46:0x00ea A[SYNTHETIC] */
                                /* JADX WARN: Code duplicated, block: B:48:0x00d1 A[SYNTHETIC] */
                                @Override // p012b3.h
                                public final Object apply(Object obj) {
                                    HashMap map2;
                                    StringBuilder sb;
                                    ListIterator listIterator;
                                    b bVar3;
                                    C3061x c3061xC;
                                    int i18 = i17;
                                    i iVar5 = iVar4;
                                    j jVar12 = jVar11;
                                    switch (i18) {
                                        case 0:
                                            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                            a aVar3 = jVar12.f9856J;
                                            ArrayList arrayListO = jVar12.O(sQLiteDatabase, iVar5, aVar3.f9835b);
                                            for (R2.c cVar4 : R2.c.values()) {
                                                if (cVar4 != iVar5.f6954c) {
                                                    int size = aVar3.f9835b - arrayListO.size();
                                                    if (size <= 0) {
                                                        map2 = new HashMap();
                                                        sb = new StringBuilder("event_id IN (");
                                                        for (int i19 = 0; i19 < arrayListO.size(); i19++) {
                                                            sb.append(((b) arrayListO.get(i19)).f9839a);
                                                            if (i19 < arrayListO.size() - 1) {
                                                                sb.append(',');
                                                            }
                                                        }
                                                        sb.append(')');
                                                        j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                                        listIterator = arrayListO.listIterator();
                                                        while (listIterator.hasNext()) {
                                                            bVar3 = (b) listIterator.next();
                                                            if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                                c3061xC = bVar3.f9841c.c();
                                                                long j11 = bVar3.f9839a;
                                                                for (i iVar6 : (Set) map2.get(Long.valueOf(j11))) {
                                                                    c3061xC.c(iVar6.f9850a, iVar6.f9851b);
                                                                }
                                                                listIterator.set(new b(j11, bVar3.f9840b, c3061xC.e()));
                                                            }
                                                        }
                                                        return arrayListO;
                                                    }
                                                    u uVarA = i.a();
                                                    uVarA.R(iVar5.f6952a);
                                                    uVarA.S(cVar4);
                                                    uVarA.f27279I = iVar5.f6953b;
                                                    arrayListO.addAll(jVar12.O(sQLiteDatabase, uVarA.j(), size));
                                                }
                                            }
                                            map2 = new HashMap();
                                            sb = new StringBuilder("event_id IN (");
                                            while (i19 < arrayListO.size()) {
                                                sb.append(((b) arrayListO.get(i19)).f9839a);
                                                if (i19 < arrayListO.size() - 1) {
                                                    sb.append(',');
                                                }
                                            }
                                            sb.append(')');
                                            j.c0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new p004a3.i(map2, 4));
                                            listIterator = arrayListO.listIterator();
                                            while (listIterator.hasNext()) {
                                                bVar3 = (b) listIterator.next();
                                                if (!map2.containsKey(Long.valueOf(bVar3.f9839a))) {
                                                    c3061xC = bVar3.f9841c.c();
                                                    long j12 = bVar3.f9839a;
                                                    while (r5.hasNext()) {
                                                        c3061xC.c(iVar6.f9850a, iVar6.f9851b);
                                                    }
                                                    listIterator.set(new b(j12, bVar3.f9840b, c3061xC.e()));
                                                }
                                            }
                                            return arrayListO;
                                        default:
                                            jVar12.getClass();
                                            Long lE = j.E((SQLiteDatabase) obj, iVar5);
                                            return lE == null ? Boolean.FALSE : (Boolean) j.c0(jVar12.k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lE.toString()}), new C0084i(18));
                                    }
                                }
                            });
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            byte[] bArr2 = iVar2.f6953b;
            if (hVarA == null) {
                E3.f.i(iVar2, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                aVar = new V2.a(3, -1L);
                hVar = hVarA;
            } else {
                ArrayList<U2.h> arrayList = new ArrayList();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    arrayList.add(((p012b3.b) it2.next()).f9841c);
                }
                String str5 = "proto";
                if (bArr2 != null) {
                    p012b3.c cVar4 = jVar3.f8684i;
                    Objects.requireNonNull(cVar4);
                    X2.a aVar3 = (X2.a) jVar4.a0(new i(cVar4, i14));
                    C3061x c3061x = new C3061x(3);
                    c3061x.f26415L = new HashMap();
                    c3061x.f26413J = Long.valueOf(((p028d3.c) aVar2).a());
                    c3061x.f26414K = Long.valueOf(((p028d3.c) jVar3.f8683h).a());
                    c3061x.f26410G = "GDT_CLIENT_METRICS";
                    R2.b bVar3 = new R2.b("proto");
                    aVar3.getClass();
                    C1093bD c1093bD = n.f6964a;
                    c1093bD.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        c1093bD.e(aVar3, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    c3061x.m(new l(bVar3, byteArrayOutputStream.toByteArray()));
                    arrayList.add(((S2.d) hVarA).a(c3061x.e()));
                }
                x0 x0Var = new x0(11);
                x0Var.f22390H = arrayList;
                x0Var.f22391I = bArr2;
                S2.d dVar2 = (S2.d) hVarA;
                HashMap map2 = new HashMap();
                for (U2.h hVar2 : arrayList) {
                    String str6 = hVar2.f6946a;
                    if (map2.containsKey(str6)) {
                        ((List) map2.get(str6)).add(hVar2);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(hVar2);
                        map2.put(str6, arrayList2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it3 = map2.entrySet().iterator();
                while (it3.hasNext()) {
                    Map.Entry entry = (Map.Entry) it3.next();
                    U2.h hVar3 = (U2.h) ((List) entry.getValue()).get(0);
                    w wVar = w.f6600G;
                    long jA3 = ((p028d3.c) dVar2.f6413f).a();
                    long jA4 = ((p028d3.c) dVar2.f6412e).a();
                    h hVar4 = hVarA;
                    T2.j jVar9 = new T2.j(p.f6594G, new T2.h(Integer.valueOf(hVar3.b("sdk-version")), hVar3.a("model"), hVar3.a("hardware"), hVar3.a("device"), hVar3.a("product"), hVar3.a("os-uild"), hVar3.a("manufacturer"), hVar3.a("fingerprint"), hVar3.a("locale"), hVar3.a("country"), hVar3.a("mcc_mnc"), hVar3.a("application_build")));
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) entry.getKey();
                        numValueOf = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    Iterator it4 = ((List) entry.getValue()).iterator();
                    while (it4.hasNext()) {
                        U2.h hVar5 = (U2.h) it4.next();
                        Iterator it5 = it3;
                        l lVar = hVar5.f6948c;
                        Iterator it6 = it4;
                        R2.b bVar4 = lVar.f6961a;
                        boolean zEquals = bVar4.equals(new R2.b(str5));
                        byte[] bArr3 = lVar.f6962b;
                        if (zEquals) {
                            s1Var = new s1(2);
                            s1Var.f26377d = bArr3;
                            str3 = str5;
                        } else {
                            str3 = str5;
                            if (bVar4.equals(new R2.b("json"))) {
                                String str7 = new String(bArr3, Charset.forName("UTF-8"));
                                s1Var = new s1(2);
                                s1Var.f26378e = str7;
                            } else {
                                String strO = E3.f.o("CctTransportBackend");
                                if (Log.isLoggable(strO, 5)) {
                                    Log.w(strO, "Received event of unsupported encoding " + bVar4 + ". Skipping...");
                                }
                            }
                            it4 = it6;
                            it3 = it5;
                            str5 = str3;
                        }
                        s1Var.f26374a = Long.valueOf(hVar5.f6949d);
                        s1Var.f26376c = Long.valueOf(hVar5.f6950e);
                        String str8 = (String) hVar5.f6951f.get("tz-offset");
                        s1Var.f26379f = Long.valueOf(str8 == null ? 0L : Long.valueOf(str8).longValue());
                        p096m2.l lVar2 = new p096m2.l(12);
                        lVar2.f27231H = (T2.u) T2.u.f6598G.get(hVar5.b("net-type"));
                        t tVar = (t) t.f6596G.get(hVar5.b("mobile-subtype"));
                        lVar2.f27232I = tVar;
                        s1Var.f26380g = new T2.n((T2.u) lVar2.f27231H, tVar);
                        Integer num = hVar5.f6947b;
                        if (num != null) {
                            s1Var.f26375b = num;
                        }
                        String strA = ((Long) s1Var.f26374a) == null ? " eventTimeMs" : HttpUrl.FRAGMENT_ENCODE_SET;
                        if (((Long) s1Var.f26376c) == null) {
                            strA = strA.concat(" eventUptimeMs");
                        }
                        if (((Long) s1Var.f26379f) == null) {
                            strA = U2.A(strA, " timezoneOffsetSeconds");
                        }
                        if (!strA.isEmpty()) {
                            throw new IllegalStateException("Missing required properties:".concat(strA));
                        }
                        arrayList4.add(new k(((Long) s1Var.f26374a).longValue(), (Integer) s1Var.f26375b, ((Long) s1Var.f26376c).longValue(), (byte[]) s1Var.f26377d, (String) s1Var.f26378e, ((Long) s1Var.f26379f).longValue(), (v) s1Var.f26380g));
                        it4 = it6;
                        it3 = it5;
                        str5 = str3;
                    }
                    arrayList3.add(new T2.l(jA3, jA4, jVar9, numValueOf, str2, arrayList4, wVar));
                    hVarA = hVar4;
                    it3 = it3;
                    str5 = str5;
                }
                hVar = hVarA;
                T2.i iVar4 = new T2.i(arrayList3);
                URL urlB = dVar2.f6411d;
                if (bArr2 != null) {
                    try {
                        S2.a aVarA = S2.a.a(bArr2);
                        str = aVarA.f6401b;
                        if (str == null) {
                            str = null;
                        }
                        String str9 = aVarA.f6400a;
                        if (str9 != null) {
                            urlB = S2.d.b(str9);
                        }
                    } catch (IllegalArgumentException unused3) {
                        aVar = new V2.a(3, -1L);
                        bArr = bArr2;
                        jVar = jVar4;
                        i9 = 2;
                    }
                } else {
                    str = null;
                }
                try {
                    b bVar5 = new b(urlB, iVar4, str);
                    int i15 = 5;
                    while (true) {
                        URL url2 = bVar5.f6402a;
                        String strO2 = E3.f.o("CctTransportBackend");
                        if (Log.isLoggable(strO2, 4)) {
                            Log.i(strO2, "Making request to: " + url2);
                        }
                        HttpURLConnection httpURLConnection = (HttpURLConnection) bVar5.f6402a.openConnection();
                        httpURLConnection.setConnectTimeout(30000);
                        httpURLConnection.setReadTimeout(dVar2.f6414g);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setInstanceFollowRedirects(false);
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.9 android/");
                        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                        httpURLConnection.setRequestProperty("Content-Type", "application/json");
                        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                        String str10 = bVar5.f6404c;
                        if (str10 != null) {
                            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str10);
                        }
                        try {
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            try {
                                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                                bArr = bArr2;
                                try {
                                    dVar = dVar2;
                                    try {
                                        jVar = jVar4;
                                        try {
                                            try {
                                                dVar2.f6408a.f(new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)), bVar5.f6403b);
                                                try {
                                                    gZIPOutputStream.close();
                                                    if (outputStream != null) {
                                                        try {
                                                            outputStream.close();
                                                        } catch (P4.b e9) {
                                                            e = e9;
                                                            E3.f.k("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                                                            cVar = new S2.c(400, null, 0L);
                                                        } catch (ConnectException e10) {
                                                            e = e10;
                                                            E3.f.k("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                                                            bVar = null;
                                                            cVar = new S2.c(500, null, 0L);
                                                            url = cVar.f6406b;
                                                            if (url != null) {
                                                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                            } else {
                                                                bVar5 = bVar;
                                                            }
                                                            if (bVar5 == null) {
                                                                i10 = 1;
                                                                break;
                                                            }
                                                            i15--;
                                                            i10 = 1;
                                                            if (i15 < 1) {
                                                                break;
                                                            }
                                                            bArr2 = bArr;
                                                            dVar2 = dVar;
                                                            jVar4 = jVar;
                                                            i11 = cVar.f6405a;
                                                            if (i11 == 200) {
                                                                aVar = new V2.a(i10, cVar.f6407c);
                                                            } else if (i11 < 500) {
                                                                aVar = new V2.a(2, -1L);
                                                            } else {
                                                                aVar = new V2.a(2, -1L);
                                                            }
                                                            i9 = 2;
                                                            i12 = aVar.f7087a;
                                                            if (i12 == i9) {
                                                                jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                    public final /* synthetic */ Object f8671H;

                                                                    {
                                                                        this.f8671H = this;
                                                                    }

                                                                    @Override // p020c3.b
                                                                    public final Object execute() {
                                                                        j jVar10 = (j) this.f8671H;
                                                                        Iterable iterable2 = (Iterable) iterable;
                                                                        i iVar5 = (i) iVar;
                                                                        j jVar11 = (j) jVar10.f8678c;
                                                                        jVar11.getClass();
                                                                        if (iterable2.iterator().hasNext()) {
                                                                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                        }
                                                                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                        return null;
                                                                    }
                                                                });
                                                                ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                return;
                                                            }
                                                            jVar2 = jVar;
                                                            jVar2.a0(new C0079d(15, this, iterable));
                                                            if (i12 == 1) {
                                                                jMax = Math.max(jMax, aVar.f7088b);
                                                                if (bArr != null) {
                                                                    jVar2.a0(new C0073x(this, 29));
                                                                }
                                                            } else {
                                                                if (i12 == 4) {
                                                                    map = new HashMap();
                                                                    it = iterable.iterator();
                                                                    while (it.hasNext()) {
                                                                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                        if (map.containsKey(str4)) {
                                                                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                        } else {
                                                                            map.put(str4, 1);
                                                                        }
                                                                    }
                                                                    jVar2.a0(new C0079d(16, this, map));
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            }
                                                            jVar3 = this;
                                                            iVar2 = iVar;
                                                            hVarA = hVar;
                                                            i14 = 0;
                                                            i13 = 1;
                                                        } catch (UnknownHostException e11) {
                                                            e = e11;
                                                            E3.f.k("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                                                            bVar = null;
                                                            cVar = new S2.c(500, null, 0L);
                                                            url = cVar.f6406b;
                                                            if (url != null) {
                                                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                            } else {
                                                                bVar5 = bVar;
                                                            }
                                                            if (bVar5 == null) {
                                                                i10 = 1;
                                                                break;
                                                            }
                                                            i15--;
                                                            i10 = 1;
                                                            if (i15 < 1) {
                                                                break;
                                                                break;
                                                            } else {
                                                                bArr2 = bArr;
                                                                dVar2 = dVar;
                                                                jVar4 = jVar;
                                                            }
                                                            i11 = cVar.f6405a;
                                                            if (i11 == 200) {
                                                                aVar = new V2.a(i10, cVar.f6407c);
                                                            } else if (i11 < 500) {
                                                                aVar = new V2.a(2, -1L);
                                                            } else {
                                                                aVar = new V2.a(2, -1L);
                                                            }
                                                            i9 = 2;
                                                            i12 = aVar.f7087a;
                                                            if (i12 == i9) {
                                                                jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                    public final /* synthetic */ Object f8671H;

                                                                    {
                                                                        this.f8671H = this;
                                                                    }

                                                                    @Override // p020c3.b
                                                                    public final Object execute() {
                                                                        j jVar10 = (j) this.f8671H;
                                                                        Iterable iterable2 = (Iterable) iterable;
                                                                        i iVar5 = (i) iVar;
                                                                        j jVar11 = (j) jVar10.f8678c;
                                                                        jVar11.getClass();
                                                                        if (iterable2.iterator().hasNext()) {
                                                                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                        }
                                                                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                        return null;
                                                                    }
                                                                });
                                                                ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                return;
                                                            }
                                                            jVar2 = jVar;
                                                            jVar2.a0(new C0079d(15, this, iterable));
                                                            if (i12 == 1) {
                                                                jMax = Math.max(jMax, aVar.f7088b);
                                                                if (bArr != null) {
                                                                    jVar2.a0(new C0073x(this, 29));
                                                                }
                                                            } else {
                                                                if (i12 == 4) {
                                                                    map = new HashMap();
                                                                    it = iterable.iterator();
                                                                    while (it.hasNext()) {
                                                                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                        if (map.containsKey(str4)) {
                                                                            map.put(str4, 1);
                                                                        } else {
                                                                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                        }
                                                                    }
                                                                    jVar2.a0(new C0079d(16, this, map));
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            }
                                                            jVar3 = this;
                                                            iVar2 = iVar;
                                                            hVarA = hVar;
                                                            i14 = 0;
                                                            i13 = 1;
                                                        } catch (IOException e12) {
                                                            e = e12;
                                                            E3.f.k("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                                                            cVar = new S2.c(400, null, 0L);
                                                        }
                                                    }
                                                    try {
                                                        int responseCode = httpURLConnection.getResponseCode();
                                                        Integer numValueOf2 = Integer.valueOf(responseCode);
                                                        String strO3 = E3.f.o("CctTransportBackend");
                                                        if (Log.isLoggable(strO3, 4)) {
                                                            Object[] objArr = new Object[1];
                                                            try {
                                                                objArr[0] = numValueOf2;
                                                                Log.i(strO3, String.format("Status Code: %d", objArr));
                                                            } catch (IOException e13) {
                                                                e = e13;
                                                                E3.f.k("CctTransportBackend", "Could not make request to the backend", e);
                                                                i9 = 2;
                                                                aVar = new V2.a(2, -1L);
                                                                i12 = aVar.f7087a;
                                                                if (i12 == i9) {
                                                                    jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                        public final /* synthetic */ Object f8671H;

                                                                        {
                                                                            this.f8671H = this;
                                                                        }

                                                                        @Override // p020c3.b
                                                                        public final Object execute() {
                                                                            j jVar10 = (j) this.f8671H;
                                                                            Iterable iterable2 = (Iterable) iterable;
                                                                            i iVar5 = (i) iVar;
                                                                            j jVar11 = (j) jVar10.f8678c;
                                                                            jVar11.getClass();
                                                                            if (iterable2.iterator().hasNext()) {
                                                                                jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                            }
                                                                            jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                            return null;
                                                                        }
                                                                    });
                                                                    ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                    return;
                                                                }
                                                                jVar2 = jVar;
                                                                jVar2.a0(new C0079d(15, this, iterable));
                                                                if (i12 == 1) {
                                                                    jMax = Math.max(jMax, aVar.f7088b);
                                                                    if (bArr != null) {
                                                                        jVar2.a0(new C0073x(this, 29));
                                                                    }
                                                                } else {
                                                                    if (i12 == 4) {
                                                                        map = new HashMap();
                                                                        it = iterable.iterator();
                                                                        while (it.hasNext()) {
                                                                            str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                            if (map.containsKey(str4)) {
                                                                                map.put(str4, 1);
                                                                            } else {
                                                                                map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                            }
                                                                        }
                                                                        jVar2.a0(new C0079d(16, this, map));
                                                                    }
                                                                    jVar3 = this;
                                                                    iVar2 = iVar;
                                                                    hVarA = hVar;
                                                                    i14 = 0;
                                                                    i13 = 1;
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            }
                                                        }
                                                        E3.f.i(httpURLConnection.getHeaderField("Content-Type"), "CctTransportBackend", "Content-Type: %s");
                                                        E3.f.i(httpURLConnection.getHeaderField("Content-Encoding"), "CctTransportBackend", "Content-Encoding: %s");
                                                        if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                                                            cVar = new S2.c(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                                                        } else if (responseCode != 200) {
                                                            cVar = new S2.c(responseCode, null, 0L);
                                                        } else {
                                                            InputStream inputStream = httpURLConnection.getInputStream();
                                                            try {
                                                                InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                                                                try {
                                                                    cVar = new S2.c(responseCode, null, m.a(new BufferedReader(new InputStreamReader(gZIPInputStream))).f6591a);
                                                                    if (gZIPInputStream != null) {
                                                                        gZIPInputStream.close();
                                                                    }
                                                                    if (inputStream != null) {
                                                                        inputStream.close();
                                                                    }
                                                                } catch (Throwable th) {
                                                                    if (gZIPInputStream != null) {
                                                                        try {
                                                                            gZIPInputStream.close();
                                                                        } catch (Throwable th2) {
                                                                            th.addSuppressed(th2);
                                                                        }
                                                                    }
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th3) {
                                                                if (inputStream != null) {
                                                                    try {
                                                                        inputStream.close();
                                                                    } catch (Throwable th4) {
                                                                        th3.addSuppressed(th4);
                                                                    }
                                                                }
                                                                throw th3;
                                                            }
                                                        }
                                                        bVar = null;
                                                        try {
                                                            url = cVar.f6406b;
                                                            if (url != null) {
                                                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                            } else {
                                                                bVar5 = bVar;
                                                            }
                                                            if (bVar5 == null) {
                                                                i10 = 1;
                                                                break;
                                                            }
                                                            i15--;
                                                            i10 = 1;
                                                            if (i15 < 1) {
                                                                break;
                                                                break;
                                                            } else {
                                                                bArr2 = bArr;
                                                                dVar2 = dVar;
                                                                jVar4 = jVar;
                                                            }
                                                        } catch (IOException e14) {
                                                            e = e14;
                                                        }
                                                    } catch (IOException e15) {
                                                        e = e15;
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    Throwable th6 = th;
                                                    if (outputStream != null) {
                                                        try {
                                                            outputStream.close();
                                                        } catch (Throwable th7) {
                                                            try {
                                                                th6.addSuppressed(th7);
                                                            } catch (P4.b e16) {
                                                                e = e16;
                                                                E3.f.k("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                                                                cVar = new S2.c(400, null, 0L);
                                                                bVar = null;
                                                                url = cVar.f6406b;
                                                                if (url != null) {
                                                                    E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                    bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                                } else {
                                                                    bVar5 = bVar;
                                                                }
                                                                if (bVar5 == null) {
                                                                    i10 = 1;
                                                                    break;
                                                                }
                                                                i15--;
                                                                i10 = 1;
                                                                if (i15 < 1) {
                                                                    break;
                                                                    break;
                                                                } else {
                                                                    bArr2 = bArr;
                                                                    dVar2 = dVar;
                                                                    jVar4 = jVar;
                                                                }
                                                                i11 = cVar.f6405a;
                                                                if (i11 == 200) {
                                                                    aVar = new V2.a(i10, cVar.f6407c);
                                                                } else if (i11 < 500) {
                                                                    aVar = new V2.a(2, -1L);
                                                                } else {
                                                                    aVar = new V2.a(2, -1L);
                                                                }
                                                                i9 = 2;
                                                                i12 = aVar.f7087a;
                                                                if (i12 == i9) {
                                                                    jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                        public final /* synthetic */ Object f8671H;

                                                                        {
                                                                            this.f8671H = this;
                                                                        }

                                                                        @Override // p020c3.b
                                                                        public final Object execute() {
                                                                            j jVar10 = (j) this.f8671H;
                                                                            Iterable iterable2 = (Iterable) iterable;
                                                                            i iVar5 = (i) iVar;
                                                                            j jVar11 = (j) jVar10.f8678c;
                                                                            jVar11.getClass();
                                                                            if (iterable2.iterator().hasNext()) {
                                                                                jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                            }
                                                                            jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                            return null;
                                                                        }
                                                                    });
                                                                    ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                    return;
                                                                }
                                                                jVar2 = jVar;
                                                                jVar2.a0(new C0079d(15, this, iterable));
                                                                if (i12 == 1) {
                                                                    jMax = Math.max(jMax, aVar.f7088b);
                                                                    if (bArr != null) {
                                                                        jVar2.a0(new C0073x(this, 29));
                                                                    }
                                                                } else {
                                                                    if (i12 == 4) {
                                                                        map = new HashMap();
                                                                        it = iterable.iterator();
                                                                        while (it.hasNext()) {
                                                                            str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                            if (map.containsKey(str4)) {
                                                                                map.put(str4, 1);
                                                                            } else {
                                                                                map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                            }
                                                                        }
                                                                        jVar2.a0(new C0079d(16, this, map));
                                                                    }
                                                                    jVar3 = this;
                                                                    iVar2 = iVar;
                                                                    hVarA = hVar;
                                                                    i14 = 0;
                                                                    i13 = 1;
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            } catch (ConnectException e17) {
                                                                e = e17;
                                                                E3.f.k("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                                                                bVar = null;
                                                                cVar = new S2.c(500, null, 0L);
                                                                url = cVar.f6406b;
                                                                if (url != null) {
                                                                    E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                    bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                                } else {
                                                                    bVar5 = bVar;
                                                                }
                                                                if (bVar5 == null) {
                                                                    i10 = 1;
                                                                    break;
                                                                }
                                                                i15--;
                                                                i10 = 1;
                                                                if (i15 < 1) {
                                                                    break;
                                                                    break;
                                                                } else {
                                                                    bArr2 = bArr;
                                                                    dVar2 = dVar;
                                                                    jVar4 = jVar;
                                                                }
                                                                i11 = cVar.f6405a;
                                                                if (i11 == 200) {
                                                                    aVar = new V2.a(i10, cVar.f6407c);
                                                                } else if (i11 < 500) {
                                                                    aVar = new V2.a(2, -1L);
                                                                } else {
                                                                    aVar = new V2.a(2, -1L);
                                                                }
                                                                i9 = 2;
                                                                i12 = aVar.f7087a;
                                                                if (i12 == i9) {
                                                                    jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                        public final /* synthetic */ Object f8671H;

                                                                        {
                                                                            this.f8671H = this;
                                                                        }

                                                                        @Override // p020c3.b
                                                                        public final Object execute() {
                                                                            j jVar10 = (j) this.f8671H;
                                                                            Iterable iterable2 = (Iterable) iterable;
                                                                            i iVar5 = (i) iVar;
                                                                            j jVar11 = (j) jVar10.f8678c;
                                                                            jVar11.getClass();
                                                                            if (iterable2.iterator().hasNext()) {
                                                                                jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                            }
                                                                            jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                            return null;
                                                                        }
                                                                    });
                                                                    ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                    return;
                                                                }
                                                                jVar2 = jVar;
                                                                jVar2.a0(new C0079d(15, this, iterable));
                                                                if (i12 == 1) {
                                                                    jMax = Math.max(jMax, aVar.f7088b);
                                                                    if (bArr != null) {
                                                                        jVar2.a0(new C0073x(this, 29));
                                                                    }
                                                                } else {
                                                                    if (i12 == 4) {
                                                                        map = new HashMap();
                                                                        it = iterable.iterator();
                                                                        while (it.hasNext()) {
                                                                            str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                            if (map.containsKey(str4)) {
                                                                                map.put(str4, 1);
                                                                            } else {
                                                                                map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                            }
                                                                        }
                                                                        jVar2.a0(new C0079d(16, this, map));
                                                                    }
                                                                    jVar3 = this;
                                                                    iVar2 = iVar;
                                                                    hVarA = hVar;
                                                                    i14 = 0;
                                                                    i13 = 1;
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            } catch (UnknownHostException e18) {
                                                                e = e18;
                                                                E3.f.k("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                                                                bVar = null;
                                                                cVar = new S2.c(500, null, 0L);
                                                                url = cVar.f6406b;
                                                                if (url != null) {
                                                                    E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                    bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                                } else {
                                                                    bVar5 = bVar;
                                                                }
                                                                if (bVar5 == null) {
                                                                    i10 = 1;
                                                                    break;
                                                                }
                                                                i15--;
                                                                i10 = 1;
                                                                if (i15 < 1) {
                                                                    break;
                                                                    break;
                                                                } else {
                                                                    bArr2 = bArr;
                                                                    dVar2 = dVar;
                                                                    jVar4 = jVar;
                                                                }
                                                                i11 = cVar.f6405a;
                                                                if (i11 == 200) {
                                                                    aVar = new V2.a(i10, cVar.f6407c);
                                                                } else if (i11 < 500) {
                                                                    aVar = new V2.a(2, -1L);
                                                                } else {
                                                                    aVar = new V2.a(2, -1L);
                                                                }
                                                                i9 = 2;
                                                                i12 = aVar.f7087a;
                                                                if (i12 == i9) {
                                                                    jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                        public final /* synthetic */ Object f8671H;

                                                                        {
                                                                            this.f8671H = this;
                                                                        }

                                                                        @Override // p020c3.b
                                                                        public final Object execute() {
                                                                            j jVar10 = (j) this.f8671H;
                                                                            Iterable iterable2 = (Iterable) iterable;
                                                                            i iVar5 = (i) iVar;
                                                                            j jVar11 = (j) jVar10.f8678c;
                                                                            jVar11.getClass();
                                                                            if (iterable2.iterator().hasNext()) {
                                                                                jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                            }
                                                                            jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                            return null;
                                                                        }
                                                                    });
                                                                    ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                    return;
                                                                }
                                                                jVar2 = jVar;
                                                                jVar2.a0(new C0079d(15, this, iterable));
                                                                if (i12 == 1) {
                                                                    jMax = Math.max(jMax, aVar.f7088b);
                                                                    if (bArr != null) {
                                                                        jVar2.a0(new C0073x(this, 29));
                                                                    }
                                                                } else {
                                                                    if (i12 == 4) {
                                                                        map = new HashMap();
                                                                        it = iterable.iterator();
                                                                        while (it.hasNext()) {
                                                                            str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                            if (map.containsKey(str4)) {
                                                                                map.put(str4, 1);
                                                                            } else {
                                                                                map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                            }
                                                                        }
                                                                        jVar2.a0(new C0079d(16, this, map));
                                                                    }
                                                                    jVar3 = this;
                                                                    iVar2 = iVar;
                                                                    hVarA = hVar;
                                                                    i14 = 0;
                                                                    i13 = 1;
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            } catch (IOException e19) {
                                                                e = e19;
                                                                E3.f.k("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                                                                cVar = new S2.c(400, null, 0L);
                                                                bVar = null;
                                                                url = cVar.f6406b;
                                                                if (url != null) {
                                                                    E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                                                    bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                                                                } else {
                                                                    bVar5 = bVar;
                                                                }
                                                                if (bVar5 == null) {
                                                                    i10 = 1;
                                                                    break;
                                                                }
                                                                i15--;
                                                                i10 = 1;
                                                                if (i15 < 1) {
                                                                    break;
                                                                    break;
                                                                } else {
                                                                    bArr2 = bArr;
                                                                    dVar2 = dVar;
                                                                    jVar4 = jVar;
                                                                }
                                                                i11 = cVar.f6405a;
                                                                if (i11 == 200) {
                                                                    aVar = new V2.a(i10, cVar.f6407c);
                                                                } else if (i11 < 500) {
                                                                    aVar = new V2.a(2, -1L);
                                                                } else {
                                                                    aVar = new V2.a(2, -1L);
                                                                }
                                                                i9 = 2;
                                                                i12 = aVar.f7087a;
                                                                if (i12 == i9) {
                                                                    jVar.a0(new p020c3.b(this) { // from class: a3.h

                                                                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                                                                        public final /* synthetic */ Object f8671H;

                                                                        {
                                                                            this.f8671H = this;
                                                                        }

                                                                        @Override // p020c3.b
                                                                        public final Object execute() {
                                                                            j jVar10 = (j) this.f8671H;
                                                                            Iterable iterable2 = (Iterable) iterable;
                                                                            i iVar5 = (i) iVar;
                                                                            j jVar11 = (j) jVar10.f8678c;
                                                                            jVar11.getClass();
                                                                            if (iterable2.iterator().hasNext()) {
                                                                                jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                                                            }
                                                                            jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                                                            return null;
                                                                        }
                                                                    });
                                                                    ((d) this.f8679d).a(iVar, i8 + 1, true);
                                                                    return;
                                                                }
                                                                jVar2 = jVar;
                                                                jVar2.a0(new C0079d(15, this, iterable));
                                                                if (i12 == 1) {
                                                                    jMax = Math.max(jMax, aVar.f7088b);
                                                                    if (bArr != null) {
                                                                        jVar2.a0(new C0073x(this, 29));
                                                                    }
                                                                } else {
                                                                    if (i12 == 4) {
                                                                        map = new HashMap();
                                                                        it = iterable.iterator();
                                                                        while (it.hasNext()) {
                                                                            str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                                                            if (map.containsKey(str4)) {
                                                                                map.put(str4, 1);
                                                                            } else {
                                                                                map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                                                            }
                                                                        }
                                                                        jVar2.a0(new C0079d(16, this, map));
                                                                    }
                                                                    jVar3 = this;
                                                                    iVar2 = iVar;
                                                                    hVarA = hVar;
                                                                    i14 = 0;
                                                                    i13 = 1;
                                                                }
                                                                jVar3 = this;
                                                                iVar2 = iVar;
                                                                hVarA = hVar;
                                                                i14 = 0;
                                                                i13 = 1;
                                                            }
                                                        }
                                                    }
                                                    throw th6;
                                                }
                                            } catch (Throwable th8) {
                                                th = th8;
                                                Throwable th9 = th;
                                                try {
                                                    try {
                                                        gZIPOutputStream.close();
                                                    } catch (Throwable th10) {
                                                        th = th10;
                                                        Throwable th11 = th;
                                                        if (outputStream != null) {
                                                            outputStream.close();
                                                        }
                                                        throw th11;
                                                    }
                                                } catch (Throwable th12) {
                                                    th9.addSuppressed(th12);
                                                }
                                                throw th9;
                                            }
                                        } catch (Throwable th13) {
                                            th = th13;
                                        }
                                    } catch (Throwable th14) {
                                        th = th14;
                                        jVar = jVar4;
                                    }
                                } catch (Throwable th15) {
                                    th = th15;
                                    dVar = dVar2;
                                    jVar = jVar4;
                                }
                            } catch (Throwable th16) {
                                th = th16;
                                dVar = dVar2;
                                bArr = bArr2;
                                jVar = jVar4;
                            }
                        } catch (P4.b e20) {
                            e = e20;
                            dVar = dVar2;
                            bArr = bArr2;
                            jVar = jVar4;
                            E3.f.k("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                            cVar = new S2.c(400, null, 0L);
                            bVar = null;
                            url = cVar.f6406b;
                            if (url != null) {
                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                            } else {
                                bVar5 = bVar;
                            }
                            if (bVar5 == null) {
                                i10 = 1;
                                break;
                            }
                            i15--;
                            i10 = 1;
                            if (i15 < 1) {
                                break;
                                break;
                            } else {
                                bArr2 = bArr;
                                dVar2 = dVar;
                                jVar4 = jVar;
                            }
                            i11 = cVar.f6405a;
                            if (i11 == 200) {
                                aVar = new V2.a(i10, cVar.f6407c);
                            } else if (i11 < 500) {
                                aVar = new V2.a(2, -1L);
                            } else {
                                aVar = new V2.a(2, -1L);
                            }
                            i9 = 2;
                            i12 = aVar.f7087a;
                            if (i12 == i9) {
                                jVar.a0(new p020c3.b(this) { // from class: a3.h

                                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                                    public final /* synthetic */ Object f8671H;

                                    {
                                        this.f8671H = this;
                                    }

                                    @Override // p020c3.b
                                    public final Object execute() {
                                        j jVar10 = (j) this.f8671H;
                                        Iterable iterable2 = (Iterable) iterable;
                                        i iVar5 = (i) iVar;
                                        j jVar11 = (j) jVar10.f8678c;
                                        jVar11.getClass();
                                        if (iterable2.iterator().hasNext()) {
                                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                        }
                                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                        return null;
                                    }
                                });
                                ((d) this.f8679d).a(iVar, i8 + 1, true);
                                return;
                            }
                            jVar2 = jVar;
                            jVar2.a0(new C0079d(15, this, iterable));
                            if (i12 == 1) {
                                jMax = Math.max(jMax, aVar.f7088b);
                                if (bArr != null) {
                                    jVar2.a0(new C0073x(this, 29));
                                }
                            } else {
                                if (i12 == 4) {
                                    map = new HashMap();
                                    it = iterable.iterator();
                                    while (it.hasNext()) {
                                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                        if (map.containsKey(str4)) {
                                            map.put(str4, 1);
                                        } else {
                                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                        }
                                    }
                                    jVar2.a0(new C0079d(16, this, map));
                                }
                                jVar3 = this;
                                iVar2 = iVar;
                                hVarA = hVar;
                                i14 = 0;
                                i13 = 1;
                            }
                            jVar3 = this;
                            iVar2 = iVar;
                            hVarA = hVar;
                            i14 = 0;
                            i13 = 1;
                        } catch (ConnectException e21) {
                            e = e21;
                            dVar = dVar2;
                            bArr = bArr2;
                            jVar = jVar4;
                            E3.f.k("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                            bVar = null;
                            cVar = new S2.c(500, null, 0L);
                            url = cVar.f6406b;
                            if (url != null) {
                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                            } else {
                                bVar5 = bVar;
                            }
                            if (bVar5 == null) {
                                i10 = 1;
                                break;
                            }
                            i15--;
                            i10 = 1;
                            if (i15 < 1) {
                                break;
                                break;
                            } else {
                                bArr2 = bArr;
                                dVar2 = dVar;
                                jVar4 = jVar;
                            }
                            i11 = cVar.f6405a;
                            if (i11 == 200) {
                                aVar = new V2.a(i10, cVar.f6407c);
                            } else if (i11 < 500) {
                                aVar = new V2.a(2, -1L);
                            } else {
                                aVar = new V2.a(2, -1L);
                            }
                            i9 = 2;
                            i12 = aVar.f7087a;
                            if (i12 == i9) {
                                jVar.a0(new p020c3.b(this) { // from class: a3.h

                                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                                    public final /* synthetic */ Object f8671H;

                                    {
                                        this.f8671H = this;
                                    }

                                    @Override // p020c3.b
                                    public final Object execute() {
                                        j jVar10 = (j) this.f8671H;
                                        Iterable iterable2 = (Iterable) iterable;
                                        i iVar5 = (i) iVar;
                                        j jVar11 = (j) jVar10.f8678c;
                                        jVar11.getClass();
                                        if (iterable2.iterator().hasNext()) {
                                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                        }
                                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                        return null;
                                    }
                                });
                                ((d) this.f8679d).a(iVar, i8 + 1, true);
                                return;
                            }
                            jVar2 = jVar;
                            jVar2.a0(new C0079d(15, this, iterable));
                            if (i12 == 1) {
                                jMax = Math.max(jMax, aVar.f7088b);
                                if (bArr != null) {
                                    jVar2.a0(new C0073x(this, 29));
                                }
                            } else {
                                if (i12 == 4) {
                                    map = new HashMap();
                                    it = iterable.iterator();
                                    while (it.hasNext()) {
                                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                        if (map.containsKey(str4)) {
                                            map.put(str4, 1);
                                        } else {
                                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                        }
                                    }
                                    jVar2.a0(new C0079d(16, this, map));
                                }
                                jVar3 = this;
                                iVar2 = iVar;
                                hVarA = hVar;
                                i14 = 0;
                                i13 = 1;
                            }
                            jVar3 = this;
                            iVar2 = iVar;
                            hVarA = hVar;
                            i14 = 0;
                            i13 = 1;
                        } catch (UnknownHostException e22) {
                            e = e22;
                            dVar = dVar2;
                            bArr = bArr2;
                            jVar = jVar4;
                            E3.f.k("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                            bVar = null;
                            cVar = new S2.c(500, null, 0L);
                            url = cVar.f6406b;
                            if (url != null) {
                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                            } else {
                                bVar5 = bVar;
                            }
                            if (bVar5 == null) {
                                i10 = 1;
                                break;
                            }
                            i15--;
                            i10 = 1;
                            if (i15 < 1) {
                                break;
                                break;
                            } else {
                                bArr2 = bArr;
                                dVar2 = dVar;
                                jVar4 = jVar;
                            }
                            i11 = cVar.f6405a;
                            if (i11 == 200) {
                                aVar = new V2.a(i10, cVar.f6407c);
                            } else if (i11 < 500) {
                                aVar = new V2.a(2, -1L);
                            } else {
                                aVar = new V2.a(2, -1L);
                            }
                            i9 = 2;
                            i12 = aVar.f7087a;
                            if (i12 == i9) {
                                jVar.a0(new p020c3.b(this) { // from class: a3.h

                                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                                    public final /* synthetic */ Object f8671H;

                                    {
                                        this.f8671H = this;
                                    }

                                    @Override // p020c3.b
                                    public final Object execute() {
                                        j jVar10 = (j) this.f8671H;
                                        Iterable iterable2 = (Iterable) iterable;
                                        i iVar5 = (i) iVar;
                                        j jVar11 = (j) jVar10.f8678c;
                                        jVar11.getClass();
                                        if (iterable2.iterator().hasNext()) {
                                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                        }
                                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                        return null;
                                    }
                                });
                                ((d) this.f8679d).a(iVar, i8 + 1, true);
                                return;
                            }
                            jVar2 = jVar;
                            jVar2.a0(new C0079d(15, this, iterable));
                            if (i12 == 1) {
                                jMax = Math.max(jMax, aVar.f7088b);
                                if (bArr != null) {
                                    jVar2.a0(new C0073x(this, 29));
                                }
                            } else {
                                if (i12 == 4) {
                                    map = new HashMap();
                                    it = iterable.iterator();
                                    while (it.hasNext()) {
                                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                        if (map.containsKey(str4)) {
                                            map.put(str4, 1);
                                        } else {
                                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                        }
                                    }
                                    jVar2.a0(new C0079d(16, this, map));
                                }
                                jVar3 = this;
                                iVar2 = iVar;
                                hVarA = hVar;
                                i14 = 0;
                                i13 = 1;
                            }
                            jVar3 = this;
                            iVar2 = iVar;
                            hVarA = hVar;
                            i14 = 0;
                            i13 = 1;
                        } catch (IOException e23) {
                            e = e23;
                            dVar = dVar2;
                            bArr = bArr2;
                            jVar = jVar4;
                            E3.f.k("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                            cVar = new S2.c(400, null, 0L);
                            bVar = null;
                            url = cVar.f6406b;
                            if (url != null) {
                                E3.f.i(url, "CctTransportBackend", "Following redirect to: %s");
                                bVar5 = new b(url, bVar5.f6403b, bVar5.f6404c);
                            } else {
                                bVar5 = bVar;
                            }
                            if (bVar5 == null) {
                                i10 = 1;
                                break;
                            }
                            i15--;
                            i10 = 1;
                            if (i15 < 1) {
                                break;
                                break;
                            } else {
                                bArr2 = bArr;
                                dVar2 = dVar;
                                jVar4 = jVar;
                            }
                            i11 = cVar.f6405a;
                            if (i11 == 200) {
                                aVar = new V2.a(i10, cVar.f6407c);
                            } else if (i11 < 500) {
                                aVar = new V2.a(2, -1L);
                            } else {
                                aVar = new V2.a(2, -1L);
                            }
                            i9 = 2;
                            i12 = aVar.f7087a;
                            if (i12 == i9) {
                                jVar.a0(new p020c3.b(this) { // from class: a3.h

                                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                                    public final /* synthetic */ Object f8671H;

                                    {
                                        this.f8671H = this;
                                    }

                                    @Override // p020c3.b
                                    public final Object execute() {
                                        j jVar10 = (j) this.f8671H;
                                        Iterable iterable2 = (Iterable) iterable;
                                        i iVar5 = (i) iVar;
                                        j jVar11 = (j) jVar10.f8678c;
                                        jVar11.getClass();
                                        if (iterable2.iterator().hasNext()) {
                                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                                        }
                                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                                        return null;
                                    }
                                });
                                ((d) this.f8679d).a(iVar, i8 + 1, true);
                                return;
                            }
                            jVar2 = jVar;
                            jVar2.a0(new C0079d(15, this, iterable));
                            if (i12 == 1) {
                                jMax = Math.max(jMax, aVar.f7088b);
                                if (bArr != null) {
                                    jVar2.a0(new C0073x(this, 29));
                                }
                            } else {
                                if (i12 == 4) {
                                    map = new HashMap();
                                    it = iterable.iterator();
                                    while (it.hasNext()) {
                                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                                        if (map.containsKey(str4)) {
                                            map.put(str4, 1);
                                        } else {
                                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                                        }
                                    }
                                    jVar2.a0(new C0079d(16, this, map));
                                }
                                jVar3 = this;
                                iVar2 = iVar;
                                hVarA = hVar;
                                i14 = 0;
                                i13 = 1;
                            }
                            jVar3 = this;
                            iVar2 = iVar;
                            hVarA = hVar;
                            i14 = 0;
                            i13 = 1;
                        }
                    }
                    i11 = cVar.f6405a;
                    if (i11 == 200) {
                        aVar = new V2.a(i10, cVar.f6407c);
                    } else if (i11 < 500 || i11 == 404) {
                        aVar = new V2.a(2, -1L);
                    } else if (i11 == 400) {
                        try {
                            aVar = new V2.a(4, -1L);
                        } catch (IOException e24) {
                            e = e24;
                            E3.f.k("CctTransportBackend", "Could not make request to the backend", e);
                            i9 = 2;
                            aVar = new V2.a(2, -1L);
                        }
                    } else {
                        aVar = new V2.a(3, -1L);
                    }
                    i9 = 2;
                } catch (IOException e25) {
                    e = e25;
                    bArr = bArr2;
                    jVar = jVar4;
                }
                i12 = aVar.f7087a;
                if (i12 == i9) {
                    jVar.a0(new p020c3.b(this) { // from class: a3.h

                        /* JADX INFO: renamed from: H, reason: collision with root package name */
                        public final /* synthetic */ Object f8671H;

                        {
                            this.f8671H = this;
                        }

                        @Override // p020c3.b
                        public final Object execute() {
                            j jVar10 = (j) this.f8671H;
                            Iterable iterable2 = (Iterable) iterable;
                            i iVar5 = (i) iVar;
                            j jVar11 = (j) jVar10.f8678c;
                            jVar11.getClass();
                            if (iterable2.iterator().hasNext()) {
                                jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                            }
                            jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                            return null;
                        }
                    });
                    ((d) this.f8679d).a(iVar, i8 + 1, true);
                    return;
                }
                jVar2 = jVar;
                jVar2.a0(new C0079d(15, this, iterable));
                if (i12 == 1) {
                    jMax = Math.max(jMax, aVar.f7088b);
                    if (bArr != null) {
                        jVar2.a0(new C0073x(this, 29));
                    }
                } else {
                    if (i12 == 4) {
                        map = new HashMap();
                        it = iterable.iterator();
                        while (it.hasNext()) {
                            str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                            if (map.containsKey(str4)) {
                                map.put(str4, 1);
                            } else {
                                map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                            }
                        }
                        jVar2.a0(new C0079d(16, this, map));
                    }
                    jVar3 = this;
                    iVar2 = iVar;
                    hVarA = hVar;
                    i14 = 0;
                    i13 = 1;
                }
                jVar3 = this;
                iVar2 = iVar;
                hVarA = hVar;
                i14 = 0;
                i13 = 1;
            }
            bArr = bArr2;
            jVar = jVar4;
            i9 = 2;
            i12 = aVar.f7087a;
            if (i12 == i9) {
                jVar.a0(new p020c3.b(this) { // from class: a3.h

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ Object f8671H;

                    {
                        this.f8671H = this;
                    }

                    @Override // p020c3.b
                    public final Object execute() {
                        j jVar10 = (j) this.f8671H;
                        Iterable iterable2 = (Iterable) iterable;
                        i iVar5 = (i) iVar;
                        j jVar11 = (j) jVar10.f8678c;
                        jVar11.getClass();
                        if (iterable2.iterator().hasNext()) {
                            jVar11.N(new A(jVar11, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + j.b0(iterable2), "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", 4));
                        }
                        jVar11.N(new y(((p028d3.c) jVar10.f8682g).a() + jMax, iVar5));
                        return null;
                    }
                });
                ((d) this.f8679d).a(iVar, i8 + 1, true);
                return;
            }
            jVar2 = jVar;
            jVar2.a0(new C0079d(15, this, iterable));
            if (i12 == 1) {
                jMax = Math.max(jMax, aVar.f7088b);
                if (bArr != null) {
                    jVar2.a0(new C0073x(this, 29));
                }
            } else {
                if (i12 == 4) {
                    map = new HashMap();
                    it = iterable.iterator();
                    while (it.hasNext()) {
                        str4 = ((p012b3.b) it.next()).f9841c.f6946a;
                        if (map.containsKey(str4)) {
                            map.put(str4, 1);
                        } else {
                            map.put(str4, Integer.valueOf(((Integer) map.get(str4)).intValue() + 1));
                        }
                    }
                    jVar2.a0(new C0079d(16, this, map));
                }
                jVar3 = this;
                iVar2 = iVar;
                hVarA = hVar;
                i14 = 0;
                i13 = 1;
            }
            jVar3 = this;
            iVar2 = iVar;
            hVarA = hVar;
            i14 = 0;
            i13 = 1;
        }
    }
}
