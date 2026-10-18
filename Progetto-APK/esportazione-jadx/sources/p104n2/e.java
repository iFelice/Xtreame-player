package p104n2;

import P1.x;
import P1.z;
import T1.i;
import android.database.Cursor;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p027d2.n;
import p027d2.t;
import p034e2.s;
import p034e2.y;
import p096m2.a;
import p096m2.c;
import p096m2.l;
import p096m2.p;
import p096m2.q;
import p096m2.r;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final String f27434I = n.f("EnqueueRunnable");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final s f27435G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final l f27436H;

    public e(s sVar) {
        l lVar = new l(7);
        this.f27435G = sVar;
        this.f27436H = lVar;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:106:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:108:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:111:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:112:0x01e6 A[Catch: ClassNotFoundException -> 0x0204, all -> 0x0311, TryCatch #3 {ClassNotFoundException -> 0x0204, blocks: (B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0), top: B:178:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01f0 A[Catch: ClassNotFoundException -> 0x0204, all -> 0x0311, TRY_LEAVE, TryCatch #3 {ClassNotFoundException -> 0x0204, blocks: (B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0), top: B:178:0x01db }] */
    /* JADX WARN: Code duplicated, block: B:122:0x021d A[Catch: all -> 0x0311, TryCatch #6 {all -> 0x0311, blocks: (B:147:0x02e7, B:79:0x0174, B:80:0x017a, B:55:0x0100, B:57:0x010c, B:58:0x0110, B:60:0x0116, B:65:0x0126, B:66:0x0136, B:68:0x013c, B:70:0x0151, B:72:0x015a, B:74:0x0163, B:76:0x016b, B:77:0x0171, B:71:0x0156, B:85:0x0183, B:86:0x018a, B:88:0x0190, B:92:0x019e, B:98:0x01b3, B:101:0x01b9, B:105:0x01d0, B:118:0x0204, B:120:0x0214, B:122:0x021d, B:124:0x0221, B:126:0x0253, B:128:0x0262, B:129:0x0269, B:130:0x026a, B:131:0x0287, B:133:0x028d, B:135:0x02b4, B:137:0x02bd, B:138:0x02c4, B:141:0x02cf, B:142:0x02df, B:144:0x02e1, B:145:0x02e4, B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0, B:117:0x0200, B:95:0x01a6, B:96:0x01aa, B:97:0x01af, B:119:0x020c, B:125:0x0245, B:73:0x015d, B:134:0x02a6), top: B:183:0x003a, inners: #0, #1, #4, #12 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0221 A[Catch: all -> 0x0311, TRY_LEAVE, TryCatch #6 {all -> 0x0311, blocks: (B:147:0x02e7, B:79:0x0174, B:80:0x017a, B:55:0x0100, B:57:0x010c, B:58:0x0110, B:60:0x0116, B:65:0x0126, B:66:0x0136, B:68:0x013c, B:70:0x0151, B:72:0x015a, B:74:0x0163, B:76:0x016b, B:77:0x0171, B:71:0x0156, B:85:0x0183, B:86:0x018a, B:88:0x0190, B:92:0x019e, B:98:0x01b3, B:101:0x01b9, B:105:0x01d0, B:118:0x0204, B:120:0x0214, B:122:0x021d, B:124:0x0221, B:126:0x0253, B:128:0x0262, B:129:0x0269, B:130:0x026a, B:131:0x0287, B:133:0x028d, B:135:0x02b4, B:137:0x02bd, B:138:0x02c4, B:141:0x02cf, B:142:0x02df, B:144:0x02e1, B:145:0x02e4, B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0, B:117:0x0200, B:95:0x01a6, B:96:0x01aa, B:97:0x01af, B:119:0x020c, B:125:0x0245, B:73:0x015d, B:134:0x02a6), top: B:183:0x003a, inners: #0, #1, #4, #12 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x028d A[Catch: all -> 0x0311, TRY_LEAVE, TryCatch #6 {all -> 0x0311, blocks: (B:147:0x02e7, B:79:0x0174, B:80:0x017a, B:55:0x0100, B:57:0x010c, B:58:0x0110, B:60:0x0116, B:65:0x0126, B:66:0x0136, B:68:0x013c, B:70:0x0151, B:72:0x015a, B:74:0x0163, B:76:0x016b, B:77:0x0171, B:71:0x0156, B:85:0x0183, B:86:0x018a, B:88:0x0190, B:92:0x019e, B:98:0x01b3, B:101:0x01b9, B:105:0x01d0, B:118:0x0204, B:120:0x0214, B:122:0x021d, B:124:0x0221, B:126:0x0253, B:128:0x0262, B:129:0x0269, B:130:0x026a, B:131:0x0287, B:133:0x028d, B:135:0x02b4, B:137:0x02bd, B:138:0x02c4, B:141:0x02cf, B:142:0x02df, B:144:0x02e1, B:145:0x02e4, B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0, B:117:0x0200, B:95:0x01a6, B:96:0x01aa, B:97:0x01af, B:119:0x020c, B:125:0x0245, B:73:0x015d, B:134:0x02a6), top: B:183:0x003a, inners: #0, #1, #4, #12 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x02c7 A[LOOP:4: B:86:0x018a->B:140:0x02c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:150:0x02f1 A[Catch: all -> 0x0305, TryCatch #2 {all -> 0x0305, blocks: (B:148:0x02ec, B:150:0x02f1, B:154:0x0307), top: B:176:0x02ec }] */
    /* JADX WARN: Code duplicated, block: B:206:0x02cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0200 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:? A[LOOP:7: B:113:0x01ea->B:212:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0190 A[Catch: all -> 0x0311, TryCatch #6 {all -> 0x0311, blocks: (B:147:0x02e7, B:79:0x0174, B:80:0x017a, B:55:0x0100, B:57:0x010c, B:58:0x0110, B:60:0x0116, B:65:0x0126, B:66:0x0136, B:68:0x013c, B:70:0x0151, B:72:0x015a, B:74:0x0163, B:76:0x016b, B:77:0x0171, B:71:0x0156, B:85:0x0183, B:86:0x018a, B:88:0x0190, B:92:0x019e, B:98:0x01b3, B:101:0x01b9, B:105:0x01d0, B:118:0x0204, B:120:0x0214, B:122:0x021d, B:124:0x0221, B:126:0x0253, B:128:0x0262, B:129:0x0269, B:130:0x026a, B:131:0x0287, B:133:0x028d, B:135:0x02b4, B:137:0x02bd, B:138:0x02c4, B:141:0x02cf, B:142:0x02df, B:144:0x02e1, B:145:0x02e4, B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0, B:117:0x0200, B:95:0x01a6, B:96:0x01aa, B:97:0x01af, B:119:0x020c, B:125:0x0245, B:73:0x015d, B:134:0x02a6), top: B:183:0x003a, inners: #0, #1, #4, #12 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01af A[Catch: all -> 0x0311, TryCatch #6 {all -> 0x0311, blocks: (B:147:0x02e7, B:79:0x0174, B:80:0x017a, B:55:0x0100, B:57:0x010c, B:58:0x0110, B:60:0x0116, B:65:0x0126, B:66:0x0136, B:68:0x013c, B:70:0x0151, B:72:0x015a, B:74:0x0163, B:76:0x016b, B:77:0x0171, B:71:0x0156, B:85:0x0183, B:86:0x018a, B:88:0x0190, B:92:0x019e, B:98:0x01b3, B:101:0x01b9, B:105:0x01d0, B:118:0x0204, B:120:0x0214, B:122:0x021d, B:124:0x0221, B:126:0x0253, B:128:0x0262, B:129:0x0269, B:130:0x026a, B:131:0x0287, B:133:0x028d, B:135:0x02b4, B:137:0x02bd, B:138:0x02c4, B:141:0x02cf, B:142:0x02df, B:144:0x02e1, B:145:0x02e4, B:109:0x01db, B:112:0x01e6, B:113:0x01ea, B:115:0x01f0, B:117:0x0200, B:95:0x01a6, B:96:0x01aa, B:97:0x01af, B:119:0x020c, B:125:0x0245, B:73:0x015d, B:134:0x02a6), top: B:183:0x003a, inners: #0, #1, #4, #12 }] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        l lVar;
        l lVar2;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        Iterator it;
        boolean z12;
        boolean z13;
        boolean z14;
        q qVarZ;
        List list;
        int i8;
        Iterator it2;
        Class<?> cls;
        Iterator it3;
        x xVar;
        UUID uuid;
        String[] strArr;
        long j8;
        u uVarV;
        String string;
        Iterator it4;
        int length;
        int i9;
        c cVarP;
        e eVar = this;
        l lVar3 = eVar.f27436H;
        s sVar = eVar.f27435G;
        try {
            sVar.getClass();
            y yVar = sVar.f24830M;
            try {
                if (s.G0(sVar, new HashSet())) {
                    throw new IllegalStateException("WorkContinuation has cycles (" + sVar + ")");
                }
                WorkDatabase workDatabase = yVar.f24844c;
                workDatabase.c();
                try {
                    String[] strArr2 = (String[]) s.H0(sVar).toArray(new String[0]);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    WorkDatabase workDatabase2 = yVar.f24844c;
                    boolean z15 = strArr2 != null && strArr2.length > 0;
                    try {
                        try {
                            if (z15) {
                                int length2 = strArr2.length;
                                int i10 = 0;
                                z7 = true;
                                z8 = false;
                                z9 = false;
                                while (true) {
                                    if (i10 < length2) {
                                        String str = strArr2[i10];
                                        q qVarH = workDatabase2.u().h(str);
                                        if (qVarH == null) {
                                            n.d().b(f27434I, "Prerequisite " + str + " doesn't exist; not enqueuing");
                                            lVar2 = lVar3;
                                        } else {
                                            int i11 = qVarH.f27243b;
                                            z7 &= i11 == 3;
                                            if (i11 == 4) {
                                                z9 = true;
                                            } else if (i11 == 6) {
                                                z8 = true;
                                            }
                                            i10++;
                                        }
                                    }
                                    z14 = true;
                                    z13 = false;
                                    sVar.f24834Q = z14;
                                    workDatabase.n();
                                    workDatabase.j();
                                    if (z13) {
                                        m.a(yVar.f24842a, RescheduleReceiver.class, z14);
                                        p034e2.q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                                    }
                                    lVar2.m(t.f24645A);
                                    return;
                                }
                            }
                            z7 = true;
                            z8 = false;
                            z9 = false;
                            if (!z10 || z15) {
                                lVar2 = lVar3;
                            } else {
                                try {
                                    p096m2.s sVarU = workDatabase2.u();
                                    sVarU.getClass();
                                    z zVarN = z.N(1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                                    zVarN.J(1);
                                    x xVar2 = sVarU.f27263a;
                                    xVar2.b();
                                    Cursor cursorL = xVar2.l(zVarN, null);
                                    try {
                                        ArrayList arrayList = new ArrayList(cursorL.getCount());
                                        while (cursorL.moveToNext()) {
                                            String string2 = cursorL.isNull(0) ? null : cursorL.getString(0);
                                            int iG = S3.e.g(cursorL.getInt(1));
                                            l lVar4 = lVar3;
                                            try {
                                                q0.h(string2, "id");
                                                p pVar = new p();
                                                pVar.f27240a = string2;
                                                pVar.f27241b = iG;
                                                arrayList.add(pVar);
                                                lVar3 = lVar4;
                                            } catch (Throwable th) {
                                                th = th;
                                                cursorL.close();
                                                zVarN.O();
                                                throw th;
                                            }
                                        }
                                        lVar2 = lVar3;
                                        cursorL.close();
                                        zVarN.O();
                                        if (!arrayList.isEmpty()) {
                                            Iterator it5 = arrayList.iterator();
                                            while (true) {
                                                if (it5.hasNext()) {
                                                    int i12 = ((p) it5.next()).f27241b;
                                                    if (i12 != 1 && i12 != 2) {
                                                    }
                                                    z14 = true;
                                                    z13 = false;
                                                    sVar.f24834Q = z14;
                                                    workDatabase.n();
                                                    workDatabase.j();
                                                    if (z13) {
                                                        m.a(yVar.f24842a, RescheduleReceiver.class, z14);
                                                        p034e2.q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                                                    }
                                                    lVar2.m(t.f24645A);
                                                    return;
                                                }
                                                new c(yVar).run();
                                                p096m2.s sVarU2 = workDatabase2.u();
                                                Iterator it6 = arrayList.iterator();
                                                while (it6.hasNext()) {
                                                    String str2 = ((p) it6.next()).f27240a;
                                                    x xVar3 = sVarU2.f27263a;
                                                    xVar3.b();
                                                    r rVar = sVarU2.f27265c;
                                                    i iVarC = rVar.c();
                                                    if (str2 == null) {
                                                        iVarC.J(1);
                                                    } else {
                                                        iVarC.g(1, str2);
                                                    }
                                                    xVar3.c();
                                                    try {
                                                        iVarC.l();
                                                        xVar3.n();
                                                        xVar3.j();
                                                        rVar.m(iVarC);
                                                    } catch (Throwable th2) {
                                                        xVar3.j();
                                                        rVar.m(iVarC);
                                                        throw th2;
                                                    }
                                                }
                                                z11 = true;
                                            }
                                        }
                                        it = sVar.f24831N.iterator();
                                        z12 = z11;
                                        while (it.hasNext()) {
                                            p027d2.x xVar4 = (p027d2.x) it.next();
                                            qVarZ = xVar4.f24651b;
                                            if (z15 || z7) {
                                                qVarZ.f27255n = jCurrentTimeMillis;
                                            } else if (z9) {
                                                qVarZ.f27243b = 4;
                                            } else if (z8) {
                                                qVarZ.f27243b = 6;
                                            } else {
                                                qVarZ.f27243b = 5;
                                            }
                                            if (qVarZ.f27243b == 1) {
                                                z12 = true;
                                            }
                                            p096m2.s sVarU3 = workDatabase2.u();
                                            list = yVar.f24846e;
                                            q0.h(list, "schedulers");
                                            i8 = Build.VERSION.SDK_INT;
                                            it2 = it;
                                            if (23 > i8 && i8 < 26) {
                                                qVarZ = H1.z(qVarZ);
                                            } else if (i8 <= 22) {
                                                try {
                                                    cls = Class.forName("androidx.work.impl.background.gcm.GcmScheduler");
                                                    if (!list.isEmpty()) {
                                                        it3 = list.iterator();
                                                        while (it3.hasNext()) {
                                                            if (cls.isAssignableFrom(((p034e2.p) it3.next()).getClass())) {
                                                                qVarZ = H1.z(qVarZ);
                                                                break;
                                                            }
                                                        }
                                                    }
                                                } catch (ClassNotFoundException unused) {
                                                }
                                            }
                                            xVar = sVarU3.f27263a;
                                            xVar.b();
                                            xVar.c();
                                            try {
                                                sVarU3.f27264b.u(qVarZ);
                                                xVar.n();
                                                xVar.j();
                                                uuid = xVar4.f24650a;
                                                if (z15) {
                                                    length = strArr2.length;
                                                    i9 = 0;
                                                    while (i9 < length) {
                                                        String str3 = strArr2[i9];
                                                        String[] strArr3 = strArr2;
                                                        long j9 = jCurrentTimeMillis;
                                                        String string3 = uuid.toString();
                                                        q0.g(string3, "id.toString()");
                                                        a aVar = new a(string3, str3);
                                                        cVarP = workDatabase2.p();
                                                        ((x) cVarP.f27210H).b();
                                                        ((x) cVarP.f27210H).c();
                                                        try {
                                                            ((P1.e) cVarP.f27211I).u(aVar);
                                                            ((x) cVarP.f27210H).n();
                                                            ((x) cVarP.f27210H).j();
                                                            i9++;
                                                            strArr2 = strArr3;
                                                            jCurrentTimeMillis = j9;
                                                        } catch (Throwable th3) {
                                                            ((x) cVarP.f27210H).j();
                                                            throw th3;
                                                        }
                                                    }
                                                }
                                                strArr = strArr2;
                                                j8 = jCurrentTimeMillis;
                                                uVarV = workDatabase2.v();
                                                string = uuid.toString();
                                                q0.g(string, "id.toString()");
                                                uVarV.getClass();
                                                Set set = xVar4.f24652c;
                                                q0.h(set, "tags");
                                                it4 = set.iterator();
                                                while (it4.hasNext()) {
                                                    p096m2.t tVar = new p096m2.t((String) it4.next(), string);
                                                    ((x) uVarV.f27278H).b();
                                                    ((x) uVarV.f27278H).c();
                                                    try {
                                                        ((P1.e) uVarV.f27279I).u(tVar);
                                                        ((x) uVarV.f27278H).n();
                                                        ((x) uVarV.f27278H).j();
                                                    } catch (Throwable th4) {
                                                        ((x) uVarV.f27278H).j();
                                                        throw th4;
                                                    }
                                                }
                                                if (!z10) {
                                                    workDatabase2.s();
                                                    q0.g(uuid.toString(), "id.toString()");
                                                    q0.h(null, "name");
                                                    throw null;
                                                }
                                                it = it2;
                                                strArr2 = strArr;
                                                jCurrentTimeMillis = j8;
                                            } catch (Throwable th5) {
                                                xVar.j();
                                                throw th5;
                                            }
                                        }
                                        z13 = z12;
                                        z14 = true;
                                        sVar.f24834Q = z14;
                                        workDatabase.n();
                                        workDatabase.j();
                                        if (z13) {
                                            m.a(yVar.f24842a, RescheduleReceiver.class, z14);
                                            p034e2.q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                                        }
                                        lVar2.m(t.f24645A);
                                        return;
                                    } catch (Throwable th6) {
                                        th = th6;
                                    }
                                } catch (Throwable th7) {
                                    th = th7;
                                    lVar2 = lVar3;
                                    workDatabase.j();
                                    throw th;
                                }
                            }
                            workDatabase.j();
                            if (z13) {
                                m.a(yVar.f24842a, RescheduleReceiver.class, z14);
                                p034e2.q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                            }
                            lVar2.m(t.f24645A);
                            return;
                        } catch (Throwable th8) {
                            th = th8;
                            lVar = lVar2;
                        }
                        z10 = !TextUtils.isEmpty(null);
                        z11 = false;
                        it = sVar.f24831N.iterator();
                        z12 = z11;
                        while (it.hasNext()) {
                            p027d2.x xVar5 = (p027d2.x) it.next();
                            qVarZ = xVar5.f24651b;
                            if (z15) {
                                qVarZ.f27255n = jCurrentTimeMillis;
                            } else {
                                qVarZ.f27255n = jCurrentTimeMillis;
                            }
                            if (qVarZ.f27243b == 1) {
                                z12 = true;
                            }
                            p096m2.s sVarU4 = workDatabase2.u();
                            list = yVar.f24846e;
                            q0.h(list, "schedulers");
                            i8 = Build.VERSION.SDK_INT;
                            it2 = it;
                            if (23 > i8) {
                                if (i8 <= 22) {
                                    cls = Class.forName("androidx.work.impl.background.gcm.GcmScheduler");
                                    if (!list.isEmpty()) {
                                        it3 = list.iterator();
                                        while (it3.hasNext()) {
                                            if (cls.isAssignableFrom(((p034e2.p) it3.next()).getClass())) {
                                                qVarZ = H1.z(qVarZ);
                                                break;
                                            }
                                        }
                                    }
                                }
                            } else if (i8 <= 22) {
                                cls = Class.forName("androidx.work.impl.background.gcm.GcmScheduler");
                                if (!list.isEmpty()) {
                                    it3 = list.iterator();
                                    while (it3.hasNext()) {
                                        if (cls.isAssignableFrom(((p034e2.p) it3.next()).getClass())) {
                                            qVarZ = H1.z(qVarZ);
                                            break;
                                        }
                                    }
                                }
                            }
                            xVar = sVarU4.f27263a;
                            xVar.b();
                            xVar.c();
                            sVarU4.f27264b.u(qVarZ);
                            xVar.n();
                            xVar.j();
                            uuid = xVar5.f24650a;
                            if (z15) {
                                length = strArr2.length;
                                i9 = 0;
                                while (i9 < length) {
                                    String str4 = strArr2[i9];
                                    String[] strArr4 = strArr2;
                                    long j10 = jCurrentTimeMillis;
                                    String string4 = uuid.toString();
                                    q0.g(string4, "id.toString()");
                                    a aVar2 = new a(string4, str4);
                                    cVarP = workDatabase2.p();
                                    ((x) cVarP.f27210H).b();
                                    ((x) cVarP.f27210H).c();
                                    ((P1.e) cVarP.f27211I).u(aVar2);
                                    ((x) cVarP.f27210H).n();
                                    ((x) cVarP.f27210H).j();
                                    i9++;
                                    strArr2 = strArr4;
                                    jCurrentTimeMillis = j10;
                                }
                            }
                            strArr = strArr2;
                            j8 = jCurrentTimeMillis;
                            uVarV = workDatabase2.v();
                            string = uuid.toString();
                            q0.g(string, "id.toString()");
                            uVarV.getClass();
                            Set set2 = xVar5.f24652c;
                            q0.h(set2, "tags");
                            it4 = set2.iterator();
                            while (it4.hasNext()) {
                                p096m2.t tVar2 = new p096m2.t((String) it4.next(), string);
                                ((x) uVarV.f27278H).b();
                                ((x) uVarV.f27278H).c();
                                ((P1.e) uVarV.f27279I).u(tVar2);
                                ((x) uVarV.f27278H).n();
                                ((x) uVarV.f27278H).j();
                            }
                            if (!z10) {
                                workDatabase2.s();
                                q0.g(uuid.toString(), "id.toString()");
                                q0.h(null, "name");
                                throw null;
                            }
                            it = it2;
                            strArr2 = strArr;
                            jCurrentTimeMillis = j8;
                        }
                        z13 = z12;
                        z14 = true;
                        sVar.f24834Q = z14;
                        workDatabase.n();
                    } catch (Throwable th9) {
                        th = th9;
                        workDatabase.j();
                        throw th;
                    }
                } catch (Throwable th10) {
                    th = th10;
                }
            } catch (Throwable th11) {
                th = th11;
                lVar = eVar;
            }
        } catch (Throwable th12) {
            th = th12;
            lVar = lVar3;
        }
        lVar.m(new p027d2.q(th));
    }
}
